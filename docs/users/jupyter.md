---
title: "Jupyter"
parent: "User documentation"
grand_parent: "Documentation for LHCb Milano computing"
nav_order: 4
---

# Jupyter
In the remote host change directory to where you have your notebooks and type:
```
jupyter notebook --no-browser
```
You will get an output like the following:
```
[I 16:48:09.136 NotebookApp] Writing notebook server cookie secret to /home/saiola/.local/share/jupyter/runtime/notebook_cookie_secret
[I 16:48:09.521 NotebookApp] Serving notebooks from local directory: /home/saiola
[I 16:48:09.521 NotebookApp] The Jupyter Notebook is running at:
[I 16:48:09.521 NotebookApp] http://localhost:8888/?token=<a_long_token>
[I 16:48:09.521 NotebookApp]  or http://127.0.0.1:8888/?token=<a_long_token>
[I 16:48:09.521 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 16:48:09.527 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/saiola/.local/share/jupyter/runtime/nbserver-23275-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/?token=<a_long_token>
     or http://127.0.0.1:8888/?token=<a_long_token>
```
Take note of the port used by `jupyter` (in the case above it's 8888).
In your local computer open another terminal and type:
```
ssh -N -f -L localhost:8888:localhost:8888 <your_user_name>@<server_name>.mi.infn.it
```
(replace 8888 with the port given by `jupyter`).
Then open a browser in your local machine e go to `http://localhost:8888/?token=<a_long_token>`.
