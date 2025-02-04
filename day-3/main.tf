#AWS_CUSTOM_NETWORK_CREATION

# 1) VPC
resource "aws_vpc" "main" {
 cidr_block =  "10.0.0.0/16"
 tags = {
    name= "Dev"
 }
}

# 2) INTERNET GATEWAY (ATTACH TO VPC)

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "cust_ig"
  }
}



# 3) SUBNET

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "cust_subnet"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Main"
  }
}


# 4.Create Route table and Attach to ig (EDIT ROUTES)

resource "aws_route_table" "Main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }



  tags = {
    Name = "main"
  }
}








# 5. Subnet association with Route table

resource "aws_route_table_association" "main" {

  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.Main.id
}


# 6. Create Security group

resource "aws_security_group" "allow_tls" {
  
name        = "allow_tls"
  vpc_id      = aws_vpc.main.id
  tags = {
    Name = "dev_sg"
  }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

 

  
}

  # 7. Launch Instance

resource "aws_instance" "prod" {

  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  key_name = "virginia_key"
  subnet_id = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
}

   


    
