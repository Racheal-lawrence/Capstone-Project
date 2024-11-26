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
                sh './build.sh' // Replace with your build command
            }
        }

        stage('Test') {
            steps {
                echo 'Running unit and integration tests...'
                sh './run-tests.sh' // Run your test command here
            }
        }

        stage('Deploy to Staging') {
            steps {
                echo 'Deploying to staging environment...'
                sh './deploy-staging.sh' // Replace with your staging deploy script
            }
        }

        stage('Deploy to Production') {
            when {
                branch 'main' // Deploy only from the main branch
            }
            steps {
                echo 'Deploying to production environment...'
                sh './deploy-production.sh' // Replace with your production deploy script
            }
        }
    }
}
