node {
     stage('Clone') {
         checkout scm
     }
     stage('Build') {
         app = docker.build("gafield8785/hello-jenkins")
     }
     stage('Push') {
         docker.withRegistry('https://registry.hub.docker.com', 'docker_hub') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
     }
 }
