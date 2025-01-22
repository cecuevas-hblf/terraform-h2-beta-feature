mock_provider "google-beta" {}
run "create_network" {
  command = plan

  variables {
    network_name                              = "test"
    auto_create_subnetworks                   = false
    routing_mode                              = "GLOBAL"
    project_id                                = "abcade234"
    delete_default_internet_gateway_routes    = false
    mtu                                       = 1460
    enable_ipv6_ula                           = true
    internal_ipv6_range                       = "fd20::/20"
    network_firewall_policy_enforcement_order = "BEFORE_CLASSIC_FIREWALL"
    network_profile                           = false
    shared_vpc_host                           = false
  }
}
