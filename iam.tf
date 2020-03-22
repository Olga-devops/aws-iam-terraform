resource "aws_iam_user" "user" { 
   name = "${var.user_name}" 
   path = "/" 
} 

resource "aws_iam_policy" "policy" {
  name        = "admin_access"
  path        = "/"
  description = "My test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}