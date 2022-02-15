resource "aws_lb_target_group" "com-guestlist-target-group-guestlist-api-prod" {
  name        = "guestlist-api-prod"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.com-guestlist-vpc.id

  health_check {
    enabled = "true"
    path = "/healthcheck"
    healthy_threshold = 2
    unhealthy_threshold = 3
    port = 8080
    timeout = 10
    interval = 30
    matcher = "200,202"
  }

  stickiness {
    type = "lb_cookie"
    cookie_duration = "604800"
    enabled = "true"
  }
}

resource "aws_lb_target_group" "com-guestlist-target-group-guestlist-api-test" {
  name        = "guestlist-api-test"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.com-guestlist-vpc.id

  health_check {
    enabled = "true"
    path = "/healthcheck"
    healthy_threshold = 2
    unhealthy_threshold = 3
    port = 8080
    timeout = 10
    interval = 30
    matcher = "200,202"
  }

  stickiness {
    type = "lb_cookie"
    cookie_duration = "604800"
    enabled = "true"
  }
}

resource "aws_lb_target_group" "com-guestlist-target-group-productionbook-api-test" {
  name        = "productionbook-api-test"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.com-guestlist-vpc.id

  health_check {
    enabled = "true"
    path = "/healthcheck"
    healthy_threshold = 2
    unhealthy_threshold = 3
    port = 8080
    timeout = 10
    interval = 30
    matcher = "200,202"
  }

  stickiness {
    type = "lb_cookie"
    cookie_duration = "604800"
    enabled = "true"
  }
}

resource "aws_lb_target_group" "com-guestlist-target-group-productionbook-api-prod" {
  name        = "productionbook-api-prod"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.com-guestlist-vpc.id

  health_check {
    enabled = "true"
    path = "/healthcheck"
    healthy_threshold = 2
    unhealthy_threshold = 3
    port = 8080
    timeout = 10
    interval = 30
    matcher = "200,202"
  }

  stickiness {
    type = "lb_cookie"
    cookie_duration = "604800"
    enabled = "true"
  }
}

