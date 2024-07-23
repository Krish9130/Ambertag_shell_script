#!/bin/bash

# Create project directory
mkdir -p HelloWorldMaven
cd HelloWorldMaven

# Create directory structure and Java classes
mkdir -p src/main/java/hello
touch src/main/java/hello/HelloWorld.java
echo "
package hello;

import org.joda.time.LocalTime;

public class HelloWorld {
    public static void main(String[] args) {
        LocalTime currentTime = new LocalTime();
        System.out.println("\"The current local time is:"\" + currentTime);
        Greeter greeter = new Greeter();
        System.out.println(greeter.sayHello());
    }
}
" > src/main/java/hello/HelloWorld.java

touch src/main/java/hello/Greeter.java
echo "
package hello;

public class Greeter {
    public String sayHello() {
        return "\"We have run Maven Project Successfully!"\";
    }
}
" > src/main/java/hello/Greeter.java

# Create pom.xml file
touch pom.xml
echo "
<?xml version="\"1.0"\" encoding="\"UTF-8"\"?>
<project xmlns="\"http://maven.apache.org/POM/4.0.0"\"
         xmlns:xsi="\"http://www.w3.org/2001/XMLSchema-instance"\"
         xsi:schemaLocation="\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd"\">
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.springframework</groupId>
    <artifactId>hello-world-maven</artifactId>
    <packaging>jar</packaging>
    <version>0.1.0</version>

    <properties>
        <java.version>1.8</java.version>
    </properties>

    <dependencies>
        <dependency>
            <groupId>joda-time</groupId>
            <artifactId>joda-time</artifactId>
            <version>2.2</version>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-shade-plugin</artifactId>
                <version>2.1</version>
                <executions>
                    <execution>
                        <phase>package</phase>
                        <goals>
                            <goal>shade</goal>
                        </goals>
                        <configuration>
                            <transformers>
                                <transformer
                                    implementation="\"org.apache.maven.plugins.shade.resource.ManifestResourceTransformer"\">
                                    <mainClass>hello.HelloWorld</mainClass>
                                </transformer>
                            </transformers>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>
</project>
" > pom.xml

# Build the project with Maven
mvn clean package

# Run the built JAR file
java -cp target/hello-world-maven-0.1.0.jar hello.HelloWorld

