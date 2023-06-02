variable "aws_access_key"{
default = "AKIARVLWEW5R5O7EB6Q7"
}
variable "aws_secret_key"{
default = "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"
}

provider "aws" {
access_key=var.aws_access_key
secret_key=var.aws_secret_key
}



