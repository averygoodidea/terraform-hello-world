DEPLOYMENT_BUCKET="averygoodwebapp-com-tf"
AWS_PROFILE="default"
aws s3 mb s3://$DEPLOYMENT_BUCKET --profile $AWS_PROFILE