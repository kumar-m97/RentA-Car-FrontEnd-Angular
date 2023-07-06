@Library('docker-build-sl') _
pipeline{
	
	agent any

	stages{

		stage('Checkout'){
			steps{
				checkout scm
			}
    }

		stage('Docker Build & Push'){
			steps{
        dockerBuild()
			}
    }

/*		stage('Run Container on Remote Server'){

			steps{

				sshagent(credentials: ['react-web-app']) {
              sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/"'
				      sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && sudo git pull"'
				      sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && cp docker-compose.yml docker-compose.yml_backup"'
				      sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && docker-compose down"'
				      previousTag = sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && cat docker-compose.yml | grep -o ':v.*' | sed 's/://g' ", returnStdout: true"'
				      sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && sed -i 's/${previousTag}/v${env.BUILD_ID}/g' docker-compose.yml"'
				      sh 'ssh -o StrictHostKeyChecking=no ubuntu@35.175.153.143 "cd /home/RentA-Car-FrontEnd-Angular/ && docker-compose up -d"'
				}
				

			}

		}*/

	}



}
