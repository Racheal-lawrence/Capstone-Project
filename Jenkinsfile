pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                echo 'Checking out code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                sh './build.sh' 
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit and integration tests...'
                sh './run-tests.sh' 
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to staging environment...'
                sh './deploy-staging.sh' 
            }
        }

        stage('Deploy to Production') {
            when {
                branch 'main' 
            }
            steps {
                echo 'Deploying to production environment...'
                sh './deploy-production.sh' 
            }
        }
    }
}
