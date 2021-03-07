terraform {
  backend "pg" {
    conn_str = "postgres://postgres:VMware1!@localhost/terraform_backend?sslmode=disable"
  }

  required_providers {
    nsxt = {
      source = "vmware/nsxt"
    }
  }
  required_version = ">= 0.13"
}

provider "nsxt" {
  host                  = "192.168.110.201"
  username              = "admin"
  password              = var.nsx_password
  allow_unverified_ssl  = true
  max_retries           = 10
  retry_min_delay       = 500
  retry_max_delay       = 5000
  retry_on_status_codes = [429]
}

data "nsxt_policy_transport_zone" "nsx-overlay-transportzone" {
  display_name = "nsx-overlay-transportzone"
}

/*
resource "nsxt_policy_tier1_gateway" "T1-GW" {
  nsx_id              = "T1-GW"
  display_name        = "T1-GW"
}

resource "nsxt_policy_segment" "web-seg" {
  nsx_id  = "web-seg"
  display_name  = "web-seg"
  connectivity_path = nsxt_policy_tier1_gateway.T1-GW.path
  transport_zone_path = data.nsxt_policy_transport_zone.nsx-overlay-transportzone.path

  subnet {
    cidr = "172.16.10.1/24"
  }

  subnet {
    cidr = "2001::1/64"
  }
}

resource "nsxt_policy_segment" "app-seg" {
  nsx_id  = "app-seg"
  display_name  = "app-seg"
  connectivity_path = nsxt_policy_tier1_gateway.T1-GW.path
  transport_zone_path = data.nsxt_policy_transport_zone.nsx-overlay-transportzone.path

  subnet {
    cidr = "172.16.20.1/24"
  }

  subnet {
    cidr = "2002::1/64"
  }
}

resource "nsxt_policy_segment" "db-seg" {
  nsx_id  = "db-seg"
  display_name  = "db-seg"
  connectivity_path = nsxt_policy_tier1_gateway.T1-GW.path
  transport_zone_path = data.nsxt_policy_transport_zone.nsx-overlay-transportzone.path

  subnet {
    cidr = "172.16.30.1/24"
  }

  subnet {
    cidr = "2003::1/64"
  }
}
*/

resource "nsxt_policy_tier1_gateway" "test1" {
  nsx_id          = "test1"
  display_name    = "test1"
}


resource "nsxt_policy_tier1_gateway" "test2" {
  nsx_id          = "test2"
  display_name    = "test2"
}

resource "nsxt_policy_tier1_gateway" "test3" {
  nsx_id          = "test3"
  display_name    = "test3"
}
