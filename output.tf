output "public_ip" { #any name
    value = aws_instance.this.public_ip
}

output "private_ip" {
    value = aws_instace.this.private_ip

}

output "ami_id" {
    value = aws_instance.this.id
}