pipeline { 

    agent any 

    tools {
        maven 'MyMaven'
        jdk 'jdk8'
    }
    stages { 
        stage('Build') { 
            steps { 
               echo 'This is a Build Step.' 
                   sh 'mvn clean install'
            }
        }
        

        stage('Deploy') { 
            steps { 
               echo 'This is a Deploy Step.' 
                   
            }
        }
    }
}
