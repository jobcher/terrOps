import python_terraform
# 创建服务器
tf = python_terraform.Terraform(working_dir='/config/pve/create_vm.tf')
tf.init()
tf.apply()
