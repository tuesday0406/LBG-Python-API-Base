pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'lbg/1.0'
        PORT = "5500"
    }
    stages {
        stage('Cleanup') {
            steps {
                sh '''
                sh setup.sh
                '''
           }
        }
        stage ('Build') {
            steps{
                sh '''
                sh build.sh
                '''
                

            }
        }
        stage('Deploy') {
            steps {
                sh '''
                sh deploy.sh"
                '''
                
            }
    }
}
}
    



