pipeline {
    agent any 

    stages {
        stage('Checkout Code') {
            steps {
                echo '=== GitHub se code pull ho raha hai ==='
                checkout scm
            }
        }
        stage('SonarQube Static Test') {
            steps {
                echo '=== Code quality analyze ho rahi hai ==='
            }
        }
        stage('Build Image') {
            steps {
                echo '=== Docker image build ho rahi hai ==='
                // sh 'docker build -t devops-app:${BUILD_NUMBER} .'
            }
        }
        stage('Deploy Application') {
            steps {
                echo '=== Application server par deploy ho gayi hai ==='
            }
        }
    }
}
pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building project...'
            }
        }
    }
    post {
        failure {
            mail to: 'anmolvr4.5@gmail.com',
                 subject: "Build Failed: ${env.JOB_NAME}",
                 body: "The build failed. Check the logs at: ${env.BUILD_URL}"
        }
        success {
            mail to: 'anmolvr4.5@gmail.com',
                 subject: "Build Success: ${env.JOB_NAME}",
                 body: "The build was successful. Check the logs at: ${env.BUILD_URL}"
        }
    }
}
