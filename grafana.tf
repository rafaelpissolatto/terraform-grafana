# Create folders
resource "grafana_folder" "aws_folder" {
  title = "AWS_FOLDER"
}

resource "grafana_folder" "nginx_folder" {
  title = "NGINX_FOLDER"
}

resource "grafana_folder" "linux_folder" {
  title = "LINUX_FOLDER"
}


# Create dashboard using templates
resource "grafana_dashboard" "dashboard_aws_ecs" {
  folder      = grafana_folder.aws_folder.id
  config_json = data.template_file.json_template_awsecs.rendered
}

resource "grafana_dashboard" "dashboard_nginx" {
  folder      = grafana_folder.nginx_folder.id
  config_json = data.template_file.json_template_nginx.rendered
}

resource "grafana_dashboard" "dashboard_linux" {
  folder      = grafana_folder.linux_folder.id
  config_json = data.template_file.json_template_linux.rendered
}