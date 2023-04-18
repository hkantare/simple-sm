data "ibm_sm_secrets" "secrets_manager_secrets" {
  instance_id   = var.instance_id
  region        = var.region
  endpoint_type    = var.endpoint_type
}


terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

variable "instance_id" {
  default = "9564ea86-8a5e-48eb-b1fa-7703932c2b51"
}

variable "region" {
  default = "us-south"
}
variable "endpoint_type" {
  default = "private"
}