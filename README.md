# Demo Terraform Multi-Env Deploy using Workspaces
### Steps
1. Zip application to deploy & append version number to file
2. Execute `terraform init` in deployments directory on first use
3. Execute `terraform workspace new pilot` to create Pilot workspace
4. Execute `terraform workspace new prod` to create Prod workspace
5. When deploying for an environment
    * Activate workspace `terraform workspace select pilot`
    * Execute `terraform plan -var-file=pilot.tfvars -out=plan.pilot` to create plan file
    * Execute `terraform apply plan.pilot` to deploy to Pilot environment