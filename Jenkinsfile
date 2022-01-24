pipeline {
  agent any //agent is where our build is going to run
  //agent { docker {image 'maven:3.6.3' } }
  stages {
     stage("Cleaning Stage") {
      steps {
      	//bat "mvn --version"
        bat "mvn clean"
      }
    }
    stage("Testing stage") {
      steps {
        bat "mvn test"
      }
    }
    stage("Packaging stage") {
      steps {
        bat "mvn package"
      }
<<<<<<< HEAD
    } 
  }
  post {
  	always {
  		bat "run always"
  	}
  	success {
  		bat "run when success"
  	}
  	failure {
  		bat "run when fails"
  	}	
=======
    }
    stage("sonarqube stage"){
       steps {
         bat "mvn package sonar:sonar"
       }
    }
>>>>>>> 68ceea93d3b16dc2c64a91f7ff724f97cd89f7cc
  }
}
//webhook
