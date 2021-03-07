stage('checkout') {
    node {
        cleanWs()
        checkout scm
    }
}

stage('init') {
    node {
        bat 'whoami'
        bat 'set'
        bat 'dir'
        bat 'terraform init'
    }
}

stage('plan') {
    node {
        bat 'terraform plan'
    }
}

if (env.BRANCH_NAME) == 'main') {
    stage('apply') {
        node {
            bat 'terraform apply -auto-approve'
        }
    }

    stage('show') {
        node {
            bat 'terraform show'
        }
    }
}
