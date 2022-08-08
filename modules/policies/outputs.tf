data "aws_iam_instance_profile" "instance_profile" {
  name = "LabInstanceProfile"
} 

output "iam_instance_profile" {
  value = data.aws_iam_instance_profile.instance_profile.name
}

data "aws_iam_role" "role" {
  name = "LabRole"
}

output "role" {
  value = data.aws_iam_role.role.name
}

output "role_arn" {
  value = data.aws_iam_role.role.arn
}
