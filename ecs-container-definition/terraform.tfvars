container_name               = "gn-game-api"
container_image              = "483957310387.dkr.ecr.ap-southeast-1.amazonaws.com/gn-game-api:drone-staging-latest"
container_memory             = 1024
container_cpu                = 512
essential                    = true
readonly_root_filesystem     = false

port_mappings = [
  {
    containerPort = 3000
    hostPort      = 3000
    protocol      = "tcp"
  }
]

log_configuration = {
  logDriver = "awslogs"
  options = {
    "awslogs-region"  = "ap-southeast-1"
    "awslogs-group" = "/fargate/service/xxxxxxxxxxxxxxxxx-log-group"
    "awslogs-create-group"  = "true"
    "awslogs-stream-prefix" = "streaming"
  }
  secretOptions = null
}

environment = [
  {
    name  = "LOGGING_LEVEL"
    value = "debug"
  },
  {
    name  = "NODE_ENV"
    value = "development"
  }
]