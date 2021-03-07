stage('checkout') {
    node {
        cleanWs()
        checkout scm
    }
}

stage('init') {
    node {
        ansiColor('xterm') {
            bat 'whoami'
            bat 'set'
            bat 'dir'
            bat 'terraform init'
        }
    }
}

stage('plan') {
    node {
        ansiColor('xterm') {
            bat 'terraform plan'
            }
        }
    }
}

if ((env.BRANCH_NAME) == 'main') {
    stage('apply') {
        node {
        ansiColor('xterm') {
                bat 'terraform apply -auto-approve'
            }
        }
    }

    stage('show') {
        node {
        ansiColor('xterm') {
                bat 'terraform show'
            }
        }
    }
}
