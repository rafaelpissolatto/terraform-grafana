variable "grafana_auth" {
    sensitive = true
    description = "Grafana auth"
    default = "xxxx" # replace with your grafana auth
}

variable "grafana_url" {
    description = "Grafana URL"
    default = "http://localhost:3000/" # replace with your grafana url
}