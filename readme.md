# Installation

Follow the installation procedure for docker: https://docs.docker.com/get-docker/
Then, install docker-compose: https://docs.docker.com/compose/install/

Fetch this repository on your laptop: 
```
git clone https://github.com/gilles-degols/supelec.git
```
If you do not have git installed, you can also download the ZIP folder directly from the UI.

# Start working
Start the process
```
cd supelec
docker-compose up  
```

Then, you can go to http://localhost:8888/ in your browser to have access to your jupyter notebook. Any file 
put within the "work" folder of your OS will be available in the UI of the notebook.

To stop the process, you can simply do "ctrl+c"

# Troubleshooting

If you get a similar error:
```
ERROR: for jupyter  Cannot create container for service jupyter: Conflict. The container name "/jupyter" is already in use by container "<a-super-long-id>". You have to remove (or rename) that container to be able to reuse that name.
```
Execute the following command:
```
docker rm jupyter
```
Then retry the ```docker-compose up```

If, for some reasons, you want to enter the docker to install additional python packages (at your own risk):
- Startup the docker-compose
- In another shell ```docker exec -it jupyter /bin/bash```

## Some extra commands
If the Dockerfile has been modified, to force the rebuild:
```
docker-compose up --build
```
