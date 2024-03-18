resource "tfe_workspace" "test" {
  name         = "UAT"
  tag_names    = ["UAT", "app"]
}
resource "tfe_workspace" "DEV" {
  name         = "DEV"
  tag_names    = ["DEV", "app"]
}
resource "tfe_workspace" "PROD" {
  name         = "PROD"
  tag_names    = ["PROD", "app"]
}

