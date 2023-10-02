terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0.0"
    }
    aviatrix = {
      source = "AviatrixSystems/aviatrix"
      version = "3.1.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.56.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.66.0"
    }
    oracle = {
      source  = "hashicorp/oci"
      version = "~> 5.13.0"
    }
  }
}

provider "aviatrix" {
  controller_ip           = "x.x.x.x"
  username                = "xxxx"
  password                = "xxxx"
  skip_version_validation = true
  verify_ssl_certificate  = false
}

provider "aws" {
  region = "us-east-1"
  access_key = "xxxx"
  secret_key = "xxxx"
}

resource "azurerm_resource_group" "Azure_Resource_Group" {
  name     = var.Azure_Resource_Group
  location = var.Azure_Region
}

provider "azurerm" {
  features {}

  subscription_id = "xxxx"
  client_id       = "xxxx"
  client_secret   = "xxxx"
  tenant_id       = "xxxx"
}

provider "google" {
  project = "xxxx"
  region = "useast-1"
}

resource "aviatrix_account" "test_gcp" {
  account_name       = "xxxx"
  cloud_type         = 4
  gcloud_project_id  = ""
  gcloud_project_credentials_filepath = "xxxx"
}

