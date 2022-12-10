pipeline {
    agent any
	
	stages { 
	    stage ('Checkout') {
	        steps {
			     checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'KKK', url: 'https://github.com/loginkranthi/onlinebookstore.git']]])
				}
            }
       
        stage ('compile') {
            steps {
                   sh 'mvn clean compile'
                 }
            }
     
        stage ('test') {
            steps {
              	  sh 'mvn test'
				}
			}
		stage ('package') {
		    steps {
			     sh 'mvn test'
				}
			}
		stage ('deploy') {
		    steps {
			     sh 'mvn deploy'
				}
			}
		}
	}
