#!/bin/bash
yum update -y
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.sh
chmod +x ./get-pip.sh
./get-pip.sh
yum install -y git
git clone https://github.com/sjortiz/a_day_in_the_cloud_aws_ha_infraestructure.git
cd a_day_in_the_cloud_aws_ha_infraestructure
pip install -r requirements.txt
nohup python api.py &
