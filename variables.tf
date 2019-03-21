variable "access_key" {
  description = "AWS ACCESS_KEY"
}

variable "secret_key" {
  description = "AWS SECRET_KEY"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}
variable "ec2_key_name" {
  description = "Name of an existing key-pair (in the region!) used to connect to any created EC2 instances"
  default = "eks-demo-worker-nodes"
}
variable "cidr_block" {
  description = "CIDR for the whole VPC"

  default = {
    prod = "10.10.0.0/16"
    dev  = "10.20.0.0/16"
  }
}

variable "eks_cluster_name" {
  description = "cluster name"
  default     = "eks-oracle-terra"
}

variable "identifier" {
  description = "Identifier for DB"
  default     = "eks-oracle-terra-db"
}

variable "storage_type" {
  description = "Type of the storage ssd or magnetic"
  default     = "gp2"
}

variable "allocated_storage" {
  description = "ammount of storage allocated in GB"

  default = {
    prod = "100"
    dev  = "20"
  }
}

variable "db_engine" {
  description = " DB engine"
  default     = "oracle-ee"
}

variable "engine_version" {
  description = "DB engine version"
  default     = "12.2"
}

variable "instance_class" {
  description = "machine type to be used"

  default = {
    prod = "db.t2.large"
    dev  = "db.t2.medium"
  }
}

variable "db_username" {
  description = "db admin user"
  default     = "root"
}

variable "db_password" {
  description = "password, provide through your tfvars file"
}
