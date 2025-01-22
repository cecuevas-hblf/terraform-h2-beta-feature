mock_provider "google-beta" {}
run "create_project" {
  command = plan

  variables {
    auto_create_subnetworks                   = false
    routing_mode                              = "global"
    project_id                                = "abcade234"
    delete_default_internet_gateway_routes    = false
    mtu                                       = 1460
    enable_ipv6_ula                           = true
    internal_ipv6_range                       = "fd20::/20"
    network_firewall_policy_enforcement_order = "check"
    network_profile                           = false
  }
}
