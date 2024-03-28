[text](https://multipass.run/docs/create-an-instance)

multipass launch --cpus 4 --disk 20G --memory 4G -n primary --cloud-init cloud-config.yaml
multipass launch -n primary --cloud-init cloud-config.yaml
multipass info primary

multipass delete --purge --all
cat /var/jenkins_home/secrets/initialAdminPassword

hetzner
usuário default: root