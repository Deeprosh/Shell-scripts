#!/bin/bash​

################​

################​

#Author:Deepthi​

#Date:12-08-2025​

#Version:v1​

#################​

#This scirpt will generate the AWS resource usage​

#​

#AWS S3​

#AWS EC2​

#AWS LAMBDA​

#AWS IAM USERS​

#​

set -x​

​

#list S3 buckets​

echo "print list of s3 buckets"​

aws s3 ls​

​

#List EC2 instances​

echo "print list of EC2 instances"​

aws ec2 describe-instances​

​

#List LAMBDA functions​

echo "print list of lambda functions"​

aws lambda list-functions​

​

#List IAM users​

echo "print list of IAM users"​

aws iam list-users
