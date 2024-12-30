resource "digitalocean_app" "com-guestlist-ditialocean-app-guestlist-api-prod" {
  spec {
    name = "guestlist-api-prod"
    region = "fra"

  domain {
      name = "guestlist-api.qeerio.com"
      type = "PRIMARY"
    }
    service {
      name = "web"
      instance_size_slug = "apps-s-1vcpu-1gb-fixed"
      instance_count = "1"
      image {
        registry_type = "DOCKER_HUB"
        registry      = "qeerio"
        repository    = "guestlist-api"
        tag           = "v2"
        registry_credentials = var.dockerhub_credentials
      }

      env {
        key  = "APP_PORT"
        value = "8080"
        type  = "GENERAL"
      }
      env {
        key  = "AWS_ACCESS_KEY_ID"
        value = var.aws["access_key"]
        type  = "GENERAL"
      }
      env {
        key  = "AWS_REGION"
        value = var.aws["region"]
        type  = "GENERAL"
      }
      env {
        key  = "AWS_SECRET_ACCESS_KEY"
        value = var.aws["secret_key"]
        type  = "GENERAL"
      }
      env {
        key  = "QRCODE_FUNCTION_HOST"
        value = var.firebase_guestlist_prod["qr_function"]
        type  = "GENERAL"
      }
      env {
        key  = "FIREBASE_DATABASE_URL"
        value = var.firebase_guestlist_prod["database_url"]
        type  = "GENERAL"
      }
      env {
        key  = "FIREBASE_STORAGE_NAME"
        value = var.firebase_guestlist_prod["storage_name"]
        type  = "GENERAL"
      }
      env {
        key  = "LOG_LEVEL"
        value = "info"
        type  = "GENERAL"
      }
      env {
        key  = "NODE_ENV"
        value = "dev"
        type  = "GENERAL"
      }
      env {
        key  = "PG_DB"
        value = var.database_guestlist_prod["database"]
        type  = "GENERAL"
      }
      env {
        key  = "PG_HOST"
        value = var.database_guestlist_prod["host"]
        type  = "GENERAL"
      }
      env {
        key  = "PG_PASSWORD"
        value = var.database_guestlist_prod["password"]
        type  = "GENERAL"
      }
      env {
        key  = "PG_USER"
        value = var.database_guestlist_prod["username"]
        type  = "GENERAL"
      }
      env {
        key  = "SES_FROM"
        value = var.aws["ses_from"]
        type  = "GENERAL"
      }
      env {
        key  = "STRIPE_KEY"
        value = var.stripe_guestlist_prod["key"]
        type  = "GENERAL"
      }
      env {
        key  = "STRIPE_SUCCESSURL"
        value = var.stripe_guestlist_prod["successUrl"]
        type  = "GENERAL"
      }
      env {
        key  = "STRIPE_CANCELURL"
        value = var.stripe_guestlist_prod["cancelUrl"]
        type  = "GENERAL"
      }
      env {
        key  = "STRIPE_WEBHOOK_SECRET"
        value = var.stripe_guestlist_prod["webhookSecret"]
        type  = "GENERAL"
      }
      env {
        key  = "GOOGLE_CRED_PROJECT_ID"
        value = var.gcp_guestlist_prod["projectId"]
        type  = "GENERAL"
      }
      env {
        key  = "GOOGLE_CRED_PRIVATE_KEY"
        value = var.gcp_guestlist_prod["privateKey"]
        type  = "GENERAL"
      }
      env {
        key  = "GOOGLE_CRED_CLIENT_EMAIL"
        value = var.gcp_guestlist_prod["clientEmail"]
        type  = "GENERAL"
      }

      http_port = 8080
    }
  }
}
