# EVT-Challenge


>**INTRODUCTION:**

In this Repo (master branch) is the working directory for the docker image I'm using to host an Nginx webserver to serve the html page provided.
I decided to use Docker to containerize an Nginx webserver image. I started by copying my directory to it when creating my own image.
I had never used Nginx before this, but it was fun to figure out how to set up the server .config and Dockerfile (This was also my first time using and creating a docker file from scratch). 

Technologies used:
 > Ubuntu 22.04

 > WSL2

 > IDE (I used VSCode, probably my favorite, though I haven't tried many)

 > OpenSSL v3.1.3

 > Docker Desktop

 > Docker CLI

 > GitHub Desktop

 > Git Bash

>**Getting Started:**

For Windows systems, you'll need to install WSL2 Windows Subsystem for Linux which is available from the Microsoft Store. 
Once WSL2 is installed open PowerShell or Windows Command Prompt in ___adminstrator mode___ and run:
```PowerShell
wsl --install
```
this will enable the features necessary to run WSL followed by installing the latest Ubuntu distribution.

You'll need to install Docker Desktop which you can find at this link:
```
https://docs.docker.com/desktop/install/windows-install/
```
Docker CLI tool will now be available in any terminal, including a terminal from within your IDE.

You can then use the ``` Ctrl+K ``` shortcut or use the Search Bar to look for 
```
abraxis10/nginx-evt-webserver-challange
```
You can also run the following command:
```
docker pull abraxis10/nginx-evt-webserver-challange
```
This will pull the Docker image to your local machine. 



>**USAGE:**

Once you have the docker image, run a new container from the image pulled using Docker Desktop.

In the Optional settings give the container a new name, set the first host port to 443 and the second host port to 80 and run it.

Your new containerized image will be hosting an Nginx webserver.

Visit 
```
http://localhost:80
```
or
```
https://localhost:443
```
And there you go! You've pulled an image from Docker Hub and hosted a really cool website! B)
Nice!

You can navigate to [the branch containing my Docker project files](https://github.com/Abratenaxis/EVT-Challenge/tree/master) to see the directory containing the Docker project and all related project files.


>**CONSIDERATIONS:**

I used Docker because I knew it was something I wanted to familiarize myself with although I felt so lost when I started my research. I figured out that you could just use a base Nginx docker image and copy your files to it in order to run a local container that will host my page. It was perfect for what I needed. 

I had to install WSL and subsequently, Ubuntu to run Docker Desktop.

I used OpenSSL because it would suit my needs for a self-signed certificate that I could generate on my Windows system.

I use VSCode because of its ease of use and great array of functionality.
