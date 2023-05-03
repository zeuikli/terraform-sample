variable "elasticapp" {
  default = "xxxxxxxxxxxxxxxxx"
}
variable "beanstalkappenv" {
  default = "xxxxxxxxxxxxxxxxx"
}
variable "solution_stack_name" {
  type = string
}
variable "tier" {
  type = string
}
variable "minsize" {
  type = string
}
variable "maxsize" {
  type = string
}
variable "vpc_id" {}
variable "public_subnets" {}
variable "elb_public_subnets" {}
variable "autoscale_measure_name" {
  type        = string
  default     = "CPUUtilization"
  description = "Metric used for your Auto Scaling trigger"
}
variable "autoscale_statistic" {
  type        = string
  default     = "Average"
  description = "Statistic the trigger should use, such as Average"
}
variable "autoscale_unit" {
  type        = string
  default     = "Percent"
  description = "Unit for the trigger measurement, such as Bytes"
}
variable "autoscale_lower_bound" {
  type        = number
  default     = 20
  description = "Minimum level of autoscale metric to remove an instance"
}
variable "autoscale_lower_increment" {
  type        = number
  default     = -1
  description = "How many Amazon EC2 instances to remove when performing a scaling activity."
}
variable "autoscale_upper_bound" {
  type        = number
  default     = 80
  description = "Maximum level of autoscale metric to add an instance"
}
variable "autoscale_upper_increment" {
  type        = number
  default     = 1
  description = "How many Amazon EC2 instances to add when performing a scaling activity"
}
variable "rolling_update_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable rolling update"
}
variable "rolling_update_type" {
  type        = string
  default     = "Disabled"
  description = "`Health` or `Immutable`. Set it to `Immutable` to apply the configuration change to a fresh group of instances"
}
variable "deployment_policy" {
  type        = string
  default     = "Rolling"
  description = "Use the DeploymentPolicy option to set the deployment type. The following values are supported: `AllAtOnce`, `Rolling`, `RollingWithAdditionalBatch`, `Immutable`, `TrafficSplitting`"
}
variable "deployment_batch_size_type" {
  type        = string
  default     = "Percentage"
  description = "The type of number that is specified in deployment_batch_size_type"
}
variable "deployment_batch_size" {
  type        = number
  default     = 35
  description = "Percentage or fixed number of Amazon EC2 instances in the Auto Scaling group on which to simultaneously perform deployments. Valid values vary per deployment_batch_size_type setting"
}
variable "deployment_timeout" {
  type        = number
  default     = 300
  description = "Number of seconds to wait for an instance to complete executing commands"
}
variable "loadbalancer_arn" {
  type = string
}
variable "security_group_id" {
  type = string
}
variable "managed_security_group_id" {
  type = string
}
variable "settings" {
  type = list
  default = [
  {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "AWS_S3_ASSET_HOST"
    value     = "https://xxxxxxxxxxxxxxxxx"
  }
  ]
}