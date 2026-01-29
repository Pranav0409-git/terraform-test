pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Code already checked out by Jenkins'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('tf-test') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('tf-test') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}

