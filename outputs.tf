output "swarm_managers_ips" {
  value = "${google_compute_instance.managers.*.network_interface.0.access_config.0.nat_ip}"
}

output "swarm_workers_ips" {
  value = "${google_compute_instance.workers.*.network_interface.0.access_config.0.nat_ip}"
}