### In this section I have the configuration of 3 playbooks, I configure another VM from the 1st one, where ansible-playbook is installed
- __playbook1.yml__:
  
  This playbook simply executes the ping command on all hosts, which allows you to check the availability of these hosts and connections to them.
  <img width="779" alt="Screenshot 2024-01-25 at 02 49 16" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/8635f8c5-d4c6-4707-8b72-071acf06c6d8">
- __playbook2.yml__:
  
  This playbook will install and run the Apache web server on all hosts defined in the Ansible inventory.
  <img width="781" alt="Screenshot 2024-01-25 at 02 54 09" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/fbc5759a-dd33-4aea-89d7-be737edee3f2">

- __playbook3.yml__:

  This playbook will install Apache on all hosts and copy the index.html file (located in /home/kristina/ansible/) to the /var/www/html directory. After copying the file, Apache will be restarted.
  <img width="786" alt="Screenshot 2024-01-25 at 03 07 07" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/e2f1e2af-24ab-43ea-b190-f42c8b385d56">
- __As a result:__
  <img width="1010" alt="Screenshot 2024-01-25 at 03 07 51" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/9230b630-b3ca-44de-9c21-e08aaf99dda9">
