pipeline
{
  environment{
    color="blue"
  }
  agent any
    stages{
      stage('Build My Hello World Project'){
        steps{
        echo "Hello World Build"
         bat "mvn clean install"
        }
      }
      stage ('Check Environment Variable')
      agent any
      steps{
       bat ("set") 
      }
  
  }


}
