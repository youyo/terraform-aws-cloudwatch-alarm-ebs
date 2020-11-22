output arn {
  value       = module.BurstBalance.arn
  description = "The ARN of the cloudwatch metric alarm"
}
output id {
  value       = module.BurstBalance.id
  description = "The ID of the cloudwatch metric alarm"
}
