# This is the actual lambda function
resource "aws_lambda_function" "test_lambda" {
  s3_key      =     data.archive_file.BotoScript.output_path   #"BotoScript.zip"
  function_name = "BotoScript" #you can use variable here to avoid hardcoding
  s3_bucket     = "my-first-lambdabucket-194694014750" #you can use variable here to avoid hardcoding
  role          = aws_iam_role.lambda_role.arn
  handler       = "BotoScript.handler" #pythonfilename.methodname .. ${function_name}.handler
  source_code_hash = data.archive_file.BotoScript.output_base64sha256
  runtime       = "python3.8"
}