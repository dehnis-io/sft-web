
terraform { 

  backend "local" { 

    path = "./terraform.tfstate" 

  } 

} 


# This configuration specifies a local backend for storing Terraform state on a local filesystem

# The state file will be stored at ./terraform.tfstate in the current directory 

 