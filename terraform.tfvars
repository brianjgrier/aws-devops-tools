//
// Enter the "name" tag prefix you want for this Instance
//
Name_Tag = "CICD"
//
// Set the address range you want.
// Each requested subnet will get an equal amount of space within this
// address range so be sure to your request will allow all for that.
//
CIDR_Required = "10.0.0.0/16"
//
// Enter the IP address of the github enterprise server followed by '/32'
//
GHE_CIDR = "44.228.201.109/32"
//
// Enter the numbr of public and private subnets
// Each will be created in a each different availability zone.
// If you specify more subnets than the available number of availability 
// zones it will automaticaly reduce the number of networks to match the 
// number of availability zones.
//
num_Public_Subnets = 2
num_Private_Subnets = 2
num_Bastion_Subnets = 2

//
// Enter the keypair you want to use for the bastion servers
//
Keypair = "CircleCI.testing"
//
// Enter your AWS CLI profile to use for this build
//
AWS_Profile = "cx-ppd-cloudops-aws-01"

// GitPrime environment variables

// Key pari for GitPrime server
GP_Keypair="GitPrime.Poc"

// AWS KMS key for volume encryption
GP_kms_key={
    us-east-1 = "arn:aws:kms:us-east-1:432450059541:key/bc7d7fc0-8925-4c47-b65d-441cb4989034"
    us-east-2 = "arn:aws:kms:us-east-2:432450059541:key/5f133701-2c2a-4602-9f78-ad0f566aef7d"
    us-west-2 = "arn:aws:kms:us-west-2:432450059541:key/f25c6b0c-4c5c-405b-b005-e4da558919a6"
}
// Subnet for lambda calls
 GP_lambda_cidr = ["3.12.235.225/32","3.21.9.42/32","3.20.96.170/32"]
 // Route 53 Health check subnet
 GP_route_53_cidr = ["15.177.0.0/18"]
 // ARN for SNS topic for GitPrime
 GP_alarm_actions = [ "arn:aws:sns:us-east-2:432450059541:GitPrime-master-node-cpu" ]
