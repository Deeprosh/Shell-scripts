#!/bin/bash​

################​

################​

#Author:Deepthi​

#Date:01-04-2026​

#Version:v2​

#################​

#This scirpt will generate the AWS resource usage​

#​

#AWS S3​

#AWS EC2​

#AWS LAMBDA​

#AWS IAM USERS​

#​

set -x #debug mode​
set -e #exits when there is an error
set -o #pipefail
​

#list S3 buckets​

echo "print list of s3 buckets"​

aws s3 ls​

​

#List EC2 instances​

echo "print list of EC2 instances"​

aws ec2 describe-instances | jq '.Reservations[].Instances[].Instanceid'​

​

#List LAMBDA functions​

echo "print list of lambda functions"​

aws lambda list-functions​

​

#List IAM users​

echo "print list of IAM users"​

aws iam list-users​
