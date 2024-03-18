resource "tfe_workspace" "test" {
  name         = "UAT"
  organization = opswork
  tag_names    = ["UAT", "app"]
}
resource "tfe_workspace" "DEV" {
  name         = "DEV"
  organization = opswork
  tag_names    = ["DEV", "app"]
}
resource "tfe_workspace" "PROD" {
  name         = "PROD"
  organization = opswork
  tag_names    = ["PROD", "app"]
}

