resource "aws_instance" "web" {

  provisioner "file" {
    source = "aws-ssh-key.pem"
    destination = "$HOME/aws-ssh-key.pem"

    connection {
      type = "ssh"
      user = "ec2-user"
      key_file = "${var.key_file_name}"
      agent = true
    }
  }

  # virtualization_type = "hvm"
  
  associate_public_ip_address = true
  source_dest_check = false

  # subnet ID for our VPC
  subnet_id = "${var.subnet_id}"

  instance_type = "${var.instance_type}"

  ami = "${lookup(var.aws_amis, var.aws_region)}"

  key_name = "${var.key_name}"

  # We set the name as a tag
  tags {
    Name = "${var.instance_name}"
  }
}