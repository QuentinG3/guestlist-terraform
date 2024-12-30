# resource "digitalocean_app" "com-inventory-ditialocean-app-inventory-api-test" {
#   spec {
#     name = "inventory-api-test"
#     region = "fra"

#   domain {
#       name = "inventory-api.eventum-app.com"
#       type = "PRIMARY"
#     }
#     service {
#       name = "web"
#       instance_size_slug = "apps-s-1vcpu-0.5gb"
#       instance_count = "1"

#       image {
#         registry_type = "DOCKER_HUB"
#         registry      = "qeerio"
#         repository    = "inventory-api"
#         tag           = "v2"
#         registry_credentials = var.dockerhub_credentials
#       }

#       env {
#         key  = "APP_PORT"
#         value = "8080"
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_SES_ACCESS_KEY_ID"
#         value = var.aws["access_key"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_SES_REGION"
#         value = var.aws["region"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_SES_SECRET_ACCESS_KEY"
#         value = var.aws["secret_key"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_S3_ACCESS_KEY_ID"
#         value = var.awss3_inventory_test["access_key"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_S3_REGION"
#         value = var.awss3_inventory_test["region"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_S3_SECRET_ACCESS_KEY"
#         value = var.awss3_inventory_test["secret_key"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "FIREBASE_DATABASE_URL"
#         value = var.firebase_inventory_test["database_url"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "FIREBASE_STORAGE_NAME"
#         value = var.firebase_inventory_test["storage_name"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "LOG_LEVEL"
#         value = "info"
#         type  = "GENERAL"
#       }
#       env {
#         key  = "NODE_ENV"
#         value = "dev"
#         type  = "GENERAL"
#       }
#       env {
#         key  = "PG_DB"
#         value = var.database_inventory_test["database"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "PG_HOST"
#         value = var.database_inventory_test["host"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "PG_PASSWORD"
#         value = var.database_inventory_test["password"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "PG_USER"
#         value = var.database_inventory_test["username"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "PG_MAX_CONNECTIONS"
#         value = var.database_inventory_test["max_connections"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "SES_FROM"
#         value = var.aws["ses_from"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "AWS_S3_BUCKET"
#         value = var.awss3_inventory_test["bucket_name"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "STRIPE_KEY"
#         value = var.stripe_inventory_test["key"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "STRIPE_SUCCESSURL"
#         value = var.stripe_inventory_test["successUrl"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "STRIPE_CANCELURL"
#         value = var.stripe_inventory_test["cancelUrl"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "STRIPE_WEBHOOK_SECRET"
#         value = var.stripe_inventory_test["webhookSecret"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "GOOGLE_CRED_PROJECT_ID"
#         value = var.gcp_inventory_test["projectId"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "GOOGLE_CRED_PRIVATE_KEY"
#         value = var.gcp_inventory_test["privateKey"]
#         type  = "GENERAL"
#       }
#       env {
#         key  = "GOOGLE_CRED_CLIENT_EMAIL"
#         value = var.gcp_inventory_test["clientEmail"]
#         type  = "GENERAL"
#       }

#       http_port = 8080
#     }
#   }
# }
