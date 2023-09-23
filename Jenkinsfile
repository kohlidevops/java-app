@Library('my-shared-lib') _

pipeline{
        agent any

        parameters{
        	choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
        }
        stages{
                stage('Git Checkout'){
                			when { expression {  params.action == 'create' } }
                        steps{
                        gitCheckout(
                        	branch: "main",
                            url: "https://github.com/kohlidevops/java-app.git"
                                        )
                        }
                }
                stage('Unit Test with Maven'){
                			when { expression {  params.action == 'create' } }
                		steps{
                			script{
                			mvnTest()
                			}
                		}
                	}
                stage('Integration Test with Maven'){
                			when { expression {  params.action == 'create' } }
                		steps{
                			script{
                				mvnIntegrationTest()
                			}
                		}
                	}
                stage('Static Code Analysis with SonarQube'){
                			when { expression {  params.action == 'create' } }
                		steps{
                			script{
                				def credentialsId = 'sonar-api'
                				statiCodeAnalysis(credentialsId)
                			}
                		}
                	}                
        	}
	}
