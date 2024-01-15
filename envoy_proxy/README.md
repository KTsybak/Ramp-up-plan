# This is my guide to proxy application using an envoy proxy
- Here I create 3 docker containers, in two separate containers on ports 5000 there is a web servers on the Flask framework that display a certain text message on the specified route, the third container is an envoy, that listening to port 5555.
