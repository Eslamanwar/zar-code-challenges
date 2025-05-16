variable "region" {
  default = "us-east-1"
}

variable "namespace" {
  default = "eg"
}

variable "stage" {
  default = "prod"
}

variable "name" {
  default = "eks-vpc"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "eks_cluster_name" {
  default = "eks-cluster"
}

variable "instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}

variable "desired_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 3
}

variable "kubernetes_labels" {
  type = map(string)
  default = {
    "nodegroup" = "default"
  }
}
