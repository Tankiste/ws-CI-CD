pipeline{

    agent any

    tools{
        maven "maven-3.9.6"
    }

    stages{
        stage('Code Quality'){
            steps{
                sh 'echo sonarqube Code Quality check done'
            }
        }
        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('Automated Test'){
            steps{
                sh 'echo Selenium Automated Tests done'
            }
        }
        stage('Build'){
            steps{
                sh 'mvn --version'
                sh 'mvn clean package'
               // sh 'mvn clean package'
            }
        }

        // stage('Initialize'){
        //     steps{
        //         def dockerHome = tool 'myDocker'
        //         env.PATH = "${dockerHome}/bin:${env.PATH}"
        //     }
        // }

        stage('Image Creation'){
            steps{
                sh 'docker build -t tankiste/ws-cicd:1.${BUILD_NUMBER} . '
                sh 'docker build -t tankiste/ws-cicd:latest . '
            }
        }
        stage('Deployment on DockerHub'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'DOCKER_ID', passwordVariable: 'DOCKER_PWD', usernameVariable: 'DOCKER_USERNAME')]){
                    sh 'docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PWD}'
                }
                sh 'docker push tankiste/ws-cicd:1.${BUILD_NUMBER}'
                sh 'docker push tankiste/ws-cicd:latest'
            }
        }
        stage('Email Notification'){
            steps{
                sh 'echo Email send'
            }
        }
    }
}
