stages{
stage('Build image') {
  app = docker.build("sep-poc-aa-hackathon-prj/aa-nginx")
}
stage('Push image') {
  docker.withRegistry('https://us.gcr.io', 'gcr:450fc795-b5c9-4103-9994-8fb15a0ce082') {
    app.push("${env.BUILD_NUMBER}")
    app.push("latest")
  }
}
}