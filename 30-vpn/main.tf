resource "aws_key_pair" "openvpn" {
  key_name   = "openvpn"
  public_key = file("d:\\devOps\\84s\\openvpn.pub") # for mac use /
}

resource "aws_instance" "vpn" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id = local.public_subnet_id
  # key_name = "aws-84s"
  key_name = aws_key_pair.openvpn.key_name #make sure this key exists in AWS
  user_data = file("openvpn.sh")

  tags = merge (
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-vpn"
    }
  )
}