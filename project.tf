resource "azuredevops_project" "azdoproject" {
    project_name = "Test Shubhendu Project"
    description = "My fiest proj using terraform"
    visibility = "private"
    work_item_template = "Agile"
    version_control = "git"
}