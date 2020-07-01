pipeline {
   agent any
   environment{
       a="10"
       b="22"
   }
   triggers{
       pollscm{
           (*/1 * * * *)
       }
   }

   stages {
      stage('Hello') {
          when {
              allOf {
                  environment name:'a', value: '10'
                  environment name:'b', value: '23'
              }
          }
         steps {
            echo 'Hello World'
            sh 'uptime'
            script{
                def k=sh(script:'sh /var/git/o.sh>/dev/null;echo $?',returnStdout:true).trim()
                echo "${k}"
                if ("${k}" == "0"){
                    echo "return code is ${k}"
                    
                }
                else{
                    echo "return code is other than 0"
                }
            }
            
         }
      }
   }
}
