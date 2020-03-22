output "username" {
    value = "${aws_iam_user.user.name}"
}

output "policyname" {
  value = "${aws_iam_policy.policy.id}"
}
