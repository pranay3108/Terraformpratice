output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.example.id # Output the EC2 instance ID
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.example.public_ip # Output the public IP of the EC2 instance
}