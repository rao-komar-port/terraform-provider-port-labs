resource "port-labs_action" "restart_microservice" {
  title      = "Restart microservice"
  icon       = "Terraform"
  identifier = "restart-micrservice"
  blueprint  = port-labs_blueprint.microservice.identifier
  trigger    = "DAY-2"
  webhook_method {
    type = "WEBHOOK"
    url  = "https://app.getport.io"
  }
  user_properties {
    string_prop = {
      "webhook_url" = {
        title       = "Webhook URL"
        description = "Webhook URL to send the request to"
        format      = "url"
        default     = "https://example.com"
        pattern     = "^https://.*"
      }
    }
  }
}
