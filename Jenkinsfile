pipeline {
   agent any
   stages {
      stage('Build') {
         steps {
            git 'https://github.com/yvlasov/locust-runner.git'
            sh "ls -al"
            bzt "locustfile.yaml"
         }
      }
   }
}