resource "aws_cloudwatch_log_group" "com-guestlist-cloudwatch-log-group-guestlist-api-prod" {
  name = "/ecs/guestlist-api-prod"
}
resource "aws_cloudwatch_log_group" "com-guestlist-cloudwatch-log-group-guestlist-api-test" {
  name = "/ecs/guestlist-api-test"
}
resource "aws_cloudwatch_log_group" "com-guestlist-cloudwatch-log-group-productionbook-api-test" {
  name = "/ecs/productionbook-api-test"
}
resource "aws_cloudwatch_log_group" "com-guestlist-cloudwatch-log-group-productionbook-api-prod" {
  name = "/ecs/productionbook-api-prod"
}
