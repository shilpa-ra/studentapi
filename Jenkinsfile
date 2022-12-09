pipeline {
agent { label 'git'}
     triggers {
      pollSCM('* * * * *')
     }
     stages {
        stage('write a code') {
         steps {
           git url: "https://github.com/shilpa-ra/studentapi.git",
             branch: "main"
           }
           
    }
     

       stage('build image') {
        steps {
            sh 'docker image pull shilpara/studentapi:1.1'
            sh 'docker container run -d -p 8089:80 shilpara/studentapi:1.1' 
                    }
         }
        
     }
}
