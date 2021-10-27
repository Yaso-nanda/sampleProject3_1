pipeline {
     agent any
     
     stages {
         stage('Build') {
            steps {
                sh 'mvn install -DskipTests'
            }
         }
         stage('Deploy'){
             steps {
                sh 'sudo systemctl start docker'
                sh 'sudo docker-compose up -d mysqldb3'
                sh 'sudo docker-compose up -d'
             }
         }
     }
}
