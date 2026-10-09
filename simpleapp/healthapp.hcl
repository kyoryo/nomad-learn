job "healthapp" {
  datacenters = ["dc1"]

  type = "service"

  group "api" {
    count = 2

    network {
      port "http" {
        to = 8080
      }
    }

    task "api" {
      driver = "docker"

      config {
        image = "536697254907.dkr.ecr.ap-southeast-1.amazonaws.com/healthapp:latest"

        ports = ["http"]
      }

      resources {
        cpu    = 200
        memory = 256
      }
    }
  }
}
# aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 536697254907.dkr.ecr.ap-southeast-1.amazonaws.com/healthapp
