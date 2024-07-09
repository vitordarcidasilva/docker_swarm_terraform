resource "google_compute_instance" "workers" {
  count        = var.swarm_workers
  name         = "worker-${count.index + 1}"
  machine_type = var.swarm_workers_instance_type
  zone         = var.zone

  depends_on = [google_compute_instance.managers]

  boot_disk {
    initialize_params {
      image = var.image_name
      size  = 100
    }
  }

  metadata = {
    sshKeys = "${var.ssh_user}:${file(var.ssh_pub_key_file)}"
  }

  network_interface {
    network = google_compute_network.swarm.name

    access_config {
      // Isso garante que um IP externo seja atribuído
    }
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = var.ssh_user
      private_key = file(var.ssh_private_key_path)
      host     = self.network_interface[0].access_config[0].nat_ip
    }

    inline = [
        "sudo apt-get update",
        "sudo apt install -y docker.io"

    ]
  }
}
