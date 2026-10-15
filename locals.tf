locals {
 common_labels = merge(
   {
     environment = "dev"
     managed_by  = "terraform"
     project     = "learning"
   },
   var.project_labels
 )
}