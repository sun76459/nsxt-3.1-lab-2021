variable "pg_conn_str" {
    default = "postgres://postgres:VMware1!@localhost/terraform_backend?sslmode=disable"
}
variable "nsx_manager" {
    default = "192.168.110.201"
}
variable "nsx_username" {
    default = "admin"
}
variable "nsx_password" {
    default = "VMware1!VMware1!"
}
