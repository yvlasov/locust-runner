pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            git 'https://github.com/yvlasov/locust-runner.git'
            ##app = docker.build(".")
            app = docker.image("locustio/locust")
            app.inside {
                sh 'echo "Tests passed"'
                sh "pwd"
                sh "ls -al"
                bzt "locustfile.yaml"
            }
         }
      }
   }
}
