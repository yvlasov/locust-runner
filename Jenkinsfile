pipeline {
   agent {
    label 'linux-agents'
   }
   stages {
      stage('Build') {
         steps {
            git 'https://github.com/yvlasov/locust-runner.git'
            script {
                docker.image("locustio/locust").inside {
                    bzt "locustfile.py"
                    sh "ls -al; pwd"
                }
            }
         }
      }
   }
}
