# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket = "fruchedes-terraform-remote-state"
    key    = "module/rentzone/terraform.tfstate"
    region = "us-east-1"
    #profile        = "fruchedes"
    dynamodb_table = "fruchedes-terraform-state-lock"
  }
}