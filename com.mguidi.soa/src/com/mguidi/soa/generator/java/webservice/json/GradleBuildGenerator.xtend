package com.mguidi.soa.generator.java.webservice.json

import com.mguidi.soa.soa.Architecture
import com.google.inject.Inject
import org.eclipse.emf.ecore.resource.Resource
import com.mguidi.soa.soa.Feature
import com.mguidi.soa.generator.java.Utils

class GradleBuildGenerator {
	
	@Inject extension Utils utils
	
	def generateBuildServiceJson(Architecture architecture, Resource resource) '''
		apply plugin: 'java'
		
		sourceCompatibility = 1.6
		
		repositories {
			mavenLocal()
			mavenCentral()
		}
		
		dependencies {
		    compile 'com.google.code.gson:gson:2.3'
		    compile '«architecture.applicationId+":"+architecture.moduleName+"-service:"+architecture.version»'
		    compile '«architecture.applicationId+":"+architecture.moduleName+"-model-json:"+architecture.version»'
		    «FOR dependency: dependencies(architecture, resource.allContents.toIterable.filter(typeof(Feature)))»
		    compile '«dependency.applicationId+":"+dependency.moduleName+"-model-json:"+dependency.version»'
		    «ENDFOR»
		}
		
		apply plugin: 'maven'

		uploadArchives {
		    repositories {
		        mavenDeployer {
		            repository(url: mavenLocal().url)
		            
		            pom.groupId = '«architecture.applicationId»'
					pom.artifactId = '«architecture.moduleName»-service-json'
					pom.version = '«architecture.version»'
		        }
		    }
		}
	'''
	
	def generateBuildServletJson(Architecture architecture, Resource resource) '''
		apply plugin: 'java'
		
		sourceCompatibility = 1.6
		
		configurations {
			provided
		}
		
		sourceSets {
			main {
				compileClasspath += configurations.provided
			}
		}
		
		repositories {
			mavenLocal()
		    mavenCentral()
		}
		
		dependencies {
			provided 'javax.servlet:servlet-api:2.5'
		    compile '«architecture.applicationId+":"+architecture.moduleName+"-service:"+architecture.version»'
		    compile '«architecture.applicationId»:«architecture.moduleName»-service-json:«architecture.version»'
		}
		
		apply plugin: 'maven'

		uploadArchives {
		    repositories {
		        mavenDeployer {
		            repository(url: mavenLocal().url)
		            
		            pom.groupId = '«architecture.applicationId»'
					pom.artifactId = '«architecture.moduleName»-servlet-json'
					pom.version = '«architecture.version»'
		        }
		    }
		}
	'''
	
}