# install awscli
# configure aws credentials

# upload docker image to aws ecr.
aws_login=$(aws ecr get-login --no-include-email --region us-east-1);
sudo $aws_login

# retag.
sudo docker tag visualdata/api:latest 074160552230.dkr.ecr.us-east-1.amazonaws.com/visualdata/api:latest

# push.
sudo docker push 074160552230.dkr.ecr.us-east-1.amazonaws.com/visualdata/api:latest