output "security_group" {
  value = module.nodepool.security_group
}

output "nodepool_name" {
  value = module.nodepool.asg_name
}

output "nodepool_arn" {
  value = module.nodepool.asg_arn
}

output "nodepool_id" {
  value = module.nodepool.asg_id
}

data "aws_iam_role" "role" {
  name = "LabRole"
}
output "iam_role" {
  description = "IAM role of node pool"
  value       = data.aws_iam_role.role.arn
}

output "iam_role_arn" {
  description = "IAM role arn of node pool"
  value       = data.aws_iam_role.role.arn
}

data "aws_iam_instance_profile" "instance_profile" {
  name = "LabInstanceProfile"
} 

output "iam_instance_profile" {
  description = "IAM instance profile attached to nodes in nodepool"
  value       = data.aws_iam_instance_profile.instance_profile.name
}
