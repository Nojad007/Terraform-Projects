

# LAUNCH TEMPLATE
# - Name the lauch template
# - Dont touch AMI, instance type or key pair


# TARGET GROUPS

###### SECURITY GROUPS ##########
# Adding security group for a Load Balancer which must use Http(port80)for ingress traffic
# EC2 ingress traffic should be for SSH 
# All security groups should have egerss traffic for all ports (0.0.0.0/0 or "-1")



# CREATING A LOAD BALANCER
# - Choose the Application LB
# - Name LB
# - Internet Facing
# - IP Address Type
# - Skip Network settings
# - Make sure "Dont include Launch Template"
# - IPV4
# - Choose VPC
# - Choose a PUBLIC subnet


######### Launch Template ########
# - Uses the same SG as the EC2 instance 
# - Uses the same setup from the EC2 instances for the ASG to use

######## Adding an ASG (Auto-Scaling Group) ##########




