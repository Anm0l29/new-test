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


