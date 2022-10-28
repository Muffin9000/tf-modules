output "alb_dns_name" {
    value = aws_lb.example.dns_name
    description = "The domain name of the load balancer"
}

output "asg_name" {
  value       = aws_autoscaling_group.example.name
  description = "The name of the Auto Scaling Group"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "The ID of security group attached to LB"
}

output "ssh_security_group_id" {
  value       = aws_security_group.terrassh.id
  description = "The ID of security group for SSH access"
}

output "apache_security_group_id" {
  value       = aws_security_group.instance.id
  description = "The ID of security group for access to apache on instance"
}
