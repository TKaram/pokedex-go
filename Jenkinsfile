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
                sh 'docker build -t pokimage .';
                sh 'docker run -p 5555:5555 pokimage';
                sh 'docker exec `docker ps -q` npm test'
            }
        }
        stage('deploy port 5555') {
            steps {
                sh 'docker exec `docker ps -q` npm start'
            }
        }
        
    }
    post {
        always {
            cleanWs()
        }
    }
}
