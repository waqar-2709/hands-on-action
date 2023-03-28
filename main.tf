    terraform {
    backend "remote" {
      # The name of your Terraform Cloud organization.
       organization = "waqar-ahmed-2709"

#         # The name of the Terraform Cloud workspace to store Terraform state files in.
      workspaces {
        name = "example-workspace3"
       }
    }
  }

#     # An example resource that does nothing.
  provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAR27VBNN7ML46LY7R"
  secret_key = "X29WFA0B20FTXdiTBDa42FA/hkak9DdNduX9Cb7f"

}
resource "aws_instance" "example" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
}
