#!/bin/bash

aws autoscaling describe-auto-scaling-groups --auto-scaling-group-name zox-stg | awk {'print $4'} | grep -v "zoxstg\|2018-07-25T07:13:35.097Z"
2018-09-15T12:38:49.377Z
