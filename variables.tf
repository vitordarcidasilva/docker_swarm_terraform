variable "credentials" {
  description = "File that contains your service account private key in JSON format"
  type        = string
  default     = "credentials.json"  # Substitua pelo valor padrão desejado
}

variable "project" {
  description = "GCP project where resources will be created"
  type        = string
  default     = ""  # Substitua pelo valor padrão desejado
}

variable "region" {
  description = "location for your resources to be created in"
  type = string
  default     = "us-central1"  # Substitua pelo valor padrão desejado
}

variable "region_b" {
  description = "location for your resources to be created in"
  type = string
  default     = "northamerica-northeast2"  # Substitua pelo valor padrão desejado
}

variable "zone" {
  description = "Availability zone"
  type        = string
  default     = "us-central1-a"  # Substitua pelo valor padrão desejado
}

variable "zone_b" {
  description = "Availability zone"
  type        = string
  default     = "northamerica-northeast2-c"  # Substitua pelo valor padrão desejado
}

variable "ssh_user" {
  description = "GCE SSH username"
  type        = string
  default     = "vitor.silva"  # Substitua pelo usuário SSH padrão desejado
}

variable "ssh_pub_key_file" {
  description = "SSH Public key path"
  type        = string
  default     = "C:/Users/vitor.silva/.ssh/id_rsa.pub"
}

variable "image_name" {
  description = "Image to be used"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "swarm_managers" {
  description = "Number of Swarm managers"
  default     = 2
}

variable "swarm_managers_instance_type" {
  description = "Machine type"
  default     = "e2-micro"
}

variable "swarm_workers" {
  description = "Number of Swarm workers"
  default     = 3
}

variable "swarm_workers_instance_type" {
  description = "Machine type"
  default     = "e2-micro"
}

variable "ssh_private_key_path" {
  description = "Caminho para a chave privada SSH"
  type        = string
  default     = "~/.ssh/id_rsa"  # Substitua pelo caminho correto da sua chave privada
}