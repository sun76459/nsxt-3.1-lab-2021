pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage("init") {
            when {
                expression {
                    BRANCH_NAME == "main"
                }
            }
            steps {
                bat 'set'
                bat 'dir'
                bat 'cd terraform && terraform init'
            }
        }

        stage("plan") {
            when {
                expression {
                    BRANCH_NAME == "main"
                }
            }
            steps {
                bat 'cd terraform && terraform plan'
            }
        }

        stage("apply") {
            when {
                expression {
                    BRANCH_NAME == "main"
                }
            }
            steps {
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }

        stage("show") {
            when {
                expression {
                    BRANCH_NAME == "main"
                }
            }
            steps {
                bat 'cd terraform && terraform show'
            }
        }
    }
}