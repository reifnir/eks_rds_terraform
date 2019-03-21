terraform {
  backend "s3" {
    bucket = "tf-eks-state-bucket"
    key    = "tfstate"
    region = "us-west-2"
  }
}
