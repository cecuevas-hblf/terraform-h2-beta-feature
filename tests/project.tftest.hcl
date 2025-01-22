mock_provider "google-beta" {}
run "create_project" {
  command = plan

  variables {
    auto_create_subnetworks                   = false
    routing_mode                              = "global"
    project_id                                = "abcade234"
    delete_default_routes_on_create           = false
    mtu                                       = 1460
    enable_ula_internal_ipv6                  = true
    internal_ipv6_range                       = "fd20::/20"
    network_firewall_policy_enforcement_order = false
    network_profile                           = false
}
