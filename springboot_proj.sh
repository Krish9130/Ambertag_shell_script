#!/bin/bash

project_url="https://start.spring.io/starter.zip?type=maven-project&language=java&platformVersion=3.3.1&packaging=jar&jvmVersion=17&groupId=com.example&artifactId=springbootmavendemo&name=springbootmavendemo&description=Demo%20project%20for%20Spring%20Boot&packageName=com.example.springbootmavendemo&dependencies="

curl $project_url -o springbootmavendemo.zip

unzip springbootmavendemo.zip -d /home/vboxuser/springbootmavendemo

cd /home/vboxuser/springbootmavendemo/
find_syntax="<artifactId>spring-boot-starter</artifactId>"
replaced_syntax="<artifactId>spring-boot-starter-web</artifactId>"

Sed_use(){

	sed -i "s|$find_syntax|$replaced_syntax|g" pom.xml
}
Sed_use

cd /home/vboxuser/springbootmavendemo/src/main/java/com/example/springbootmavendemo

touch RequestMapping.java

echo "package com.example.springbootmavendemo;

public @interface RequestMapping {
}" > RequestMapping.java

echo "##########################"
echo "Successfully Added"

touch HelloController.java

echo "package com.example.springbootmavendemo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController{
	@RequestMapping("\"/project"\")
	public String index()
	{
		return "\"Hello Devops Team You HAve Successfully Deployed Springboot Application."\";
	}
}" > HelloController.java

echo "Added Successfully"
echo "################################################################################"
echo "Current working directory"
pwd

cd /home/vboxuser/springbootmavendemo/
echo "pwd"
pwd
echo "################################################################################"

./mvnw install

echo "Project is running"
./mvnw spring-boot:run


