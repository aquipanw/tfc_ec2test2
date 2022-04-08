variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
    default = "us-east-2"
}

variable "images" {
    default = {
        us-east-1 = "ami-0ff8a91507f77f867"
        us-east-2 = "ami-0b59bfac6be064b78"
        us-west-1 = "ami-a0cfeed8"
        us-west-2 = "ami-0bdb828fd58c52235"
        eu-west-1 = "ami-a10897d6"
        eu-central-1 = "ami-0233214e13e500f77"
        ap-southeast-1 = "ami-08569b978cc4dfa10"
        ap-southeast-2 = "ami-09b42976632b27e9b"
        ap-northeast-1 = "ami-06cd52961ce9f0d85"
    }
}
