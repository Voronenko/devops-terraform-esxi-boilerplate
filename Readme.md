1. Get VMware OVF Tool for Linux 64-bit installed
2. Get esxi plugin for terraform installed from https://github.com/josenk/terraform-provider-esxi
3. Configure main.tf

than, as usually

terraform init
terraform plan
terraform apply
terraform destroy

## Example: preparing ubuntu server image for cloning.

1. Install operation system
2. Install cloud-init (optional)
3. For development operations (not recommended) - you can
deactivate automatic cron for updates

```sh

#!/bin/bash

systemctl stop apt-daily.service
systemctl kill --kill-who=all apt-daily.service

# wait until `apt-get updated` has been killed
while ! (systemctl list-units --all apt-daily.service | fgrep -q dead)
do
  sleep 1;
done

systemctl mask apt-daily.service apt-daily-upgrade.service

```
4. Install open-vm-tools
5. Reset cloud-init before suspending state
```sh
sudo cloud-init clean

```

## Exporting VM as ovf

```sh

ovftool -dm=thin "vi://esxi/templateU18S" .
Enter login information for source vi://192.168.2.2/
Username: root
Password: ***********
Opening VI source: vi://root@192.168.2.2:443/templateU18S
Opening OVF target: .
Writing OVF package: ./templateU18S/templateU18S.ovf
Transfer Completed
Completed successfully


```
