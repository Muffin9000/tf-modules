output "user_arn" {
    value = aws_iam_user.example.arn
    description = "ARN of created user"
}

# output "neo_cloudwatch_policy_arn" {
#   value     = (
#     var.give_neo_cloudwatch_full_access
#     ? aws_iam_user_policy_attachment.neo_cloudwatch_full_access[0].policy_arn
#     : aws_iam_user_policy_attachment.neo_cloudwatch_read_only_access[0].policy_arn
#   )
# }

output "neo_cloudwatch_policy_arn" {
  value = one(concat(
    aws_iam_user_policy_attachment.neo_cloudwatch_full_access[*].policy_arn,
    aws_iam_user_policy_attachment.neo_cloudwatch_read_only[*].policy_arn
  ))
}