#data "aws_availability_zones" "available" {
#  state = "available"
#}

#output "working axs"{
#    value = tolist(data.aws_availability_zones.available.names)
#}