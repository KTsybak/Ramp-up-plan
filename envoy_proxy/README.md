# This is my guide to proxy application using an envoy proxy
- Here I create 3 docker containers, in two separate containers on ports 5000 there is a web servers on the Flask framework that display a certain text message on the specified route, the third container is an envoy, that listening to port 5555.
- To redirect traffic to a specific service, in the **envoy.yaml** file, I specify the routes: _/canada_ and _/ukraine_ and specify the corresponding clusters - a group of similar hosts that receive traffic. 
- Then I specify the _name of containers_ with web servers as endpoints for receiving traffic: python_container1 and python_container2, having previously created a shared network between these containers.
- This way, I can use envoy to redirect traffic to my various Python services based on the requested URL path. So for the path /ukraine, traffic is redirected to my first container, /canada to my second container.
## Result:
<img width="1343" alt="Screenshot 2024-01-16 at 00 33 13" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/bfb6a992-e03a-4658-8893-b844f36906c2">  


<img width="653" alt="Screenshot 2024-01-16 at 00 48 54" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/342b8f67-6cf3-4844-add8-b9b6acca2e26">

<img width="953" alt="Screenshot 2024-01-16 at 00 33 43" src="https://github.com/KTsybak/Ramp-up-plan/assets/149802416/895b5d7b-203e-4096-a24f-4d83c5912145">
