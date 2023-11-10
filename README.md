# Dependencies
* [Terraform](https://developer.hashicorp.com/terraform/install)

# How to Run

```
$ export TFVAR_access_key=<AWS Access Key>
$ export TFVAR_secret_key=<AWS Secret Key>

$ cd resources/ac-00000
$ terraform init
$ terraform apply

$ cd resources/ac-11111
$ terraform init
$ terraform apply

```