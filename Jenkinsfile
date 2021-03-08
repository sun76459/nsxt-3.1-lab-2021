pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage("init") {
            steps {
                bat 'set'
                bat 'dir'
                bat 'cd terraform && terraform init'
            }
        }

        stage("plan") {
            steps {
                bat 'cd terraform && terraform plan'
            }
        }

        stage("apply") {
            steps {
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }

        stage("show") {
            steps {
                bat 'cd terraform && terraform show'
            }
        }
    }
}