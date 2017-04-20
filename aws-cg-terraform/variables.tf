variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
  default = "~/.ssh/id_rsa.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "AWSkey"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

# ubuntu 16.04
variable "aws_amis" {
  default = {
    us-west-2 = "ami-5a7dc03a"
  }
}
