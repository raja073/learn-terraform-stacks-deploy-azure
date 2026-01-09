# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "azurerm" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "development" {
  inputs = {
    identity_token = identity_token.azurerm.jwt

    regions = ["West Europe"]

    client_id       = "e2359fea-b910-40ce-869a-4863f562f2bc"
    subscription_id = "c842c56f-30ba-4e69-9cb1-338e4a1d0b1f"
    tenant_id       = "cb934f1e-2f3c-4379-9765-82e86239f036"
  }
  destroy = true
}

# deployment "production" {
#   inputs = {
#     identity_token = identity_token.azurerm.jwt

#     regions = ["East US", "West US"]

#     client_id       = "<YOUR_AZURE_CLIENT_ID>"
#     subscription_id = "<YOUR_AZURE_SUBSCRIPTION_ID>"
#     tenant_id       = "<YOUR_AZURE_TENANT_ID>"
#   }
# }
