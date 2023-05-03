name  = "xxxxxxxxxxxxxxxxx-game"

ecs_cluster_arn =   "arn:aws:ecs:ap-southeast-1:xxxxxxxxxxxxxxxxx:cluster/xxxxxxxxxxxxxxxxx"

vpc_id  =   "vpc-xxxxxxxxxxxxxxxxx"

container_definition_json = "[xxxxxxxxxxxxxxxxx]"

ecs_load_balancers  =   [{container_name = "container-name" , container_port = "3000", target_group_arn = "arn:aws:elasticloadbalancing:ap-southeast-1:xxxxxxxxxxxxxxxxx:targetgroup/"}]

network_mode    =   "awsvpc"

subnet_ids  =   ["subnet-xxxxxxxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxxxxx"]

assign_public_ip    =   true

task_cpu    =   1024

task_memory =   2048

launch_type =   "FARGATE"

container_port  =   3000

alb_security_group  =   "sg-xxxxxxxxxxxxxxxxx"

use_alb_security_group   = true

redeploy_on_apply = true

force_new_deployment    =   true

ignore_changes_task_definition  =   false