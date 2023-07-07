
terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend"
    key    = "network/demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}


resource "time_sleep" "wait_150_seconds" {

  create_duration = "150s"
}

###
# AWS
# open DynamoDB > create new table > name the table "terraform-state-locking" > the table must hav a partition key named "LockID" with the type of String
###
