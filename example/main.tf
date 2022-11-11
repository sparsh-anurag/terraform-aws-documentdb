module "document_db" {
  source                                = "../"
  subnet_ids                            = [""]
  db_username                           = ""
  db_password                           = "" 
  availability_zones                    = [ ]
  vpc_security_group_ids                = [ ]
  instance_count                        = 1
  common_tags               = {
    "Project"     = "ToTheNew",
    "Environment" = "dev"
  }
}