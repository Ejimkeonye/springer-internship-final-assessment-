job "hello" {
  datacenters = ["dc1"]
  type        = "batch"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "raw_exec"

      config {
        command = "C:/Python314/python.exe"
        args    = ["C:/Users/USER/Desktop/Springer internship/springer-internship-final-assessment-/hello.py"]
      }

      resources {
        cpu    = 100
        memory = 64
      }
    }
  }
}
