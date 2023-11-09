def dockerImageNginx

pipeline {
    
    stage('Building image NGINX') {
        steps{
          script {
            dockerImageNginx = docker build -f Dockerfile.gcp -t aa-nginx:latest .  
          }
        }
      }

    
    stage('Push Image to registry') {
      steps{
        script{
          withDockerRegistry(credentialsId: 'gcr:sep-poc-aa-hackathon-prj', url: 'http://gcr.io/sep-poc-aa-hackathon-prj/aa-gcr/') {
            dockerImageNginx.push()
          }
        }
      }
}
}