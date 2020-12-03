DEPLOYMENT_BUCKET="averygoodwebapp-com-tf"
AWS_PROFILE=$1
aws s3 mb s3://$DEPLOYMENT_BUCKET --profile $AWS_PROFILE