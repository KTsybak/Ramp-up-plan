# DOCKERFILES
-  For this section, there is a Dockerfile for the __base image__ with tools for managing services, such as daemontools, already installed, which will be very convenient, especially  if it is necessary to run and manage several services in a container.
-  Also, a Dockerfile was created to build an image with Nginx running under the control of daemontools for more efficient management of processes in the container.
Daemontools, using svscan, monitors the /etc/service directory for subdirectories representing services. The Nginx service is configured in the /etc/service/nginx directory, and when the container starts, Daemontools starts monitoring Nginx with the svscan command. The svscan process reads the run script in the Nginx service directory, starting Nginx and also processing the associated logging service.
  
