module "web" {
  source = "./modules/terraform-vsphere-hashiconf2022-fakeservice-demo"
  demo_vms = {
    name             = "web"
    quantity         = 0
    service_tag      = "web"
    service_port     = 9090
    upstream_service = "http://app.service.default.ukdcb.natiliksc.com:9091"
    service_message  = "Web Server!"
  }
}

module "app" {
  source = "./modules/terraform-vsphere-hashiconf2022-fakeservice-demo"
  demo_vms = {
    name             = "app"
    quantity         = 0
    service_tag      = "app"
    service_port     = 9091
    upstream_service = ""
    service_message  = "App Server!"
  }
}

# resource "purestorage_volume" "testvol_tf_res" {
#   provider = flash
#   name = "ukdcbsc-vpshere"
#   size = "1099511627776"
# }

# resource "purestorage_volume" "test" {
#   provider = flash
#   name = "test"
#   size = "1048000000"
# }


# resource "purestorage_hostgroup" "testhgrouptf" {
#   provider = flash
#   name     = "ukdcbsc-vsphere"
#   hosts    = ["ukdcbsc-vsphere01","ukdcbsc-vsphere02","ukdcbsc-vsphere03"]
#   volume {
#     vol = purestorage_volume.testvol_tf_res.name
#     lun = 254
#   }
#   volume {
#     vol = purestorage_volume.test.name
#     lun = 250
#   }
# }