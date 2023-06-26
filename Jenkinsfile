pipeline{
	
	agent any

	stages{

		stage('SSH into Remote Server'){

			steps{

				sshagent(credentials: ['react-web-app']) {
                                	sh 'ssh root@44.203.41.5 "cd /home/RentA-Car-FrontEnd-Angular/"'
					sh 'ssh root@44.203.42.5 "git pull"'
					sh 'ssh root@44.203.42.5 "ng serve --host 0.0.0.0 --port 80"'
				}

			}

		}

	}



}
