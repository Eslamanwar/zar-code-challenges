module "alb_sg" {
  source  = "cloudposse/security-group/aws"
  version = "2.2.0"

  name        = "alb"
  vpc_id      = module.vpc.vpc_id

  allow_all_egress = true

  rules = [
      {
        type        = "ingress"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        description = "Allow HTTP access"
      },
      {
        type        = "ingress"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        description = "Allow HTTPS access"
      },
  ]

  context = module.this.context
}

module "alb" {
  source  = "cloudposse/alb/aws"
  version = "2.3.0"

  name = "web-app"

  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.subnets.public_subnet_ids
  security_group_ids = [module.alb_sg.id] # Make sure this module exists and outputs .id

  internal                    = false
  http_enabled                = true
  http_redirect               = true
  idle_timeout                = 120
  access_logs_enabled         = false
  deletion_protection_enabled = false

  context = module.this.context
}


resource "aws_lb_target_group" "app" {
  name        = "app-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = module.vpc.vpc_id

  health_check {
    protocol = "HTTP"
    path     = "/"
    matcher  = "200-399"
    interval = 30
    timeout  = 5
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = module.alb.alb_arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}
