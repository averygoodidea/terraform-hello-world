First update:

https://github.com/averygoodidea/terraform-hello-world/blob/master/init.sh#L1
with a unique bucket "configuration" name

then update
https://github.com/averygoodidea/terraform-hello-world/blob/master/main.tfsh#L23
with a unique bucket "application" level name

then run the following

```
#this creates the configuration level bucket in AWS
sh ./init.sh default

terraform init

#this creates the application level bucket in AWS and stores the remote state in the configuration bucket
terraform apply
```

You should now see two buckets in your [AWS S3 Console](https://s3.console.aws.amazon.com/s3/home).