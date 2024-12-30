# resource "aws_ecs_service" "com-guestlist-service-guestlist-api-prod" {
#   name            = "guestlist-api-prod"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-guestlist-api-prod.arn
#   desired_count   = 1
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-guestlist-api-prod.arn
#     container_name   = "guestlist-api-prod"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }

# resource "aws_ecs_service" "com-guestlist-service-guestlist-api-test" {
#   name            = "guestlist-api-test"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-guestlist-api-test.arn
#   desired_count   = 0
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-guestlist-api-test.arn
#     container_name   = "guestlist-api-test"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }

# resource "aws_ecs_service" "com-guestlist-service-productionbook-api-test" {
#   name            = "productionbook-api-test"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-productionbook-api-test.arn
#   desired_count   = 0
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-productionbook-api-test.arn
#     container_name   = "productionbook-api-test"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }

# resource "aws_ecs_service" "com-guestlist-service-productionbook-api-prod" {
#   name            = "productionbook-api-prod"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-productionbook-api-prod.arn
#   desired_count   = 1
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-productionbook-api-prod.arn
#     container_name   = "productionbook-api-prod"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }


# resource "aws_ecs_service" "com-guestlist-service-inventory-api-test" {
#   name            = "inventory-api-test"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-inventory-api-test.arn
#   desired_count   = 0
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-inventory-api-test.arn
#     container_name   = "inventory-api-test"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }

# resource "aws_ecs_service" "com-guestlist-service-inventory-api-prod" {
#   name            = "inventory-api-prod"
#   cluster         = aws_ecs_cluster.com-guestlist-ecs-cluster.id
#   task_definition = aws_ecs_task_definition.com-guestlist-task-definition-inventory-api-prod.arn
#   desired_count   = 1
#   launch_type = "FARGATE"
#   platform_version = "LATEST"
#   scheduling_strategy = "REPLICA"

#   deployment_controller {
#     type = "ECS"
#   }

#   load_balancer {
#     target_group_arn = aws_lb_target_group.com-guestlist-target-group-inventory-api-prod.arn
#     container_name   = "inventory-api-prod"
#     container_port   = 8080
#   }



#   network_configuration {
#     security_groups = [aws_security_group.com-guestlist-sgroup-target-api.id]
#     subnets = [
#       aws_subnet.com-guestlist-subnet-public.0.id,
#       aws_subnet.com-guestlist-subnet-public.1.id,
#       aws_subnet.com-guestlist-subnet-public.2.id
#     ]
#     assign_public_ip = "true"
#   }
# }
