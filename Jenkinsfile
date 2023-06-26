pipeline{
	
	agent any

	stages{

		stage('SSH into Remote Server'){

			steps{

				sshagent(credentials: ['react-web-app']) {
                                	sh 'ssh root@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/"'
					                        sh 'ssh root@35.175.153.143 "git pull"'
					                        sh 'ssh root@35.175.153.143 "ng serve --host 0.0.0.0 --port 80"'
				}

			}

		}

	}



}
