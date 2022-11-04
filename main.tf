data "template_file" "some_json" {
    template = file("sample.json.tpl")
    vars = {
        val = var.VAL
    }
}

locals {
    decoded = jsondecode(data.template_file.some_json.rendered)
}