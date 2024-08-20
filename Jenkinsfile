pipeline {
    agent none

    stages {
        stage('git-checkout') {
            agent {
                label 'master'
            }
            steps {
                git url: 'https://github.com/azmiabadpy/website1.git', branch: 'master'
            }
        }
        
        stage('build') {
            agent {
                label 'master'
            }
            steps {
                sh 'sudo docker build --no-cache /home/ubuntu/jenkins/workspace/job1 -t azmiabad/capstone2'
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'username', passwordVariable: 'password')]) {
                    sh 'sudo docker login -u ${username} -p ${password}'
                }
                sh 'sudo docker push azmiabad/capstone2'
            }
        }
        
        stage('deploy') {
            agent {
                label 'master'
            }
            steps {
                sh 'kubectl apply -f deployment.yml'
                sh 'kubectl apply -f service.yml'
            }
        }
    }
}
