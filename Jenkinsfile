pipeline {
    agent any
    stages {
        stage('Checkout: Code') {
            steps {
                checkout scm
            }
        }
        stage('run the unit tests within the image using') {
            steps {
                sh """docker build -t pokimage .""";
                sh """docker run -p 5555 pokimage npm test"""
            }
        }
        
    }
    post {
        always {
            cleanWs()
        }
    }
}