# Create zip file required to load code in s3 which contains the
#method for lambda function
data "archive_file" "BotoScript"{
    type = "zip"
    source_file = "${path.module}/BotoScript.py"
    output_path ="${path.module}/BotoScript.zip"
}