#!/bin/bash

#Instance_ID=`aws autoscaling describe-auto-scaling-groups --auto-scaling-group-name test | awk {'print $4'} | grep -v "test\|2018-09-24T12:38:29.917Z"`
Instance_ID=`aws ec2 describe-instances --output table | grep "InstanceId"`
for ec2_id in $Instance_ID
do
aws ec2 describe-instances --instance-ids $ec2_id --output table | grep  "InstanceType" | awk {'print $4'}

aws ec2 stop-instances --instance-ids $ec2_id

sleep 3m

aws ec2 modify-instance-attribute --instance-id $ec2_id --instance-type "{\"Value\": \"m1.small\"}"

aws ec2 start-instances --instance-ids $ec2_id

done
