output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "tf_state_bucket_name" {
  value = aws_s3_bucket.tf_state.bucket
}

output "tf_lock_table_name" {
  value = aws_dynamodb_table.tf_locks.name
}

output "tf_state_kms_key_arn" {
  value = aws_kms_key.tf_state.arn
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_terraform.arn
}
