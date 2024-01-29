#creating_own_dashboard_and_monitor
terraform {
 required_providers {
   datadog = {
     source = "DataDog/datadog"
   }
 }
}

provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
  api_url = var.datadog_api_url
}


resource "datadog_dashboard" "test_dashboard" {
 title       = "My dashboard"
 layout_type = "ordered"
 description  = "A dashboard with important metrics"


 widget {
   group_definition {
     title            = "Metric from OpenTelemetry"
     layout_type      = "ordered"
     background_color = "yellow"

     widget {
       query_value_definition {
         live_span = "1m"
         title     = "Count files"
         autoscale = true
         request {
           q = "min:files_count{host:c59c856ed442}.as_count()"
         }
       }
     }
     widget {
       toplist_definition {
         title     = "dice.rolls"
         live_span = "1m"
         request {
           style {
             palette = "dog_classic"
           }
           q = "avg:dice.rolls{host:c59c856ed442} by {roll.value}.as_count()"
         }
       }
     }

   }
 }
 widget {
   group_definition {
     title            = "Host state"
     layout_type      = "ordered"
     background_color = "orange"
    widget {
    timeseries_definition {
      request {
        q            = "avg:system.cpu.system{host:kristina-VirtualBox}"
        display_type = "line"
        style {
          palette    = "warm"
          line_type  = "dashed"
          line_width = "thin"
        }
        
      }
     
   }
 }
}
 }
}

resource "datadog_monitor" "foo" {
  name               = "Monitor for disk space"
  type               = "metric alert"
  message            = "Free space on /dev/sda3 is less than 3 GB. Monitor triggered."


  query = "min(last_1h):min:system.disk.free{host:kristina-VirtualBox, device:/dev/sda3} by {host} < 3221225472"

  monitor_thresholds {
    warning  = 4294967296
    critical = 3221225472
  }
}
