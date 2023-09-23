@Library('my-shared-lib') _

pipeline{
        agent any
        stages{
                stage('Git Checkout'){
                        steps{
                        gitCheckout(
                        	branch: "main",
                            url: "https://github.com/kohlidevops/java-app.git"
                                        )
                        }
                }
                stage('Unit Test with Maven'){
                	steps{
                		script{
                			mvnTest()
                		}
                	}
                }
                stage('Integration Test with Maven'){
                	steps{
                		script{
                			mvnIntegrationTest()
                		}
                	}
                }                
        }
}
