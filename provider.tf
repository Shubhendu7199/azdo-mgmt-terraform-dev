terraform {
    required_providers {
        azuredevops = {
            source = "microsoft/azuredevops"
            version = "0.2.2"
        }
    }
}

provider "azuredevops" {}