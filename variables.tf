variable "token" {
  description = "Yandex Cloud Oauth token"
  type        = string
  sensitive   = true
  }

variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  }

variable "folder_id {
  description = "Yandex Cloud folder ID"
  type        = string
  }

variable "zone" {
  description = "Yandex Cloud access zone"
  type = string
  }
