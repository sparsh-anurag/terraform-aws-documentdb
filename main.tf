resource "aws_docdb_subnet_group" "subnet_group" {
  name        = "${var.project_name_prefix}-docdb-subnet-group"
  description = var.subnet_group_description
  subnet_ids  = var.subnet_ids
  tags        = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-docdb-subnet-group"}))
}

resource "aws_docdb_cluster_parameter_group" "cluster_parameter_group" {
  name        = "${var.project_name_prefix}-docdb-cluster-parameter-group" 
  description = var.parameter_group_description
  family      = var.parameter_group_family
  tags        = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-docdb-cluster-parameter-group"}))
}

resource "aws_docdb_cluster" "cluster" {
  cluster_identifier              = "${var.project_name_prefix}-docdb-cluster"
  engine                          = var.cluster_engine
  engine_version                  = var.cluster_engine_version
  master_username                 = var.db_username
  master_password                 = var.db_password
  backup_retention_period         = var.backup_retention_period
  preferred_backup_window         = var.preferred_backup_window
  preferred_maintenance_window    = var.preferred_maintenance_window
  skip_final_snapshot             = var.skip_final_snapshot
  apply_immediately               = var.cluster_apply_immediately
  availability_zones              = var.availability_zones
  db_subnet_group_name            = aws_docdb_subnet_group.subnet_group.id
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.cluster_parameter_group.id
  deletion_protection             = var.deletion_protection
  storage_encrypted               = var.storage_encrypted
  port                            = var.port
  vpc_security_group_ids          = var.vpc_security_group_ids
  tags                            = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-documentdb-cluster"}))

  depends_on = [aws_docdb_subnet_group.subnet_group, aws_docdb_cluster_parameter_group.cluster_parameter_group]

}


resource "aws_docdb_cluster_instance" "cluster_instances" {

  count                        = var.instance_count
  identifier                   = "${var.project_name_prefix}-docdb-cluster-instance"
  cluster_identifier           = aws_docdb_cluster.cluster.id
  instance_class               = var.instance_class
  apply_immediately            = var.instance_apply_immediately
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  engine                       = aws_docdb_cluster.cluster.engine
  preferred_maintenance_window = var.instance_preferred_maintenance_window
  tags                         = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-documentdb-instance"}))

  depends_on = [aws_docdb_cluster.cluster]
}

