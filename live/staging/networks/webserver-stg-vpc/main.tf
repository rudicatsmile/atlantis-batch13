module "webserver-stg-vpc" {
  source  = "terraform-google-modules/network/google"
  version = "9.1.0"
  # insert the 3 required variables here
  # Test edit from staging
  # Test edit again from staging
  # Test edit again from staging
  # Test edit again from staging4
  # Test edit again from staging 5

  network_name = "webserver-stg-vpc"
  project_id   = "apt-passage-430503-r9"
  subnets = [
    {
      subnet_name   = "webserver-subnet",
      subnet_ip     = "172.10.10.0/26",
      subnet_region = "asia-southeast2"
    }
  ]

  # firewall_rules = [
  #   {
  #     name = "" 
  #     description = ""
  #   } 
  # ]
}

output "webserver-stg-vpc-id" {
  value = module.webserver-stg-vpc.network_id

}
