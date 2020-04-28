pipeline{
    agent {

    docker {
      image 'tomcat:1'
    }

  }
    stages{
        stage ("git clone"){
            steps {
                git 'https://github.com/artur50000/box3.git'
            }
        }
        
        stage ("build"){
            steps {
               sh 'mvn package'
            }
        }
       
       stage ("deploy"){
            steps {
                deploy adapters: [tomcat8(credentialsId: 'e05a75d2-2631-423d-b75d-63de8baeb43f', path: '', url: 'http://13.58.119.59:8080')], contextPath: 'myapp1', war: '**/*.war'
            }
        } 
        
    }
    
        
    
}
