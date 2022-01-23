resource "null_resource" "app-deploy" {
  provisioner "remote_exec" {
    connection {
      host     = aws_instance.ec2.public_ip
      user     = local.SSH_user
      password = local.SSH_pass
    }

    inline = [
      "ansible-pull -U https://github.com/rayuduroyal/ansible.git roboshop-pull.yaml -e ENV=ENV -e COMPONENT=${var.COMPONENT} -e APP_VERSION=${var.APP_VERSION} -e NEXUS_USER=${local.NEXUS_USER} -e NEXUS_PASS=${local.NEXUS_PASS}"
    ]
  }
}
