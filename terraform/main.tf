module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aft.terraform.13@amazon.com"
    AccountName  = "Sandbox-aft-13"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "laminhduc2k1@gmail.com"
    SSOUserFirstName = "Sandbox"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "aft.terraform.13@amazon.com"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox AFT 13"
    change_reason       = "testing the account vending process 13"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "management" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "aft.terraform.12@amazon.com"
    AccountName  = "Sandbox-aft-11"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "laminhduc2k1@gmail.com"
    SSOUserFirstName = "Sandbox"
    SSOUserLastName  = "AFT"
  }

  account_tags = {
    "ABC:Owner"       = "aft.terraform.12@amazon.com"
  }

  change_management_parameters = {
    change_requested_by = "Sandbox AFT 12"
    change_reason       = "testing the account vending process 12"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}