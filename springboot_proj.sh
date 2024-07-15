cd /home/vboxuser/Downloads/springbootmavendemo/src/main/java/com/example/springbootmavendemo

touch RequestMapping.java

echo "package com.example.springbootmavendemo;

public @interface RequestMapping {
}" > RequestMapping.java

echo "##########################"
echo "Successfully Added"

touch HelloController.java

echo "package com.example.springbootmavendemo;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController{
	@RequestMapping("\"/"\")
	public String index()
	{
		return "\"Hello Devops Team You HAve Successfully Deployed Springboot Application"\";
	}
}" > HelloController.java

echo "Added Successfully"
echo "################################################################################"
echo "Current working directory"
pwd

cd /home/vboxuser/Downloads/springbootmavendemo/
echo "pwd"
pwd
echo "################################################################################"

./mvnw install

echo "Project is running"
./mvnw spring-boot:run


