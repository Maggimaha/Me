provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "my_instance" {
  ami           = "ami-02bf8ce06a8ed6092"
  instance_type = "t2.micro"

}

