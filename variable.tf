variable "project_name_prefix"{
    description = "A string value to describe prefix of all the resources"
    type        = string
    default     = "dev-tothenew"    
}

variable "subnet_group_description" {
  description = "value"
  type        = string
  default     = "docdb-subnet-group"
}

variable "subnet_ids" {
  description = "value"
  type        = list(string)
}

variable "parameter_group_description" {
  description = "value"
  type        = string
  default     = "docdb_cluster_parameter_group"
}

variable "parameter_group_family" {
  description = "value"
  type        = string
  default     = "docdb4.0"
}


variable "instance_count" {
  description = "value"
  type        = number
  default     = 1
}

variable "cluster_engine" {
  description = "value"
  type        = string
  default     = "docdb"
}

variable "cluster_engine_version" {
  description = "value"
  type        = string
  default     = "4.0.0"
}

variable "db_username" {
  description = "value"
  type        = string
}

variable "db_password" {
  description = "value"
  type        = string
  sensitive   = true
}

variable "backup_retention_period" {
  description = "value"
  type        = number
  default     = 0
}

variable "preferred_backup_window" {
  description = "value"
  type        = string
  default = "07:00-09:00"
}

variable "preferred_maintenance_window" {
  description = "value"
  type        = string
  default     = "Fri:09:00-Fri:09:30"
}

variable "skip_final_snapshot" {
  description = "value"
  type        = bool
  default     = true
}

variable "cluster_apply_immediately" {
  description = "value"
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "value"
  type        = list
}

variable "deletion_protection" {
  description = "value"
  type        = bool
  default     = true
}

variable "storage_encrypted" {
  description = "value"
  type        = bool
  default     = true
}

variable "port" {
  description = "value"
  type        = string
  default     = "27017"
}

variable "vpc_security_group_ids" {
  description = "value"
  type        = list(any)
}

variable "instance_class" {
  description = "value"
  type        = string
  default     = "db.t3.medium"
}

variable "instance_apply_immediately" {
  description = "value"
  type        = bool
  default     = true
}

variable "auto_minor_version_upgrade" {
  description = "value"
  type        = bool
  default     = true
}

variable "instance_preferred_maintenance_window" {
  description = "value"
  type        = string
  default     = "Fri:09:00-Fri:09:30"
}

variable "common_tags" {
  description = "value"
  type        = map(string)

}



