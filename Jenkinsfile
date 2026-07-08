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

}
