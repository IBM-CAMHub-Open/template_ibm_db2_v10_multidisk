# =================================================================
# Licensed Materials - Property of IBM
# 5737-E67
# @ Copyright IBM Corporation 2016, 2017 All Rights Reserved
# US Government Users Restricted Rights - Use, duplication or disclosure
# restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================

# This is a terraform generated template generated from ibm_db2_v10_multidisk

##############################################################
# Keys - CAMC (public/private) & optional User Key (public) 
##############################################################
variable "user_public_ssh_key" {
  type = "string"
  description = "User defined public SSH key used to connect to the virtual machine. The format must be in openSSH."
  default = "None"
}

variable "ibm_pm_public_ssh_key" {
  description = "Public CAMC SSH key value which is used to connect to a guest, used on VMware only."
}

variable "ibm_pm_private_ssh_key" {
  description = "Private CAMC SSH key (base64 encoded) used to connect to the virtual guest."
}

variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default = "true"
}

##############################################################
# Define the vsphere provider 
##############################################################
provider "vsphere" {
  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 0.4"
}

provider "camc" {
  version = "~> 0.1"
}

provider "random" {
  version = "~> 1.0"
}

resource "random_id" "stack_id" {
  byte_length = "16"
}

##############################################################
# Define pattern variables 
##############################################################
##### unique stack name #####
variable "ibm_stack_name" {
  description = "A unique stack name."
}

#### Default OS Admin User Map ####

##### DB2Node01 variables #####
#Variable : DB2Node01-image
variable "DB2Node01-image" {
  type = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
}

#Variable : DB2Node01-name
variable "DB2Node01-name" {
  type = "string"
  description = "Short hostname of virtual machine"
}

#Variable : DB2Node01-os_admin_user
variable "DB2Node01-os_admin_user" {
  type = "string"
  description = "Name of the admin user account in the virtual machine that will be accessed via SSH"
}

#Variable : DB2Node01_db2_base_version
variable "DB2Node01_db2_base_version" {
  type = "string"
  description = "The base version of DB2 to install. Set to none if installing from fix package."
  default = "none"
}

#Variable : DB2Node01_db2_das_password
variable "DB2Node01_db2_das_password" {
  type = "string"
  description = "DB2 Administration Server (DAS) password"
}

#Variable : DB2Node01_db2_das_username
variable "DB2Node01_db2_das_username" {
  type = "string"
  description = "DB2 Administration Server (DAS) username"
  default = "db2das1"
}

#Variable : DB2Node01_db2_fp_version
variable "DB2Node01_db2_fp_version" {
  type = "string"
  description = "The version of DB2 fix pack to install. If no fix pack is required, set this value the same as DB2 base version."
  default = "10.5.0.8"
}

#Variable : DB2Node01_db2_install_dir
variable "DB2Node01_db2_install_dir" {
  type = "string"
  description = "The directory to install DB2. Recommended: /opt/ibm/db2/V<db2_version>"
  default = "/opt/ibm/db2/V10.5"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_codeset
variable "DB2Node01_db2_instances_instance1_databases_database1_codeset" {
  type = "string"
  description = "Codeset is used by the database manager to determine codepage parameter values."
  default = "UTF-8"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_update_FAILARCHPATH
variable "DB2Node01_db2_instances_instance1_databases_database1_database_update_FAILARCHPATH" {
  type = "string"
  description = "The path to be used for archiving log files."
  default = "/database/archive"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGARCHMETH1
variable "DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGARCHMETH1" {
  type = "string"
  description = "Specifies the media type of the primary destination for logs that are archived."
  default = "default"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGFILSIZ
variable "DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGFILSIZ" {
  type = "string"
  description = "Specifies the size of log files."
  default = "default"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGSECOND
variable "DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGSECOND" {
  type = "string"
  description = "Specifies the number of secondary log files that are created and used for recovery log files."
  default = "default"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_update_NEWLOGPATH
variable "DB2Node01_db2_instances_instance1_databases_database1_database_update_NEWLOGPATH" {
  type = "string"
  description = "The path to be used for database logging."
  default = "/database/actlog"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_ldap_user
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_ldap_user" {
  type = "string"
  description = "This parameter indicates whether the database user is stored in LDAP. If the value set to true, the user is not created on the operating system."
  default = "false"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_access
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_access" {
  type = "string"
  description = "The database access granted to the user. Example: DBADM WITH DATAACCESS WITHOUT ACCESSCTRL"
  default = "none"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_gid
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_gid" {
  type = "string"
  description = "Specifies the name of the operating system group for database users."
  default = "dbgroup1"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_home
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_home" {
  type = "string"
  description = "The DB2 database user home directory."
  default = "default"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_name
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_name" {
  type = "string"
  description = "The user name to be granted database access."
  default = "dbuser1"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_password
variable "DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_password" {
  type = "string"
  description = "The password for the database user name."
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_db_collate
variable "DB2Node01_db2_instances_instance1_databases_database1_db_collate" {
  type = "string"
  description = "Collate determines ordering for a set of characters."
  default = "SYSTEM"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_db_data_path
variable "DB2Node01_db2_instances_instance1_databases_database1_db_data_path" {
  type = "string"
  description = "Specifies the DB2 database data path."
  default = "/database/data"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_db_name
variable "DB2Node01_db2_instances_instance1_databases_database1_db_name" {
  type = "string"
  description = "The name of the database to be created."
  default = "db01"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_db_path
variable "DB2Node01_db2_instances_instance1_databases_database1_db_path" {
  type = "string"
  description = "Specifies the DB2 database path."
  default = "/database/data"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_pagesize
variable "DB2Node01_db2_instances_instance1_databases_database1_pagesize" {
  type = "string"
  description = "Specifies the page size in bytes."
  default = "4096"
}

#Variable : DB2Node01_db2_instances_instance1_databases_database1_territory
variable "DB2Node01_db2_instances_instance1_databases_database1_territory" {
  type = "string"
  description = "Territory is used by the database manager when processing data that is territory sensitive."
  default = "US"
}

#Variable : DB2Node01_db2_instances_instance1_fcm_port
variable "DB2Node01_db2_instances_instance1_fcm_port" {
  type = "string"
  description = "The port for the DB2 Fast Communications Manager (FCM)."
  default = "60000"
}

#Variable : DB2Node01_db2_instances_instance1_fenced_groupname
variable "DB2Node01_db2_instances_instance1_fenced_groupname" {
  type = "string"
  description = "The group name for the DB2 fenced user."
  default = "db2fenc1"
}

#Variable : DB2Node01_db2_instances_instance1_fenced_password
variable "DB2Node01_db2_instances_instance1_fenced_password" {
  type = "string"
  description = "The password for the DB2 fenced username."
}

#Variable : DB2Node01_db2_instances_instance1_fenced_username
variable "DB2Node01_db2_instances_instance1_fenced_username" {
  type = "string"
  description = "The fenced user is used to run user defined functions and stored procedures outside of the address space used by the DB2 database."
  default = "db2fenc1"
}

#Variable : DB2Node01_db2_instances_instance1_instance_dir
variable "DB2Node01_db2_instances_instance1_instance_dir" {
  type = "string"
  description = "The DB2 instance directory stores all information that pertains to a database instance."
  default = "/instance/db2inst1"
}

#Variable : DB2Node01_db2_instances_instance1_instance_groupname
variable "DB2Node01_db2_instances_instance1_instance_groupname" {
  type = "string"
  description = "The group name for the DB2 instance user."
  default = "db2iadm1"
}

#Variable : DB2Node01_db2_instances_instance1_instance_password
variable "DB2Node01_db2_instances_instance1_instance_password" {
  type = "string"
  description = "The password for the DB2 instance username."
}

#Variable : DB2Node01_db2_instances_instance1_instance_prefix
variable "DB2Node01_db2_instances_instance1_instance_prefix" {
  type = "string"
  description = "Specifies the DB2 instance prefix"
  default = "INST1"
}

#Variable : DB2Node01_db2_instances_instance1_instance_type
variable "DB2Node01_db2_instances_instance1_instance_type" {
  type = "string"
  description = "The type of DB2 instance to create."
  default = "ESE"
}

#Variable : DB2Node01_db2_instances_instance1_instance_username
variable "DB2Node01_db2_instances_instance1_instance_username" {
  type = "string"
  description = "The DB2 instance username controls all DB2 processes and owns all filesystems and devices."
  default = "db2inst1"
}

#Variable : DB2Node01_db2_instances_instance1_port
variable "DB2Node01_db2_instances_instance1_port" {
  type = "string"
  description = "The port to connect to the DB2 instance."
  default = "50000"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_device
variable "DB2Node01_linux_filesystems_filesystem1_device" {
  type = "string"
  description = "Device to mount to, leave blank if unknown, the system will search for it."
  default = "/dev/xvdc"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_force
variable "DB2Node01_linux_filesystems_filesystem1_force" {
  type = "string"
  description = "Force the mount true or false"
  default = "true"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_fstype
variable "DB2Node01_linux_filesystems_filesystem1_fstype" {
  type = "string"
  description = "File System Type"
  default = "ext4"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_group
variable "DB2Node01_linux_filesystems_filesystem1_group" {
  type = "string"
  description = "Group owner of the mount point"
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_label
variable "DB2Node01_linux_filesystems_filesystem1_label" {
  type = "string"
  description = "Label of the file system"
  default = "instance"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_mountpoint
variable "DB2Node01_linux_filesystems_filesystem1_mountpoint" {
  type = "string"
  description = "Directory to mount to, directory will be created"
  default = "/instance"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_options
variable "DB2Node01_linux_filesystems_filesystem1_options" {
  type = "string"
  description = "Advanced options for mounting the disk"
  default = "defaults"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_perms
variable "DB2Node01_linux_filesystems_filesystem1_perms" {
  type = "string"
  description = "Permissions for the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_size
variable "DB2Node01_linux_filesystems_filesystem1_size" {
  type = "string"
  description = "Size in GB of the disk"
  default = "10"
}

#Variable : DB2Node01_linux_filesystems_filesystem1_user
variable "DB2Node01_linux_filesystems_filesystem1_user" {
  type = "string"
  description = "Owner of the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_device
variable "DB2Node01_linux_filesystems_filesystem2_device" {
  type = "string"
  description = "Device to mount to, leave blank if unknown, the system will search for it."
  default = "/dev/xvdd"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_force
variable "DB2Node01_linux_filesystems_filesystem2_force" {
  type = "string"
  description = "Force the mount true or false"
  default = "true"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_fstype
variable "DB2Node01_linux_filesystems_filesystem2_fstype" {
  type = "string"
  description = "File System Type"
  default = "ext4"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_group
variable "DB2Node01_linux_filesystems_filesystem2_group" {
  type = "string"
  description = "Group owner of the mount point"
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_label
variable "DB2Node01_linux_filesystems_filesystem2_label" {
  type = "string"
  description = "Label of the file system"
  default = "data"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_mountpoint
variable "DB2Node01_linux_filesystems_filesystem2_mountpoint" {
  type = "string"
  description = "Directory to mount to, directory will be created"
  default = "/database/data"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_options
variable "DB2Node01_linux_filesystems_filesystem2_options" {
  type = "string"
  description = "Advanced options for mounting the disk"
  default = "defaults"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_perms
variable "DB2Node01_linux_filesystems_filesystem2_perms" {
  type = "string"
  description = "Permissions for the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_size
variable "DB2Node01_linux_filesystems_filesystem2_size" {
  type = "string"
  description = "Size in GB of the disk"
  default = "40"
}

#Variable : DB2Node01_linux_filesystems_filesystem2_user
variable "DB2Node01_linux_filesystems_filesystem2_user" {
  type = "string"
  description = "Owner of the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_device
variable "DB2Node01_linux_filesystems_filesystem3_device" {
  type = "string"
  description = "Device to mount to, leave blank if unknown, the system will search for it."
  default = "/dev/xvde"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_force
variable "DB2Node01_linux_filesystems_filesystem3_force" {
  type = "string"
  description = "Force the mount true or false"
  default = "true"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_fstype
variable "DB2Node01_linux_filesystems_filesystem3_fstype" {
  type = "string"
  description = "File System Type"
  default = "ext4"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_group
variable "DB2Node01_linux_filesystems_filesystem3_group" {
  type = "string"
  description = "Group owner of the mount point"
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_label
variable "DB2Node01_linux_filesystems_filesystem3_label" {
  type = "string"
  description = "Label of the file system"
  default = "actlog"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_mountpoint
variable "DB2Node01_linux_filesystems_filesystem3_mountpoint" {
  type = "string"
  description = "Directory to mount to, directory will be created"
  default = "/database/actlog"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_options
variable "DB2Node01_linux_filesystems_filesystem3_options" {
  type = "string"
  description = "Advanced options for mounting the disk"
  default = "defaults"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_perms
variable "DB2Node01_linux_filesystems_filesystem3_perms" {
  type = "string"
  description = "Permissions for the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_size
variable "DB2Node01_linux_filesystems_filesystem3_size" {
  type = "string"
  description = "Size in GB of the disk"
  default = "10"
}

#Variable : DB2Node01_linux_filesystems_filesystem3_user
variable "DB2Node01_linux_filesystems_filesystem3_user" {
  type = "string"
  description = "Owner of the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_device
variable "DB2Node01_linux_filesystems_filesystem4_device" {
  type = "string"
  description = "Device to mount to, leave blank if unknown, the system will search for it."
  default = "/dev/xvdf"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_force
variable "DB2Node01_linux_filesystems_filesystem4_force" {
  type = "string"
  description = "Force the mount true or false"
  default = "true"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_fstype
variable "DB2Node01_linux_filesystems_filesystem4_fstype" {
  type = "string"
  description = "File System Type"
  default = "ext4"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_group
variable "DB2Node01_linux_filesystems_filesystem4_group" {
  type = "string"
  description = "Group owner of the mount point"
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_label
variable "DB2Node01_linux_filesystems_filesystem4_label" {
  type = "string"
  description = "Label of the file system"
  default = "archive"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_mountpoint
variable "DB2Node01_linux_filesystems_filesystem4_mountpoint" {
  type = "string"
  description = "Directory to mount to, directory will be created"
  default = "/database/archive"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_options
variable "DB2Node01_linux_filesystems_filesystem4_options" {
  type = "string"
  description = "Advanced options for mounting the disk"
  default = "defaults"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_perms
variable "DB2Node01_linux_filesystems_filesystem4_perms" {
  type = "string"
  description = "Permissions for the mount point."
  default = "default"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_size
variable "DB2Node01_linux_filesystems_filesystem4_size" {
  type = "string"
  description = "Size in GB of the disk"
  default = "20"
}

#Variable : DB2Node01_linux_filesystems_filesystem4_user
variable "DB2Node01_linux_filesystems_filesystem4_user" {
  type = "string"
  description = "Owner of the mount point."
  default = "default"
}


##### Environment variables #####
#Variable : ibm_pm_access_token
variable "ibm_pm_access_token" {
  type = "string"
  description = "IBM Pattern Manager Access Token"
}

#Variable : ibm_pm_service
variable "ibm_pm_service" {
  type = "string"
  description = "IBM Pattern Manager Service"
}

#Variable : ibm_sw_repo
variable "ibm_sw_repo" {
  type = "string"
  description = "IBM Software Repo Root (https://<hostname>:<port>)"
}

#Variable : ibm_sw_repo_password
variable "ibm_sw_repo_password" {
  type = "string"
  description = "IBM Software Repo Password"
}

#Variable : ibm_sw_repo_user
variable "ibm_sw_repo_user" {
  type = "string"
  description = "IBM Software Repo Username"
  default = "repouser"
}


#########################################################
##### Resource : DB2Node01
#########################################################

variable "DB2Node01-os_password" {
  type = "string"
  description = "Operating System Password for the Operating System User to access virtual machine"
}

variable "DB2Node01_folder" {
  description = "Target vSphere folder for virtual machine"
}

variable "DB2Node01_datacenter" {
  description = "Target vSphere datacenter for virtual machine creation"
}

variable "DB2Node01_domain" {
  description = "Domain Name of virtual machine"
}

variable "DB2Node01_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default = "2"
}

variable "DB2Node01_memory" {
  description = "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024"
  default = "2048"
}

variable "DB2Node01_cluster" {
  description = "Target vSphere cluster to host the virtual machine"
}

variable "DB2Node01_dns_suffixes" {
  type = "list"
  description = "Name resolution suffixes for the virtual network adapter"
}

variable "DB2Node01_dns_servers" {
  type = "list"
  description = "DNS servers for the virtual network adapter"
}

variable "DB2Node01_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "DB2Node01_ipv4_gateway" {
  description = "IPv4 gateway for vNIC configuration"
}

variable "DB2Node01_ipv4_address" {
  description = "IPv4 address for vNIC configuration"
}

variable "DB2Node01_ipv4_prefix_length" {
  description = "IPv4 prefix length for vNIC configuration. The value must be a number between 8 and 32"
}

variable "DB2Node01_adapter_type" {
  description = "Network adapter type for vNIC Configuration"
  default = "vmxnet3"
}

variable "DB2Node01_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
}

variable "DB2Node01_root_disk_type" {
  type = "string"
  description = "Type of template disk volume"
  default = "eager_zeroed"
}

variable "DB2Node01_root_disk_controller_type" {
  type = "string"
  description = "Type of template disk controller"
  default = "scsi"
}

variable "DB2Node01_root_disk_keep_on_remove" {
  type = "string"
  description = "Delete template disk volume when the virtual machine is deleted"
  default = "false"
}

variable "storage-volume_disk_name" {
  type = "string"
  description = "Disk Name - DB2Node01"
  default = "disk1"
}

variable "storage-volume_disk_type" {
  type = "string"
  description = "Disk Volume Type - DB2Node01"
  default = "eager_zeroed"
}

variable "storage-volume_disk_size" {
  type = "string"
  description = "Disk Volume Size - DB2Node01"
  default = "10"
}

variable "storage-volume_disk_keep_on_remove" {
  type = "string"
  description = "Disk Keep On Remove - DB2Node01"
  default = "false"
}

variable "storage-volume_disk_datastore" {
  type = "string"
  description = "Disk Datastore - DB2Node01"
}

variable "storage-volume_disk_controller_type" {
  type = "string"
  description = "Disk Controller Type - DB2Node01"
  default = "scsi"
}

variable "storage-volume1_disk_name" {
  type = "string"
  description = "Disk Name - DB2Node01"
  default = "disk2"
}

variable "storage-volume1_disk_type" {
  type = "string"
  description = "Disk Volume Type - DB2Node01"
  default = "eager_zeroed"
}

variable "storage-volume1_disk_size" {
  type = "string"
  description = "Disk Volume Size - DB2Node01"
  default = "40"
}

variable "storage-volume1_disk_keep_on_remove" {
  type = "string"
  description = "Disk Keep On Remove - DB2Node01"
  default = "false"
}

variable "storage-volume1_disk_datastore" {
  type = "string"
  description = "Disk Datastore - DB2Node01"
}

variable "storage-volume1_disk_controller_type" {
  type = "string"
  description = "Disk Controller Type - DB2Node01"
  default = "scsi"
}

variable "storage-volume2_disk_name" {
  type = "string"
  description = "Disk Name - DB2Node01"
  default = "disk3"
}

variable "storage-volume2_disk_type" {
  type = "string"
  description = "Disk Volume Type - DB2Node01"
  default = "eager_zeroed"
}

variable "storage-volume2_disk_size" {
  type = "string"
  description = "Disk Volume Size - DB2Node01"
  default = "10"
}

variable "storage-volume2_disk_keep_on_remove" {
  type = "string"
  description = "Disk Keep On Remove - DB2Node01"
  default = "false"
}

variable "storage-volume2_disk_datastore" {
  type = "string"
  description = "Disk Datastore - DB2Node01"
}

variable "storage-volume2_disk_controller_type" {
  type = "string"
  description = "Disk Controller Type - DB2Node01"
  default = "scsi"
}

variable "storage-volume3_disk_name" {
  type = "string"
  description = "Disk Name - DB2Node01"
  default = "disk4"
}

variable "storage-volume3_disk_type" {
  type = "string"
  description = "Disk Volume Type - DB2Node01"
  default = "eager_zeroed"
}

variable "storage-volume3_disk_size" {
  type = "string"
  description = "Disk Volume Size - DB2Node01"
  default = "20"
}

variable "storage-volume3_disk_keep_on_remove" {
  type = "string"
  description = "Disk Keep On Remove - DB2Node01"
  default = "false"
}

variable "storage-volume3_disk_datastore" {
  type = "string"
  description = "Disk Datastore - DB2Node01"
}

variable "storage-volume3_disk_controller_type" {
  type = "string"
  description = "Disk Controller Type - DB2Node01"
  default = "scsi"
}

# vsphere vm
resource "vsphere_virtual_machine" "DB2Node01" {
  name = "${var.DB2Node01-name}"
  domain = "${var.DB2Node01_domain}"
  folder = "${var.DB2Node01_folder}"
  datacenter = "${var.DB2Node01_datacenter}"
  vcpu = "${var.DB2Node01_number_of_vcpu}"
  memory = "${var.DB2Node01_memory}"
  cluster = "${var.DB2Node01_cluster}"
  dns_suffixes = "${var.DB2Node01_dns_suffixes}"
  dns_servers = "${var.DB2Node01_dns_servers}"

  network_interface {
    label = "${var.DB2Node01_network_interface_label}"
    ipv4_gateway = "${var.DB2Node01_ipv4_gateway}"
    ipv4_address = "${var.DB2Node01_ipv4_address}"
    ipv4_prefix_length = "${var.DB2Node01_ipv4_prefix_length}"
    adapter_type = "${var.DB2Node01_adapter_type}"
  }

  disk {
    type = "${var.DB2Node01_root_disk_type}"
    template = "${var.DB2Node01-image}"
    datastore = "${var.DB2Node01_root_disk_datastore}"
    keep_on_remove = "${var.DB2Node01_root_disk_keep_on_remove}"
    controller_type = "${var.DB2Node01_root_disk_controller_type}"
  }

  # Specify the connection
  connection {
    type = "ssh"
    user = "${var.DB2Node01-os_admin_user}"
    password = "${var.DB2Node01-os_password}"
  }

  provisioner "file" {
    destination = "DB2Node01_add_ssh_key.sh"
    content     = <<EOF
# =================================================================
# Licensed Materials - Property of IBM
# 5737-E67
# @ Copyright IBM Corporation 2016, 2017 All Rights Reserved
# US Government Users Restricted Rights - Use, duplication or disclosure
# restricted by GSA ADP Schedule Contract with IBM Corp.
# =================================================================
#!/bin/bash

if (( $# != 3 )); then
echo "usage: arg 1 is user, arg 2 is public key, arg3 is CAMC Public Key"
exit -1
fi

userid="$1"
ssh_key="$2"
camc_ssh_key="$3"

user_home=$(eval echo "~$userid")
user_auth_key_file=$user_home/.ssh/authorized_keys
echo "$user_auth_key_file"
if ! [ -f $user_auth_key_file ]; then
echo "$user_auth_key_file does not exist on this system, creating."
mkdir $user_home/.ssh
chmod 700 $user_home/.ssh
touch $user_home/.ssh/authorized_keys
chmod 600 $user_home/.ssh/authorized_keys
else
echo "user_home : $user_home"
fi

if [[ $ssh_key = 'None' ]]; then
echo "skipping user key add, 'None' specified"
else
echo "$user_auth_key_file"
echo "$ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
fi

echo "$camc_ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi

EOF
  }

  # Execute the script remotely
  provisioner "remote-exec" {
    inline = [
      "bash -c 'chmod +x DB2Node01_add_ssh_key.sh'",
      "bash -c './DB2Node01_add_ssh_key.sh  \"${var.DB2Node01-os_admin_user}\" \"${var.user_public_ssh_key}\" \"${var.ibm_pm_public_ssh_key}\">> DB2Node01_add_ssh_key.log 2>&1'"
    ]
  }

  disk {
    name = "${var.storage-volume_disk_name}"
    type = "${var.storage-volume_disk_type}"
    size = "${var.storage-volume_disk_size}"
    keep_on_remove = "${var.storage-volume_disk_keep_on_remove}"
    datastore = "${var.storage-volume_disk_datastore}"
    controller_type = "${var.storage-volume_disk_controller_type}"
  }

  disk {
    name = "${var.storage-volume1_disk_name}"
    type = "${var.storage-volume1_disk_type}"
    size = "${var.storage-volume1_disk_size}"
    keep_on_remove = "${var.storage-volume1_disk_keep_on_remove}"
    datastore = "${var.storage-volume1_disk_datastore}"
    controller_type = "${var.storage-volume1_disk_controller_type}"
  }

  disk {
    name = "${var.storage-volume2_disk_name}"
    type = "${var.storage-volume2_disk_type}"
    size = "${var.storage-volume2_disk_size}"
    keep_on_remove = "${var.storage-volume2_disk_keep_on_remove}"
    datastore = "${var.storage-volume2_disk_datastore}"
    controller_type = "${var.storage-volume2_disk_controller_type}"
  }

  disk {
    name = "${var.storage-volume3_disk_name}"
    type = "${var.storage-volume3_disk_type}"
    size = "${var.storage-volume3_disk_size}"
    keep_on_remove = "${var.storage-volume3_disk_keep_on_remove}"
    datastore = "${var.storage-volume3_disk_datastore}"
    controller_type = "${var.storage-volume3_disk_controller_type}"
  }

}

#########################################################
##### Resource : DB2Node01_chef_bootstrap_comp
#########################################################

resource "camc_bootstrap" "DB2Node01_chef_bootstrap_comp" {
  depends_on = ["camc_vaultitem.VaultItem","vsphere_virtual_machine.DB2Node01"]
  name = "DB2Node01_chef_bootstrap_comp"
  camc_endpoint = "${var.ibm_pm_service}/v1/bootstrap/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.DB2Node01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.DB2Node01.network_interface.0.ipv4_address}",
  "node_name": "${var.DB2Node01-name}",
  "node_attributes": {
    "ibm_internal": {
      "stack_id": "${random_id.stack_id.hex}",
      "stack_name": "${var.ibm_stack_name}",
      "vault": {
        "item": "secrets",
        "name": "${random_id.stack_id.hex}"
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : DB2Node01_db2_create_db
#########################################################

resource "camc_softwaredeploy" "DB2Node01_db2_create_db" {
  depends_on = ["camc_softwaredeploy.DB2Node01_db2_v105_install"]
  name = "DB2Node01_db2_create_db"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.DB2Node01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.DB2Node01.network_interface.0.ipv4_address}",
  "node_name": "${var.DB2Node01-name}",
  "runlist": "role[db2_create_db]",
  "node_attributes": {
    "db2": {
      "instances": {
        "instance1": {
          "databases": {
            "database1": {
              "codeset": "${var.DB2Node01_db2_instances_instance1_databases_database1_codeset}",
              "database_update": {
                "FAILARCHPATH": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_update_FAILARCHPATH}",
                "LOGARCHMETH1": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGARCHMETH1}",
                "LOGFILSIZ": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGFILSIZ}",
                "LOGSECOND": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_update_LOGSECOND}",
                "NEWLOGPATH": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_update_NEWLOGPATH}"
              },
              "database_users": {
                "db_user1": {
                  "ldap_user": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_ldap_user}",
                  "user_access": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_access}",
                  "user_gid": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_gid}",
                  "user_home": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_home}",
                  "user_name": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_name}"
                }
              },
              "db_collate": "${var.DB2Node01_db2_instances_instance1_databases_database1_db_collate}",
              "db_data_path": "${var.DB2Node01_db2_instances_instance1_databases_database1_db_data_path}",
              "db_name": "${var.DB2Node01_db2_instances_instance1_databases_database1_db_name}",
              "db_path": "${var.DB2Node01_db2_instances_instance1_databases_database1_db_path}",
              "pagesize": "${var.DB2Node01_db2_instances_instance1_databases_database1_pagesize}",
              "territory": "${var.DB2Node01_db2_instances_instance1_databases_database1_territory}"
            }
          },
          "fcm_port": "${var.DB2Node01_db2_instances_instance1_fcm_port}",
          "fenced_groupname": "${var.DB2Node01_db2_instances_instance1_fenced_groupname}",
          "fenced_username": "${var.DB2Node01_db2_instances_instance1_fenced_username}",
          "instance_dir": "${var.DB2Node01_db2_instances_instance1_instance_dir}",
          "instance_groupname": "${var.DB2Node01_db2_instances_instance1_instance_groupname}",
          "instance_prefix": "${var.DB2Node01_db2_instances_instance1_instance_prefix}",
          "instance_type": "${var.DB2Node01_db2_instances_instance1_instance_type}",
          "instance_username": "${var.DB2Node01_db2_instances_instance1_instance_username}",
          "port": "${var.DB2Node01_db2_instances_instance1_port}"
        }
      }
    },
    "ibm_internal": {
      "roles": "[db2_create_db]"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "db2": {
        "instances": {
          "instance1": {
            "databases": {
              "database1": {
                "database_users": {
                  "db_user1": {
                    "user_password": "${var.DB2Node01_db2_instances_instance1_databases_database1_database_users_db_user1_user_password}"
                  }
                }
              }
            },
            "fenced_password": "${var.DB2Node01_db2_instances_instance1_fenced_password}",
            "instance_password": "${var.DB2Node01_db2_instances_instance1_instance_password}"
          }
        }
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : DB2Node01_db2_v105_install
#########################################################

resource "camc_softwaredeploy" "DB2Node01_db2_v105_install" {
  depends_on = ["camc_softwaredeploy.DB2Node01_linux_cloud_fs"]
  name = "DB2Node01_db2_v105_install"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.DB2Node01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.DB2Node01.network_interface.0.ipv4_address}",
  "node_name": "${var.DB2Node01-name}",
  "runlist": "role[db2_v105_install]",
  "node_attributes": {
    "db2": {
      "base_version": "${var.DB2Node01_db2_base_version}",
      "das_username": "${var.DB2Node01_db2_das_username}",
      "fp_version": "${var.DB2Node01_db2_fp_version}",
      "install_dir": "${var.DB2Node01_db2_install_dir}"
    },
    "ibm": {
      "sw_repo": "${var.ibm_sw_repo}",
      "sw_repo_auth": "true",
      "sw_repo_self_signed_cert": "true",
      "sw_repo_user": "${var.ibm_sw_repo_user}"
    },
    "ibm_internal": {
      "roles": "[db2_v105_install]"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "db2": {
        "das_password": "${var.DB2Node01_db2_das_password}"
      },
      "ibm": {
        "sw_repo_password": "${var.ibm_sw_repo_password}"
      }
    },
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}


#########################################################
##### Resource : DB2Node01_linux_cloud_fs
#########################################################

resource "camc_softwaredeploy" "DB2Node01_linux_cloud_fs" {
  depends_on = ["camc_bootstrap.DB2Node01_chef_bootstrap_comp"]
  name = "DB2Node01_linux_cloud_fs"
  camc_endpoint = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "os_admin_user": "${var.DB2Node01-os_admin_user}",
  "stack_id": "${random_id.stack_id.hex}",
  "environment_name": "_default",
  "host_ip": "${vsphere_virtual_machine.DB2Node01.network_interface.0.ipv4_address}",
  "node_name": "${var.DB2Node01-name}",
  "runlist": "role[linux_cloud_fs]",
  "node_attributes": {
    "ibm_internal": {
      "roles": "[linux_cloud_fs]"
    },
    "linux": {
      "filesystems": {
        "filesystem1": {
          "device": "${var.DB2Node01_linux_filesystems_filesystem1_device}",
          "force": "${var.DB2Node01_linux_filesystems_filesystem1_force}",
          "fstype": "${var.DB2Node01_linux_filesystems_filesystem1_fstype}",
          "group": "${var.DB2Node01_linux_filesystems_filesystem1_group}",
          "label": "${var.DB2Node01_linux_filesystems_filesystem1_label}",
          "mountpoint": "${var.DB2Node01_linux_filesystems_filesystem1_mountpoint}",
          "options": "${var.DB2Node01_linux_filesystems_filesystem1_options}",
          "perms": "${var.DB2Node01_linux_filesystems_filesystem1_perms}",
          "size": "${var.DB2Node01_linux_filesystems_filesystem1_size}",
          "user": "${var.DB2Node01_linux_filesystems_filesystem1_user}"
        },
        "filesystem2": {
          "device": "${var.DB2Node01_linux_filesystems_filesystem2_device}",
          "force": "${var.DB2Node01_linux_filesystems_filesystem2_force}",
          "fstype": "${var.DB2Node01_linux_filesystems_filesystem2_fstype}",
          "group": "${var.DB2Node01_linux_filesystems_filesystem2_group}",
          "label": "${var.DB2Node01_linux_filesystems_filesystem2_label}",
          "mountpoint": "${var.DB2Node01_linux_filesystems_filesystem2_mountpoint}",
          "options": "${var.DB2Node01_linux_filesystems_filesystem2_options}",
          "perms": "${var.DB2Node01_linux_filesystems_filesystem2_perms}",
          "size": "${var.DB2Node01_linux_filesystems_filesystem2_size}",
          "user": "${var.DB2Node01_linux_filesystems_filesystem2_user}"
        },
        "filesystem3": {
          "device": "${var.DB2Node01_linux_filesystems_filesystem3_device}",
          "force": "${var.DB2Node01_linux_filesystems_filesystem3_force}",
          "fstype": "${var.DB2Node01_linux_filesystems_filesystem3_fstype}",
          "group": "${var.DB2Node01_linux_filesystems_filesystem3_group}",
          "label": "${var.DB2Node01_linux_filesystems_filesystem3_label}",
          "mountpoint": "${var.DB2Node01_linux_filesystems_filesystem3_mountpoint}",
          "options": "${var.DB2Node01_linux_filesystems_filesystem3_options}",
          "perms": "${var.DB2Node01_linux_filesystems_filesystem3_perms}",
          "size": "${var.DB2Node01_linux_filesystems_filesystem3_size}",
          "user": "${var.DB2Node01_linux_filesystems_filesystem3_user}"
        },
        "filesystem4": {
          "device": "${var.DB2Node01_linux_filesystems_filesystem4_device}",
          "force": "${var.DB2Node01_linux_filesystems_filesystem4_force}",
          "fstype": "${var.DB2Node01_linux_filesystems_filesystem4_fstype}",
          "group": "${var.DB2Node01_linux_filesystems_filesystem4_group}",
          "label": "${var.DB2Node01_linux_filesystems_filesystem4_label}",
          "mountpoint": "${var.DB2Node01_linux_filesystems_filesystem4_mountpoint}",
          "options": "${var.DB2Node01_linux_filesystems_filesystem4_options}",
          "perms": "${var.DB2Node01_linux_filesystems_filesystem4_perms}",
          "size": "${var.DB2Node01_linux_filesystems_filesystem4_size}",
          "user": "${var.DB2Node01_linux_filesystems_filesystem4_user}"
        }
      }
    }
  }
}
EOT
}


#########################################################
##### Resource : VaultItem
#########################################################

resource "camc_vaultitem" "VaultItem" {
  camc_endpoint = "${var.ibm_pm_service}/v1/vault_item/chef"
  access_token = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace = true
  data = <<EOT
{
  "vault_content": {
    "item": "secrets",
    "values": {},
    "vault": "${random_id.stack_id.hex}"
  }
}
EOT
}

output "DB2Node01_ip" {
  value = "VM IP Address : ${vsphere_virtual_machine.DB2Node01.network_interface.0.ipv4_address}"
}

output "DB2Node01_name" {
  value = "${var.DB2Node01-name}"
}

output "DB2Node01_roles" {
  value = "db2_create_db,db2_v105_install,linux_cloud_fs"
}

output "stack_id" {
  value = "${random_id.stack_id.hex}"
}

