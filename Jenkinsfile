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
            sh 'docker.sh'
                    }
         }
        
     }
}
