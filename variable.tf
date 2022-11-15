variable "project_name_prefix"{
    description = "A string value to describe prefix of all the resources"
    type        = string
    default     = "dev-tothenew"    
}

variable "subnet_group_description" {
    description = "A string value to describe subnet group description"
    type        = string
    default     = "docdb-subnet-group"
}

variable "subnet_ids" {
    description = "A string value for subnet ID"
    type        = list(string)
}

variable "parameter_group_description" {
    description = "A string value to describe parameter group description"
    type        = string
    default     = "docdb_cluster_parameter_group"
}

variable "parameter_group_family" {
    description = "A string value"
    type        = string
    default     = "docdb4.0"
}


variable "instance_count" {
    description = "The count of db instances"
    type        = number
    default     = 1
}

variable "cluster_engine" {
    description = "Name of the database engine"
    type        = string
    default     = "docdb"
}

variable "cluster_engine_version" {
    description = "Engine version of the database"
    type        = string
    default     = "4.0.0"
}

variable "db_username" {
    description = "Username for the master DB User"
    type        = string
}

variable "db_password" {
    description = "Password for the master DB user"
    type        = string
    sensitive   = true
}

variable "backup_retention_period" {
    description = "The days to retain backups for"
    type        = number
    default     = 0
}

variable "preferred_backup_window" {
    description = "The daily time range during which automated backups are created if automated backups are enabled"
    type        = string
    default = "07:00-09:00"
}

variable "preferred_maintenance_window" {
    description = "The window to perform maintenance"
    type        = string
    default     = "Fri:09:00-Fri:09:30"
}

variable "skip_final_snapshot" {
    description = "If true, final DB snapshot is cdreated before the DB cluster is delete "
    type        = bool
    default     = true
}

variable "cluster_apply_immediately" {
    description = "If true, cluster modifications are applied immediately"
    type        = bool
    default     = true
}

variable "availability_zones" {
    description = "A list value to store availability zones"
    type        = list
}

variable "deletion_protection" {
    description = "If true, enables database Termination Protection"
    type        = bool
    default     = true
}

variable "storage_encrypted" {
    description = "If true, storage will be encrypted"
    type        = bool
    default     = true
}

variable "port" {
    description = "The database port"
    type        = string
    default     = "27017"
}

variable "vpc_security_group_ids" {
    description = "A list of string to store Security Group ID"
    type        = list(any)
}

variable "instance_class" {
    description = "The type of instance to start"
    type        = string
    default     = "db.t3.medium"
}

variable "instance_apply_immediately" {
    description = "If true, cluster modifications are applied immediately"
    type        = bool
    default     = true
}

variable "auto_minor_version_upgrade" {
    description = "If true, minor engine upgrades will be applied automatically during maintainance window"
    type        = bool
    default     = true
}

variable "instance_preferred_maintenance_window" {
    description = "The window to perform maintenance"
    type        = string
    default     = "Fri:09:00-Fri:09:30"
}

variable "common_tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(string)

}



