Run this command
~~~
terraform init
~~~


# Goals
1. Update your modules to accept generic variables.								
2. Create a directory called env.								
3. Create 2 environments, one for prod and one for dev.
   

Tip: terraform plan -var-file=./env/prod.tfvars --target="module.vpc"	

4. Use the Terraform data resource and search for the EC2 instances created in the previous modules.								
