
resource "aws_lb" "com-guestlist-alb" {
  name               = "com-guestlist-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.com-guestlist-sgroup-lb.id]
  subnets            = [
    aws_subnet.com-guestlist-subnet-public.0.id,
    aws_subnet.com-guestlist-subnet-public.1.id,
    aws_subnet.com-guestlist-subnet-public.2.id
  ]

  idle_timeout = 240
  enable_deletion_protection = true
}

resource "aws_lb_listener" "com-guestlist-alb-listener-http" {
  load_balancer_arn = aws_lb.com-guestlist-alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}

resource "aws_lb_listener" "com-guestlist-alb-listener" {
  load_balancer_arn = aws_lb.com-guestlist-alb.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = "arn:aws:acm:eu-west-1:295335739321:certificate/ebae70d1-598b-4e50-8751-a6ce08f7163c"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.com-guestlist-target-group-guestlist-api-prod.arn
  }
}

resource "aws_lb_listener_rule" "com-guestlist-alb-listener-rule-guestlist-api-prod" {
  listener_arn = aws_lb_listener.com-guestlist-alb-listener.arn
  priority     = 5

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.com-guestlist-target-group-guestlist-api-prod.arn
  }

  condition {
    host_header {
      values = ["guestlist-api.qeerio.com"]
    }
  }
}

resource "aws_lb_listener_certificate" "com-guestlist-alb-listener-certificate-guestlist-test" {
  listener_arn    = aws_lb_listener.com-guestlist-alb-listener.arn
  certificate_arn = "arn:aws:acm:eu-west-1:295335739321:certificate/f90c33cf-6b75-4242-be10-90a9f9b4e346"
}

resource "aws_lb_listener_rule" "com-guestlist-alb-listener-rule-guestlist-api-test" {
  listener_arn = aws_lb_listener.com-guestlist-alb-listener.arn
  priority     = 6

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.com-guestlist-target-group-guestlist-api-test.arn
  }

  condition {
    host_header {
      values = ["guestlist-api.eventum-app.com"]
    }
  }
}

resource "aws_lb_listener_certificate" "com-guestlist-alb-listener-certificate-productionbook-test" {
  listener_arn    = aws_lb_listener.com-guestlist-alb-listener.arn
  certificate_arn = "arn:aws:acm:eu-west-1:295335739321:certificate/b4888c9a-8293-435a-96a2-c588e2aaff6c"
}


resource "aws_lb_listener_rule" "com-guestlist-alb-listener-rule-productionbook-api-test" {
  listener_arn = aws_lb_listener.com-guestlist-alb-listener.arn
  priority     = 7

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.com-guestlist-target-group-productionbook-api-test.arn
  }

  condition {
    host_header {
      values = ["productionbook-api.eventum-app.com"]
    }
  }
}

resource "aws_lb_listener_certificate" "com-guestlist-alb-listener-certificate-productionbook-prod" {
  listener_arn    = aws_lb_listener.com-guestlist-alb-listener.arn
  certificate_arn = "arn:aws:acm:eu-west-1:295335739321:certificate/b53876f0-1a4d-4a42-b094-d279c7dae6a7"
}

resource "aws_lb_listener_rule" "com-guestlist-alb-listener-rule-productionbook-api-prod" {
  listener_arn = aws_lb_listener.com-guestlist-alb-listener.arn
  priority     = 8

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.com-guestlist-target-group-productionbook-api-prod.arn
  }


  condition {
    host_header {
      values = ["productionbook-api.qeerio.com"]
    }
  }
}
