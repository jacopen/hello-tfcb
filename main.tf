terraform {

}

provider "aws" {
	access_key = var.access_key
	secret_key = var.secret_key
	region     = var.region
}

module "devinstance" {
  source  = "app.terraform.io/kusama-sso-demo/devinstance/aws"
  version = "0.0.3"

  hello_tf_instance_type = "t2.large"
  prefix = "kusama"
}
