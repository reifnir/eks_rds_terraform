variable "eks_cluster_name" {
  description = "cluster name"
}

variable "eks_certificate_authority" {
  description = "eks certificate authority"
}

variable "eks_endpoint" {
  description = "eks cluster endpoint"
}

variable "iam_instance_profile" {
  description = "eks instance profile name"
}

variable "security_group_node" {
  description = "eks security group name"
}

variable "ec2_key_name" {
  description = "Name of an existing key-pair (in the region!) used to connect to any created EC2 instances"
  default = "eks-demo-worker-nodes"
}

variable "subnets" {
  type = "list"
}

