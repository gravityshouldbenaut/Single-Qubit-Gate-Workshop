# Single Qubit Gate Workshop

## Pre-reqs

Make sure to install [Docker](https://www.docker.com/products/docker-desktop) and ensure it's working on your system after installation by running

```
docker --version
```
If everything worked properly, you'll see something like:
```
Docker version 19.03.5, build 633a0ea
```
## Getting Started

`git clone` this project onto your computer, then navigate into the folder with the project.

Run the following inside the folder:
```
docker docker image build -t workshop_env .
```
Once the image is successfully built, launch the container like so

```
docker container run -it --name workshop -p 8888:8888 workshop_env
```
You should see some output in your terminal:
```
[I 22:36:58.575 NotebookApp] Shutting down 1 kernel
[I 22:36:58.978 NotebookApp] Kernel shutdown: 329a1e67-5672-4d74-9f02-d829a4cc40c0
[I 22:49:34.452 NotebookApp] Serving notebooks from local directory: /home
[I 22:49:34.452 NotebookApp] The Jupyter Notebook is running at:
[I 22:49:34.452 NotebookApp] http://155a34966de9:8888/?token=73451f5d2893961b6a59f0fc872a18a112b3c3ca7b9e50d0
[I 22:49:34.452 NotebookApp]  or http://127.0.0.1:8888/?token=73451f5d2893961b6a59f0fc872a18a112b3c3ca7b9e50d0
[I 22:49:34.452 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 22:49:34.457 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://155a34966de9:8888/?token=73451f5d2893961b6a59f0fc872a18a112b3c3ca7b9e50d0
     or http://127.0.0.1:8888/?token=73451f5d2893961b6a59f0fc872a18a112b3c3ca7b9e50d0
```
Copy and paste the link with `127.0.0.1` into your browser. You'll see something similar to a file explorer. Navigate into the "Single Qubit Gates" folder and then open the "Single Qubit Gates" notebook. 

## Using the Jupyter Notebook

The notebook itself is divided into cells. Each cell can contain text or code.

To run code, click on the cell and once it's highlighted, hit `Shift + Enter` to execute the code.

If you want to add cells so you can tinker around in a certain section, hit the " + " icon in the corner after selecting which cell you want the new one to be inserted below. 

## Shutting Down

To exit the notebook, you can go to the terminal and hit `Ctrl + C`. Jupyter will prompt whether or not you want to shutdown so you just hit `y`. 

## Starting Again

Use

```
docker start workshop
```

to start things, then use
```
docker logs workshop
```
and from there, grab the link to copy and paste into your browser.
