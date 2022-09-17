resource "azuredevops_project" "azdoproject" {
    for_each = toset(var.project_names)
    name = each.value
    description = "Managed via terraform"
    visibility = "private"
    work_item_template = "Agile"
    version_control = "git"
}

data "azuredevops_project" "azdoproject" {
    for_each = toset(var.project_names)
    name = each.value
}

output "project_id" {
  value = data.azuredevops_project.azdoproject[each.value].project_id
}