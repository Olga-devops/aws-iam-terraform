terraform {
  backend "s3" {
    bucket = "new-bucket-iam"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}