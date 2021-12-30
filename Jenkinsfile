pipeline {

    agent any

    environment {
            PASS = credentials('Pass-Dockerhub')
        }

    stages {

        stage('Build') {
            steps {
                sh '''
                    echo build
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/build.sh    
                '''
            }

            post {
               success {
                   archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true   
                }
            }
        }

        stage('Test') {
            steps {
                sh '''
                    echo test
                    ./jenkins/test/mvn.sh mvn test    
                '''
            }

            post { 
                always { 
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }

        }

        stage('Push') {
            steps {
                sh '''
                    echo push
                    ./jenkins/push/push.sh 
                 '''
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    echo deploy 
                    ./jenkins/deploy/deploy.sh    
                 '''
            }
        }
    }
}
