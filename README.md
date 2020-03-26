# terraform-concourse-resource

A [Concourse](http://concourse.ci/) resource that allows jobs to modify IaaS resources via [Terraform](https://www.terraform.io/). This Docker containber inherits [ljfranklin/terraform-resource](https://github.com/ljfranklin/terraform-resource/blob/master/docker-prod/Dockerfile) and adds some useful tooling on top like:

* aws-cli
* jq

Have a look at the Dockerfile for a detailed list.
