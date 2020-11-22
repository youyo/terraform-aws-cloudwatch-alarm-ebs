variable volume_id {
  type        = string
  description = ""
}
variable identifier {
  type        = string
  description = ""
}
variable treat_missing_data {
  type        = string
  description = ""
  default     = "missing"
  validation {
    condition     = var.treat_missing_data == "missing" || var.treat_missing_data == "ignore" || var.treat_missing_data == "breaching" || var.treat_missing_data == "notBreaching"
    error_message = "The treat_missing_data value must be a valid. ref) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm ."
  }
}
variable alarm_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable ok_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable insufficient_data_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}
