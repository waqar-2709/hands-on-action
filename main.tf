    terraform {
    backend "remote" {
      # The name of your Terraform Cloud organization.
       organization = "waqar-ahmed-2709"

#         # The name of the Terraform Cloud workspace to store Terraform state files in.
      workspaces {
        name = "example-workspace1"
       }
    }
  }

#     # An example resource that does nothing.
  provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAR27VBNN7OQJAHLVR"
  secret_key = "M1pNuaP1L5Dr/lLEG8n7p1unzelL/FuUHv1SI2PH"

}
resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
