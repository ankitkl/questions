/*
Key_creation
*/
resource "aws_key_pair" "deployer" {
  key_name   = "ec2-key"
  public_key = "${file("./id_rsa.pub")}"
}

resource "aws_instance" "web1" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = "${aws_key_pair.deployer.key_name}"
  subnet_id = "${aws_subnet.eu-west-1a-public.id}"
  tags {
    Name = "Nginx1"
  }
}

/*
resource "aws_instance" "web1" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.key_name}"
  subnet_id = "${aws_subnet.eu-west-1a-public.id}"
  tags {
    Name = "Nginx1"
  }
}
*/
/*
resource "aws_instance" "ansible-test" {
	ami = "ami-1e749f67"
	instance_type = "t1.micro"
        subnet_id = "${aws_subnet.eu-west-1c-private.id}"
	associate_public_ip_address = false
 	key_name = "${aws_key_pair.deployer.key_name}"
	provisioner "ansible" {
		connection {
 			key_file = "${file("./id_rsa")}"
 			user = "ubuntu"
			bastion_host = "${aws_instance.web1.id}"
                        bastion_port = 22
                        bastion_user = "ubuntu"
  			agent = false
 			bastion_key = "${file("./id_rsa")}"
		}

		playbook = "playbook.yml"
		plays = ["terraform"]
		hosts = ["all"]
	}
}
*/
