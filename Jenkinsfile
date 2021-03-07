if ((env.BRANCH_NAME) == 'main') {
    stage('checkout') {
        node {
            cleanWs()
            checkout scm
        }
    }

    stage('init') {
        node {
            ansiColor('xterm') {
                bat 'set'
                bat 'dir'
                bat 'cd lab && terraform init'
            }
        }
    }

    stage('plan') {
        node {
            ansiColor('xterm') {
                bat 'cd lab && terraform plan'
            }
        }
    }

    stage('apply') {
        node {
            ansiColor('xterm') {
                bat 'cd lab && terraform apply -auto-approve'
            }
        }
    }

    stage('show') {
        node {
            ansiColor('xterm') {
                bat 'cd lab && terraform show'
            }
        }
    }
}
