To run this image properly, please pull it from repository with this command:

docker pull steblyuk/production

Image will be pulled from repo and automatically install all of the required software. When pull will end, use next command to run the image:

docker run -it steblyuk/production
if you want to enter container then run "sudo docker run -it -d steblyuk/production /bin/bash" , then "sudo docker ps", Take id od running container, and run command "sudo docker exec -it <container_id> bash" 
