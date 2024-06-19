pipeline {
    agent any
    
    environment {
        GITHUB_TOKEN = credentials('githubcred')
    }

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['development', 'production'], description: 'Select the environment to apply or destroy infrastructure')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select the Terraform action to perform')
    }

    stages {
        stage('Fetch Code') {
            steps {
                git branch: 'main',
                    credentialsId: 'githubcred',
                    url: 'https://github.com/jrmokhtar/jenkins-terraform.git'
            }
        }
        
        stage('Check Terraform Version') {
            steps {
                sh 'terraform -v'
            }
        }
        
        stage('Terraform Initialization') {
            steps {
                sh 'terraform init'
            }
        }
        
        stage('Check Workspace') {
            steps {
                script {
                    def workspaceName = params.ENVIRONMENT
                    def result = sh(script: "terraform workspace select ${workspaceName}", returnStatus: true)
                    if (result != 0) {
                        sh "terraform workspace new ${workspaceName}"
                    }
                    sh "terraform workspace select ${workspaceName}"
                }
            }
        }
        
        stage('Terraform Operation') {
            steps {
                script {
                    def terraformAction = params.ACTION
                    switch(terraformAction) {
                        case 'apply':
                            sh "terraform apply --auto-approve"
                            break
                        case 'destroy':
                            sh "terraform destroy --auto-approve"
                            break
                        default:
                            error "Unknown Terraform action: ${terraformAction}. Please specify 'apply' or 'destroy'."
                    }
                }
            }
        }
    }
}
