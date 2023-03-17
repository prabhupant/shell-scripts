# Download lambda function
aws lambda get-function --function-name $functionName --query 'Code.Location'
wget -O myfunction.zip URL_from_step_1
