variable "sns_topic_name" {
  description = "SNS Topic Name"
  type        = string
  default     = "my-alert-topic"
}

variable "email_address" {
  description = "Email to subscribe to the topic"
  type        = string
  validation {
    condition     = can(regex("^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$", var.email_address))
    error_message = "Invalid email address format. Please enter a valid email like name@example.com."
  }
}

variable "sns_display_name" {
  description = "Display name for the SNS topic"
  type        = string
}
variable "region" {
  description = "Specify Region to Create"
  type        = string
}
