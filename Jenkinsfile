pipeline{

    agent any

    tools{
        maven "maven-3.9.6"
    }

    stages{
        stage('Build'){
            steps{
                sh 'mvn --version'
                sh 'mvn clean install'
               // sh 'mvn clean package'
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
