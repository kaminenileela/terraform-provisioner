resource "aws_instance" "ec2" {
    ami = "ami-090252cbe067a9e58"
    vpc_securitygroup_ids = ["sg-055eae504b31da7bd"]
    instance_type = "t3.micro"

    tags = {
        Name = "ec2"
    }
    provisioner "local-exec" {
        command = "echo ${self.private_ip} >> private_ips.txt"

    }

}
