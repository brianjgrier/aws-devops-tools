# Continuous-Integration

This Terraform Template will create a VPC in with two pairs of public and private subnets

Each pair will be in a different availability zone to allow applications to be highly available.

Each public subnet will have one bastion server to allow ssh access to servers within the VPC. These bastionserver will have a security group that only allows ingress from Cisco networks.

There will also be an outbound proxy established for each public subnet, these will be behind a load balancer which will have an Elastic IP in front of it.

To use this Terraform template you will need to set the region that deployment will happen in. This is done by creating a softlink from the required region file to the file 'region.tf'

1) ln -s region_us-east-1 region.tf (For Testing)
2) ln -s region_us-east-2 region.tf (For Production)
3) ln -s region_us-west-2 region.tf (For Disaster Recover)

After performing this you MUST run "terraform init" to properly use the region.
