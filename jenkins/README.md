# Here are the pipelines for ansible, terraform, docker image builds, AWS
- **jenkinsfiledocker** - this pipeline builds the docker image and pushes the image to the AWS ECR after it is built.
  
<img width="1111" alt="Screenshot 2023-11-22 at 00 42 15" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/867f5b58-7445-464d-81b5-b292059c7000">
<img width="1130" alt="Screenshot 2023-11-22 at 00 49 33" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/12344700-0297-4e8c-a09c-c1ce8a9cfec2">



 - **jenkinsfileterraform** - this pipeline runs the terraform code located in this repository in the terraform folder.

<img width="1078" alt="Screenshot 2023-11-22 at 00 33 53" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/e5d0b9a7-d268-43df-ae79-62bb1803cca9">



- **jenkinsfileansible** - This pipeline was created for ansible, it executes the playbook3.yml located in the ansible folder
  <img width="860" alt="Screenshot 2023-11-22 at 01 03 53" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/20f7210e-6e1b-4d34-ad5b-ce0b7db549b5">
