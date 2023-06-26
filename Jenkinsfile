pipeline{
	
	agent any

	stages{

		stage('SSH into Remote Server'){

			steps{

				sshagent(credentials: ['react-web-app']) {
                                	sh 'ssh ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/"'
					                        sh 'ssh ubuntu@35.175.153.143 "sudo git pull"'
					                        sh 'ssh ubuntu@35.175.153.143 "sudo ng serve --host 0.0.0.0 --port 80"'
				}

			}

		}

	}



}
