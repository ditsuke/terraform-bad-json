# Broken JSON in Terraform

This repo is a minimum reproducible example of invalid JSON strings introduced through the
use of templates in terraform. It does so by rendering a templatized JSON with a variable
and then trying to decode it to a terraform native object.

If the JSON has an unsanitized value, terraform is unable to decode it.

To test, run `terraform init` to initialize terraform state and providers, followed by a
`terraform plan --var 'VAL=good'` to see it work, then a `terraform plan --var 'VAL="bad'` to
see it fail because of an unsanitized value in the JSON.
