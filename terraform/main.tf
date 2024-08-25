module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aft.terraform.2@amazon.com"
    AccountName  = "terraform-aft-1"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "aft.terraform.2@amazon.com"
    SSOUserFirstName = "Sandbox"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "aft.terraform.2@amazon.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox AFT"
    change_reason       = "testing the account vending process 2"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
