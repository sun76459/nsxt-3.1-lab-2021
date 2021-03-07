stage('init') {
    node {
        bat 'whoami'
        bat 'set'
        bat 'dir'
        bat 'e:\\terraform\\terraform init'
    }
}

stage('plan') {
    node {
        bat 'e:\\terraform\\terraform plan'
    }
}
