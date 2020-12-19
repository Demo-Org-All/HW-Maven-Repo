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
      
      
      stage('Build My Hello World Project'){
        steps{
        echo "Hello World Build"
         bat "mvn clean install"
             }
                                         }
      
  }


}
