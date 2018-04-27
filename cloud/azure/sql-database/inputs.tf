# Global Terraform
variable "environment" {
  description = "Architecture Environment"
  type        = "string"
}

# Global DataDog
variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

variable "message" {
  description = "Message sent when an alert is triggered"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

# Azure SQL Database specific variables
variable "cpu_silenced" {
  description = "Groups to mute for SQL CPU monitor"
  type        = "map"
  default     = {}
}

variable "cpu_message" {
  description = "Custom message for SQL CPU monitor"
  type        = "string"
  default     = ""
}

variable "cpu_aggregator" {
  description = "Monitor aggregator for SQL CPU [available values: min, max, sum or avg]"
  type        = "string"
  default     = "avg"
}

variable "cpu_timeframe" {
  description = "Monitor timeframe for SQL CPU [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_15m"
}

variable "cpu_threshold_warning" {
  description = "CPU usage in percent (warning threshold)"
  default     = "80"
}

variable "cpu_threshold_critical" {
  description = "CPU usage in percent (critical threshold)"
  default     = "90"
}

variable "diskspace_silenced" {
  description = "Groups to mute for SQL disk space monitor"
  type        = "map"
  default     = {}
}

variable "diskspace_message" {
  description = "Custom message for SQL disk space monitor"
  type        = "string"
  default     = ""
}

variable "diskspace_aggregator" {
  description = "Monitor aggregator for SQL disk space [available values: min, max, sum or avg]"
  type        = "string"
  default     = "avg"
}

variable "diskspace_timeframe" {
  description = "Monitor timeframe for SQL disk space [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_15m"
}

variable "diskspace_threshold_warning" {
  description = "Disk space used in percent (warning threshold)"
  default     = "80"
}

variable "diskspace_threshold_critical" {
  description = "Disk space used in percent (critical threshold)"
  default     = "90"
}

variable "dtu_silenced" {
  description = "Groups to mute for SQL DTU monitor"
  type        = "map"
  default     = {}
}

variable "dtu_message" {
  description = "Custom message for SQL DTU monitor"
  type        = "string"
  default     = ""
}

variable "dtu_aggregator" {
  description = "Monitor aggregator for SQL DTU [available values: min, max, sum or avg]"
  type        = "string"
  default     = "avg"
}

variable "dtu_timeframe" {
  description = "Monitor timeframe for SQL DTU [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_15m"
}

variable "dtu_threshold_warning" {
  description = "Amount of DTU used (warning threshold)"
  default     = "85"
}

variable "dtu_threshold_critical" {
  description = "Amount of DTU used (critical threshold)"
  default     = "90"
}

variable "deadlock_silenced" {
  description = "Groups to mute for SQL Deadlock monitor"
  type        = "map"
  default     = {}
}

variable "deadlock_message" {
  description = "Custom message for SQL Deadlock monitor"
  type        = "string"
  default     = ""
}

variable "deadlock_aggregator" {
  description = "Monitor aggregator for SQL Deadlock [available values: min, max, sum or avg]"
  type        = "string"
  default     = "sum"
}

variable "deadlock_timeframe" {
  description = "Monitor timeframe for SQL Deadlock [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "deadlock_threshold_critical" {
  description = "Amount of Deadlocks (critical threshold)"
  default     = "1"
}
