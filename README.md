## Demo Terraform Multi-Env Deploy using Workspaces
### Why Terraform?
* Version your Infrastructure 
* Simplified configuration files over CloudFormation
* Infrastructure as code that is in lockstep with feature/code deployments
* Supports a Myriad of Cloud Providers
* Can spawn up infrastructure across different Cloud Platforms

### Steps
1. Zip application to deploy & append version number to file
2. Execute `terraform init` in deployments directory on first use
3. Execute `terraform workspace new pilot` to create Pilot workspace
4. Execute `terraform workspace new prod` to create Prod workspace
5. When deploying for an environment
    * Activate workspace `terraform workspace select pilot`
    * Execute `terraform plan -var-file=pilot.tfvars -out=plan.pilot` to create plan file
    * Execute `terraform apply plan.pilot` to deploy to Pilot environment
    
    
## Pros
* Slightly less duplication of modules
* Unnecessary to have multiple backend files


## Cons
* Concept of workspaces is implicit and not explicit
* Requires understanding of workspaces 
* More verbose mechanism for deploying environments
* Version of application is a little muddy
