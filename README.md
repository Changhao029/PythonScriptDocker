# PythonScriptDocker
Use Docker to run a python script to create a html in a container

```commandline
sudo docker build -t pythonscript:v2 .

sudo docker run -d -p 8080:80 pythonscript:v2 
```
