init:
	mkdir -p ./terraform.d/plugins/linux_amd64
	wget -O ./terraform.d/plugins/linux_amd64/terraform-provider-esxi "https://github.com/josenk/terraform-provider-esxi/releases/download/1.5.0/terraform-provider-esxi_v1.5.0"
	chmod +x ./terraform.d/plugins/linux_amd64/terraform-provider-esxi

