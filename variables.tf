variable "rg_name"{
    description = "resourcegroup name"
    default = "test-rg2"
}

variable "location"{
    description = "Localtion of rg"
    default = "EastUS"
}

variable "tfc_org_name"{
    description = "terraform organization name"
    default = "bala-tf"
}

variable "tfc_host_name"{
    description = "terraform host name"
    default = "app.terraform.io"
}

variable "tfc_baseline_repo"{
    description = "baseline repo to access outputs" 
}
