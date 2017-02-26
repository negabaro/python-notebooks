#docker run -itd --name jupyter -p 8888:8888 -e PASSWORD=admin enakai00/jupyter_tensorflow:latest
docker run -d -p 8888:8888 -p 6006:6006 -v `pwd`/notebooks:/home/jovyan/work -e PASSWORD="admin" -e GRANT_SUDO=yes --user root mokemokechicken/jupyter-tensorflow start-notebook.sh

