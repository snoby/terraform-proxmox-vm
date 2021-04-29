variable "name" {
  type = string
}

variable "cores" {
  type    = number
  default = 1
}

variable "memory_gb" {
  type    = number
  default = 2
}

variable "disks" {
  type = list(object({
    type             = string
    size             = string
    storage_poolname = string
    iothread         = number
  }))
  default = [
    {
      type             = "ssd"
      size             = "8G"
      storage_poolname = "local-lvm"
      iothread         = 1
    }
  ]
}

variable "domain_name" {
  type    = string
  default = "home"
}

variable "target_node" {
  type    = string
  default = "lenuc"
}

variable "vm_count" {
  type = number
}

variable "ssh_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "image" {
  type    = string
  default = "centos"
}

variable "agent" {
  type    = number
  default = 1
}


variable "pve_user" {
  default = "root"
}

variable "pve_password" {

}

variable "pve_host" {

}
variable "username" {

}
