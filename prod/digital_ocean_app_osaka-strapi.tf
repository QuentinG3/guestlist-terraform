resource "digitalocean_app" "com-guestlist-ditialocean-app-osaka-strapi" {
  spec {
    name = "osaka-strapi"
    region = "sgp1"

  # domain {
  #     name = "guestlist-api.eventum-app.com"
  #     type = "PRIMARY"
  #   }
    service {
      name = "web"
      instance_size_slug = "apps-s-1vcpu-1gb-fixed"
      instance_count = "1"
      image {
        registry_type = "DOCKER_HUB"
        registry      = "guslynck"
        repository    = "osaka-strapi"
        tag           = "v5"
        registry_credentials = var.dockerhub_credentials_guslynck
      }
      env {
        key  = "AWS_ACCESS_KEY_ID"
        value = var.aws_osaka["access_key"]
        type  = "GENERAL"
      }
      env {
        key  = "AWS_REGION"
        value = var.aws_osaka["region"]
        type  = "GENERAL"
      }
      env {
        key  = "CDN_URL"
        value = var.aws_osaka["cdn_url"]
        type  = "GENERAL"
      }
      env {
        key  = "AWS_ACCESS_SECRET"
        value = var.aws_osaka["secret_key"]
        type  = "GENERAL"
      }
      env {
        key  = "AWS_BUCKET"
        value = var.aws_osaka["bucket"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_CLIENT"
        value = "postgres"
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_HOST"
        value = var.database_osaka["host"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_PORT"
        value = var.database_osaka["port"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_NAME"
        value = var.database_osaka["database"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_USERNAME"
        value = var.database_osaka["username"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_PASSWORD"
        value = var.database_osaka["password"]
        type  = "GENERAL"
      }
      env {
        key  = "DATABASE_SSL"
        value = "true"
        type  = "GENERAL"
      }
      env {
        key  = "JWT_SECRET"
        value = var.secrets_osaka["jwt_secret"]
        type  = "GENERAL"
      }
      env {
        key  = "ADMIN_JWT_SECRET"
        value = var.secrets_osaka["admin_jwt_secret"]
        type  = "GENERAL"
      }
      env {
        key  = "APP_KEYS"
        value = var.secrets_osaka["app_keys"]
        type  = "GENERAL"
      }
      env {
        key  = "NODE_ENV"
        value = "production"
        type  = "GENERAL"
      }
      env {
        key  = "API_TOKEN_SALT"
        value = var.secrets_osaka["api_token_salt"]
        type  = "GENERAL"
      }
      env {
        key  = "TRANSFER_TOKEN_SALT"
        value = var.secrets_osaka["transfer_token_salt"]
        type  = "GENERAL"
      }

      http_port = 1337
    }
  }
}
