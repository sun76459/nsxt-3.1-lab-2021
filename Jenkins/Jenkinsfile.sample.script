if ((env.BRANCH_NAME) == 'main') {
    stage('checkout') {
        node {
            cleanWs()
            checkout scm
        }
    }

    ansiColor('xterm') {
        stage('init') {
            node {
                bat 'set'
                bat 'dir'
                bat 'cd terraform && terraform init'
            }
        }

        stage('plan') {
            node {
                bat 'cd terraform && terraform plan'
            }
        }

        stage('apply') {
            node {
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }

        stage('show') {
            node {
                bat 'cd terraform && terraform show'
            }
        }
    }
}
