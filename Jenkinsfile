pipeline{
    agent any
    tools {
  terraform 'Terraform'
}
environment {
        AWS_CREDENTIALS = credentials('aws_credentials')
    }
stages{
    stage('Git Checkout'){
        steps{
            git branch: 'main', url: 'https://github.com/Maggimaha/Me'
        }
        }
        stage('Terraform Init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
