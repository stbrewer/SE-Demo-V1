data "aws_availability_zones" "az_available_spoke_1" {
}

resource "aws_instance" "AWS_Prod_Instance_1" {
  ami = "ami-08a52ddb321b32a8c"
  instance_type          = "t2.micro"
  key_name               = "Kali_key_pair"
  monitoring             = true
  subnet_id              = aviatrix_vpc.AWS_Spoke_VPC_1.subnets[length(data.aws_availability_zones.az_available_spoke_1.names)]["cidr"]

  tags = {
    Name = "Prod_Instance"
    Terraform   = "true"
    Env = "Prod"
    App = "App-1"
    Tier = "Web"
  }
}

resource "aws_instance" "AWS_Dev_Instance_1" {
  ami = "ami-08a52ddb321b32a8c"
  instance_type          = "t2.micro"
  key_name               = "Kali_key_pair"
  monitoring             = true
  subnet_id              = aviatrix_vpc.AWS_Spoke_VPC_2.subnets[length(data.aws_availability_zones.az_available_spoke_1.names)]["cidr"]

  tags = {
    Name = "Dev_Instance"
    Terraform   = "true"
    Env = "Dev"
    App = "App-2"
    Tier = "App"
  }
}

resource "aws_instance" "AWS_QA_Instance_1" {
  ami = "ami-08a52ddb321b32a8c"
  instance_type          = "t2.micro"
  key_name               = "Kali_key_pair"
  monitoring             = true
  subnet_id              = aviatrix_vpc.AWS_Spoke_VPC_1.subnets[length(data.aws_availability_zones.az_available_spoke_1.names)]["cidr"]

  tags = {
    Name = "QA_Instance"
    Terraform   = "true"
    Env = "QA"
    App = "App-3"
    Tier = "DB"
  }
}
