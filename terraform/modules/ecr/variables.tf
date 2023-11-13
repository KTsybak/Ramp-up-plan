variable "myname" {
  type = string
}


variable "image_tag_mutability" {
  type = string
  default = "MUTABLE"
}

variable "scan_on_push" {
  type = bool
  default = true
}

variable "expiration_after_days" {
  type = number
  default = 0
}