init:
	mkdir -p ./terraform.d/plugins/linux_amd64
	wget -O ./terraform.d/plugins/linux_amd64/terraform-provider-esxi "https://github.com/josenk/terraform-provider-esxi/releases/download/v1.2.1/terraform-provider-esxi_v1.2.1"
	chmod +x ./terraform.d/plugins/linux_amd64/terraform-provider-esxi

