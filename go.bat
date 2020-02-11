@ECHO Creating the Docker image that contains the c++ toolchain...

docker build .\com.relativity.toolchain.cpp -t com.relativity.toolchain.cpp:0.0.1

@ECHO Verifying that the image is in the repository and that it contains the c++ toolchain...

docker image ls com.relativity.toolchain.cpp:0.0.1

docker run com.relativity.toolchain.cpp:0.0.1 g++ --version

@ECHO Creating the Docker image that hosts the cpp application...

docker build .\com.relativity.app.helloworld -t com.relativity.app.helloworld:0.0.1

@ECHO Verifying that the image is in the repository and that it does NOT contain the c++ toolchain...

docker image ls com.relativity.app.helloworld:0.0.1

docker run com.relativity.app.helloworld:0.0.1 g++ --version

@ECHO Running the cpp application...

docker run com.relativity.app.helloworld:0.0.1
