node {
	stage('checkout') {
           git 'https://github.com/kumar-m97/RentA-Car-FrontEnd-Angular.git'
           }

	stage('SSH') {
		
	    withCredentials([sshUserPrivateKey(credentialsId: 'web-server', keyFileVariable: 'SSH_PRIVATE_KEY')]) {
            // SSH connection details
            def sshUser = 'ubuntu'
            def sshHost = '52.23.232.238'
            def sshPort = 22
	
	    sshagent (credentials: ['web-server']){

                sh "ssh -o StrictHostKeyChecking=no -i ${SSH_PRIVATE_KEY} -p ${sshPort} ${sshUser}@${sshHost} 'cd /home/RentA-Car-FrontEnd-Angular/dist/RentACar-FrontEnd'"
		sh "ssh -o StrictHostKeyChecking=no -i ${SSH_PRIVATE_KEY} -p ${sshPort} ${sshUser}@${sshHost} 'git pull'"
		sh "ssh -o StrictHostKeyChecking=no -i ${SSH_PRIVATE_KEY} -p ${sshPort} ${sshUser}@${sshHost} 'ng serve --host 0.0.0.0 --port 80'"
            }


       }
}
}
