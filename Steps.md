# Overview of steps

Create a directory for your Terraform project and create a Terraform configuration file (usually named `main.tf`) in that directory. In this file, you define the AWS provider and resources you want to create. Here's a basic example:

```hcl
   provider "aws" {
     region = "us-west-2"  # Set your desired AWS region
   }

   resource "aws_instance" "example" {
     ami           = "ami-0b6d6dacf350ebc82"  # Specify an appropriate AMI ID
     instance_type = "t2.micro"
     Subnet        = "subnet-03ff6002f91b23de2"
   }
```

## Initialize Terraform**

In your terminal, navigate to the directory containing your Terraform configuration files and run:

```
terraform init
```

This command initializes the Terraform working directory, downloading any necessary provider plugins.

## Apply the Configuration

Run the following command to create the AWS resources defined in your Terraform configuration:

```
terraform apply
```

Terraform will display a plan of the changes it's going to make. Review the plan and type "yes" when prompted to apply it.
<img width="959" alt="image" src="https://github.com/user-attachments/assets/5cb95c2d-a826-4cf9-9889-c56486dfef5f" />

## Verify Resources

After Terraform completes the provisioning process, you can verify the resources created in the AWS Management Console or by using AWS CLI commands.


<img width="959" alt="image" src="https://github.com/user-attachments/assets/ad8dbb1a-2c16-4e2a-a666-5a55fb1aed9c" />



## Destroy Resources

If you want to remove the resources created by Terraform, you can use the following command:

```
terraform destroy
```

Be cautious when using `terraform destroy` as it will delete resources as specified in your Terraform configuration.

<img width="959" alt="image" src="https://github.com/user-attachments/assets/73fa977e-c597-4fe9-9596-330fc2bf25b7" />
