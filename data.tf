data "template_file" "json_template_awsecs" {
  template = "${file("${path.module}/dashboard_templates/aws_ecs_template.json")}"
  vars = {
    datasource = "$${datasource}" # this is the default value
    TERRAFORM_ENVIRONMENT = local.environment
    TERRAFORM_ENVIRONMENT_LC = lower(local.environment)
  }
}

data "template_file" "json_template_nginx" {
  template = "${file("${path.module}/dashboard_templates/nginx_ingress_controller_template.json")}"
  vars = {
    datasource = "$${datasource}" # this is the default value
    TERRAFORM_ENVIRONMENT = local.environment
    TERRAFORM_ENVIRONMENT_LC = lower(local.environment)
    DS_PROMETHEUS = "Prometheus_Production"
  }
}

data "template_file" "json_template_linux" {
  template = "${file("${path.module}/dashboard_templates/node_exporter_template.json")}"
  vars = {
    datasource = "$${datasource}" # this is the default value
    TERRAFORM_ENVIRONMENT = local.environment
    TERRAFORM_ENVIRONMENT_LC = lower(local.environment)
    DS_PROMETHEUS = "Prometheus_Production"
  }
}
