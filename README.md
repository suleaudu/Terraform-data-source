Fetching information from instance during provisioning using data source block in Terraform
Using bvisual studio code as editor, create main.tf file that contains the resource(s) to be provsioned, craete variable file to variablilzed your code to make reusable and prevent hard coding.
In the main.tf file tell your provider block, the resource block, data source block and the output block
When all the necessry blocks have been provided, i started with the initialization of my git repo using the "command terraform init" which initializes the repo and download the necessry plugins needed foterraform to interact with provider via api calls.
I ran "terraform plan" command for dry run of the code. This wi display all the the changes that will take olace when finally run the "terraform apply" command to provision the resoureces defined in the main.tf file. 
