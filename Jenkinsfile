pipeline
{
  environment{
    color="blue"
  }
  agent any
    stages{
      
      stage ('Check Environment Variable')
      {
      
      steps{
       bat ("set") 
           }
      }
      
      
      stage('Get Current User Details'){
        steps{
          
        wrap([$class: 'BuildUser']) {
    echo "userId=${BUILD_USER_ID},fullName=${BUILD_USER},email=${BUILD_USER_EMAIL}"
                                    }
             }
                                      }
      
      stage('Build My Hello World Project'){
        steps{
        echo "Hello World Build"
         bat "mvn clean install"
             }
                                         }
      
  }


}
