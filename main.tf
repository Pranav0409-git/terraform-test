resource "aws_s3_bucket" "test" {
  bucket = "jenkins-tf-test-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}
# ---------- EC2 INSTANCE ----------
resource "aws_instance" "test_ec2" {
  ami           = "ami-0532be01f26a3de55"   # Amazon Linux 2 (us-east-1)
  instance_type = "t3.micro"

  tags = {
    Name = "jenkins-tf-ec2"
  }
}
