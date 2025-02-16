terraform {
 #required_version = ">= 1.10.5"
 
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
     #version = ">= 0.143"
    }
  }
}
 
provider "yandex" {
  token     = var.token_id
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
