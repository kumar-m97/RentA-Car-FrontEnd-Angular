pipeline{
	
	agent any

	stages{

		stage('SSH into Remote Server'){

			steps{

				sshagent(credentials: ['react-web-app']) {
                                	sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/"'
					                        sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "sudo cd /home/RentA-Car-FrontEnd-Angular/ && git pull"'
					                        sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "sudo cd /home/RentA-Car-FrontEnd-Angular/ && ng serve --host 0.0.0.0 --port 80"'
				}

			}

		}

	}



}
