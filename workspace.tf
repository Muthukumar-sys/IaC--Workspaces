resource "tfe_workspace" "test" {
  name         = "UAT"
  tag_names    = ["uat", "app"]
}
resource "tfe_workspace" "DEV" {
  name         = "DEV"
  tag_names    = ["dev", "app"]
}
resource "tfe_workspace" "PROD" {
  name         = "PROD"
  tag_names    = ["prod", "app"]
}

