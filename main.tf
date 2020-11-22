module BurstBalance {
  source  = "youyo/cloudwatch-alarm/aws"
  version = "0.1.1"

  identifier                = var.identifier
  metric_name               = "BurstBalance"
  namespace                 = "AWS/EBS"
  comparison_operator       = "LessThanOrEqualToThreshold"
  statistic                 = "Minimum"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = var.insufficient_data_actions
  ok_actions                = var.ok_actions
  datapoints_to_alarm       = 2
  evaluation_periods        = 5
  period                    = 300
  threshold                 = 20
  treat_missing_data        = var.treat_missing_data

  dimensions = {
    VolumeId = var.volume_id
  }

  tags = var.tags
}
