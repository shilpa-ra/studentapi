pipeline {
agent { label 'git'}
     triggers {
      pollSCM('* * * * *')
     }
     stages {
        stage('write a code') {
         steps {
           git url: "https://github.com/DevProjectsForDevOps/StudentCoursesRestAPI.git",
             branch: "master"
           }
           
    }
     

       stage('build image') {
        steps {
        
            sh 'docker image pull shilpara/studentapi:1.1'
            sh 'docker container run -d -p 8083:80 shilpara/studentapi:1.1'
                    }
         }
        
     }
}
