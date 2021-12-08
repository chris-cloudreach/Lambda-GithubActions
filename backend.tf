terraform {
  backend "s3"{
      bucket = "my-first-lambdabucket-194694014750"
      key = "sprint3/week7/lambda-function-githubaction/terraform.tfstate"
      dynamodb_table = "terraform-lock"
      
  }
}