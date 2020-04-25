# centos7-vnc-dev
centos7 development environment on vnc

## Step 1: build docker
`docker build --pull --rm -f "centos7-vnc-dev/Dockerfile" -t centos-vnc-test:1.0.0 "centos7-vnc-dev"`

## Step 2: run docker
`docker run -itd -p 23391:3389 centos-vnc-test:1.0.0`

## Step 3: run mstsc on windows
`mstsc -v yourserverhost:23391`
username: user
password: user

## Step 4: run vscode in terminal
![vscode](https://github.com/Momo94Li/centos7-vnc-dev/blob/master/vscode.png)