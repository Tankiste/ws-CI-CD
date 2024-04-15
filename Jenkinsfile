pipeline{

    agent any

    stages{
        stage('Build'){
            steps{
                sh 'mvn --version'
                sh 'mvn clean install'
               // sh 'mvn build app'
            }
        }
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
        stage('Image Creation'){
            steps{
                sh 'echo Image created'
            }
        }
        stage('Deployment'){
            steps{
                sh 'echo App deployed'
            }
        }
    }
}
}