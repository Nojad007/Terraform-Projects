resource "aws_lb" "exodus_alb" {
  name               = "exodus-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.publicsa-east-1a.id, aws_subnet.publicsa-east-1b.id, aws_subnet.publicsa-east-1c.id]
  
  enable_deletion_protection = false

  tags = {
    Name    = "exodus alb"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.exodus_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.audi_tg.arn
  }
}

#data "aws_acm_certificate" "exodus_cert" {
#  domain   = "balerica-aisecops.com"
#  statuses = ["ISSUED"]
#  most_recent = true
#}


#resource "aws_lb_listener" "https" {
#  load_balancer_arn = aws_lb.exodus_alb.arn
#  port              = 443
#  protocol          = "HTTPS"
#  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
#  certificate_arn   = data.aws_acm_certificate.exodus_cert.arn



#default_action {
#    type             = "forward"
#    target_group_arn = aws_lb_target_group.audi_tg.arn
#  }
#}

output "lb_dns_name" {
  value       = aws_lb.exodus_alb.dns_name
  description = "The DNS name of the Load Balancer."
}