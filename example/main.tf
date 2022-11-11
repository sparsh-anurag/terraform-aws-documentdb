module "document_db" {
  source                                = "../"
  subnet_ids                            = ["subnet-999999999999"]
  db_username                           = "root"
  db_password                           = "toor" 
  availability_zones                    = ["us-east-1a"]
  vpc_security_group_ids                = ["sg-999999999999"]
  instance_count                        = 1
  common_tags               = {
    "Project"     = "ToTheNew",
    "Environment" = "dev"
  }
}