resource "aws_ecs_task_definition" "com-guestlist-task-definition-guestlist-api-prod" {
  family                = "guestlist-api-prod"
  container_definitions = templatefile("service-api-prod.tmpl", {
      APP_PORT = "8080",
      AWS_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_REGION = var.aws["region"],
      AWS_SECRET_ACCESS_KEY = var.aws["secret_key"],
      QRCODE_FUNCTION_HOST = var.firebase_guestlist_prod["qr_function"],
      FIREBASE_DATABASE_URL = var.firebase_guestlist_prod["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_guestlist_prod["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_guestlist_prod["database"],
      PG_HOST = var.database_guestlist_prod["host"],
      PG_PASSWORD = var.database_guestlist_prod["password"],
      PG_USER = var.database_guestlist_prod["username"],
      SES_FROM = var.aws["ses_from"],
      STRIPE_KEY = var.stripe_guestlist_prod["key"],
      STRIPE_SUCCESSURL = var.stripe_guestlist_prod["successUrl"],
      STRIPE_CANCELURL = var.stripe_guestlist_prod["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_guestlist_prod["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_guestlist_prod["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_guestlist_prod["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_guestlist_prod["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "512"
  memory = "2048"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_task_definition" "com-guestlist-task-definition-guestlist-api-test" {
  family                = "guestlist-api-test"
  container_definitions = templatefile("service-api-test.tmpl", {
      APP_PORT = "8080",
      AWS_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_REGION = var.aws["region"],
      AWS_SECRET_ACCESS_KEY = var.aws["secret_key"],
      QRCODE_FUNCTION_HOST = var.firebase_guestlist_test["qr_function"],
      FIREBASE_DATABASE_URL = var.firebase_guestlist_test["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_guestlist_test["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_guestlist_test["database"],
      PG_HOST = var.database_guestlist_test["host"],
      PG_PASSWORD = var.database_guestlist_test["password"],
      PG_USER = var.database_guestlist_test["username"],
      SES_FROM = var.aws["ses_from"],
      STRIPE_KEY = var.stripe_guestlist_test["key"],
      STRIPE_SUCCESSURL = var.stripe_guestlist_test["successUrl"],
      STRIPE_CANCELURL = var.stripe_guestlist_test["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_guestlist_test["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_guestlist_test["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_guestlist_test["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_guestlist_test["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_task_definition" "com-guestlist-task-definition-productionbook-api-test" {
  family                = "productionbook-api-test"
  container_definitions = templatefile("service-productionbook-api-test.tmpl", {
      APP_PORT = "8080",
      AWS_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_REGION = var.aws["region"],
      AWS_SECRET_ACCESS_KEY = var.aws["secret_key"],
      FIREBASE_DATABASE_URL = var.firebase_productionbook_test["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_productionbook_test["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_productionbook_test["database"],
      PG_HOST = var.database_productionbook_test["host"],
      PG_PASSWORD = var.database_productionbook_test["password"],
      PG_USER = var.database_productionbook_test["username"],
      SES_FROM = var.aws["ses_from"],
      STRIPE_KEY = var.stripe_productionbook_test["key"],
      STRIPE_SUCCESSURL = var.stripe_productionbook_test["successUrl"],
      STRIPE_CANCELURL = var.stripe_productionbook_test["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_productionbook_test["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_productionbook_test["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_productionbook_test["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_productionbook_test["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_task_definition" "com-guestlist-task-definition-productionbook-api-prod" {
  family                = "productionbook-api-prod"
  container_definitions = templatefile("service-productionbook-api-prod.tmpl", {
      APP_PORT = "8080",
      AWS_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_REGION = var.aws["region"],
      AWS_SECRET_ACCESS_KEY = var.aws["secret_key"],
      FIREBASE_DATABASE_URL = var.firebase_productionbook_prod["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_productionbook_prod["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_productionbook_prod["database"],
      PG_HOST = var.database_productionbook_prod["host"],
      PG_PASSWORD = var.database_productionbook_prod["password"],
      PG_USER = var.database_productionbook_prod["username"],
      SES_FROM = var.aws["ses_from"],
      STRIPE_KEY = var.stripe_productionbook_prod["key"],
      STRIPE_SUCCESSURL = var.stripe_productionbook_prod["successUrl"],
      STRIPE_CANCELURL = var.stripe_productionbook_prod["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_productionbook_prod["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_productionbook_prod["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_productionbook_prod["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_productionbook_prod["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_task_definition" "com-guestlist-task-definition-inventory-api-test" {
  family                = "inventory-api-test"
  container_definitions = templatefile("service-inventory-api-test.tmpl", {
      APP_PORT = "8080",
      AWS_SES_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_SES_REGION = var.aws["region"],
      AWS_SES_SECRET_ACCESS_KEY = var.aws["secret_key"],
      AWS_S3_ACCESS_KEY_ID = var.awss3_inventory_test["access_key"],
      AWS_S3_REGION = var.awss3_inventory_test["region"],
      AWS_S3_SECRET_ACCESS_KEY = var.awss3_inventory_test["secret_key"],
      FIREBASE_DATABASE_URL = var.firebase_inventory_test["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_inventory_test["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_inventory_test["database"],
      PG_HOST = var.database_inventory_test["host"],
      PG_PASSWORD = var.database_inventory_test["password"],
      PG_USER = var.database_inventory_test["username"],
      SES_FROM = var.aws["ses_from"],
      AWS_S3_BUCKET = var.awss3_inventory_test["bucket_name"]
      STRIPE_KEY = var.stripe_inventory_test["key"],
      STRIPE_SUCCESSURL = var.stripe_inventory_test["successUrl"],
      STRIPE_CANCELURL = var.stripe_inventory_test["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_inventory_test["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_inventory_test["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_inventory_test["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_inventory_test["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_ecs_task_definition" "com-guestlist-task-definition-inventory-api-prod" {
  family                = "inventory-api-prod"
  container_definitions = templatefile("service-inventory-api-prod.tmpl", {
      APP_PORT = "8080",
      AWS_SES_ACCESS_KEY_ID = var.aws["access_key"],
      AWS_SES_REGION = var.aws["region"],
      AWS_SES_SECRET_ACCESS_KEY = var.aws["secret_key"],
      AWS_S3_ACCESS_KEY_ID = var.awss3_inventory_prod["access_key"],
      AWS_S3_REGION = var.awss3_inventory_prod["region"],
      AWS_S3_SECRET_ACCESS_KEY = var.awss3_inventory_prod["secret_key"],
      FIREBASE_DATABASE_URL = var.firebase_inventory_prod["database_url"],
      FIREBASE_STORAGE_NAME = var.firebase_inventory_prod["storage_name"],
      LOG_LEVEL = "info",
      NODE_ENV = "dev",
      PG_DB = var.database_inventory_prod["database"],
      PG_HOST = var.database_inventory_prod["host"],
      PG_PASSWORD = var.database_inventory_prod["password"],
      PG_USER = var.database_inventory_prod["username"],
      SES_FROM = var.aws["ses_from"],
      AWS_S3_BUCKET = var.awss3_inventory_prod["bucket_name"]
      STRIPE_KEY = var.stripe_inventory_prod["key"],
      STRIPE_SUCCESSURL = var.stripe_inventory_prod["successUrl"],
      STRIPE_CANCELURL = var.stripe_inventory_prod["cancelUrl"],
      STRIPE_WEBHOOK_SECRET= var.stripe_inventory_prod["webhookSecret"]
      GOOGLE_CRED_PROJECT_ID = var.gcp_inventory_prod["projectId"],
      GOOGLE_CRED_PRIVATE_KEY = var.gcp_inventory_prod["privateKey"],
      GOOGLE_CRED_CLIENT_EMAIL = var.gcp_inventory_prod["clientEmail"]
    }
  )

  task_role_arn = aws_iam_role.com-guestlist-iam-role.arn
  execution_role_arn = aws_iam_role.com-guestlist-iam-role.arn

  network_mode = "awsvpc"

  cpu = "256"
  memory = "512"
  requires_compatibilities = ["FARGATE"]
}
