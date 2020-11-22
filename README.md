# CloudWatch alarm for EBS metrics

Terraform module which creates CloudWatch metrics alarm resources on AWS.  
Not supported `metric_query` .

## Requiirements

- Terraform version > 0.13

## Usage

```hcl
module my_ebs {
  source = "youyo/cloudwatch-alarm-ebs/aws"

  identifier = "my-alarm/prod"
  volume_id  = "vol-xxxxxxxxxxxxx"
  alarm_actions             = ["my-sns-topic-arn"]
  ok_actions                = ["my-sns-topic-arn"]
}
```
