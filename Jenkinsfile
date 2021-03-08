pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage("init") {
            when {
                branch 'main'
            }
            steps {
                bat 'set'
                bat 'dir'
                bat 'cd terraform && terraform init'
            }
        }

        stage("plan") {
            when {
                branch 'main'
            }
            steps {
                bat 'cd terraform && terraform plan'
            }
        }

        stage("apply") {
            when {
                branch 'main'
            }
            steps {
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }

        stage("show") {
            when {
                branch 'main'
            }
            steps {
                bat 'cd terraform && terraform show'
            }
        }
    }
}
