provider "esxi" {
  esxi_hostname      = "esxi"
  esxi_hostport      = "22"
  esxi_username      = "root"
  esxi_password      = "PASSWORD"
}

resource "esxi_guest" "vmtest" {
  guest_name         = "vmtest"
  guestos            = "Ubuntu Linux (64-bit)"
  disk_store         = "ESXI"
  boot_disk_type     = "thin"
  boot_disk_size     = "20"
  memsize            = "2048"
  numvcpus           = "1"
  virthwver          = "8"
  power              = "off"

  #
  #  Specify an existing guest to clone, an ovf source, or neither to build a bare-metal guest vm.
  #
  #clone_from_vm      = "Templates/centos7"
  #ovf_source        = "/local_path/centos-7.vmx"

  network_interfaces = [
    {
      virtual_network = "VM Network"
    },
  ]
}
