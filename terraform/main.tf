module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aft.terraform.9@amazon.com"
    AccountName  = "Sandbox-aft-9"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "aft.terraform.9@amazon.com"
    SSOUserFirstName = "Sandbox"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "aft.terraform.9@amazon.com"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox AFT 9"
    change_reason       = "testing the account vending process 9"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aft.terraform.11@amazon.com"
    AccountName  = "Sandbox-aft-11"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "aft.terraform.11@amazon.com"
    SSOUserFirstName = "Sandbox"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "aft.terraform.11@amazon.com"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox AFT 11"
    change_reason       = "testing the account vending process 11"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}