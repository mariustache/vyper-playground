# vyper-playground
Playground for Vyper smart-contract programming language.

# Docker setup
Download docker image **vyperlang/vyper**:
```
docker pull vyperlang/vyper
```
If you want to map a local directory (e.g. the repository) to the container, use the following command:
```
docker run -v local_path:/container_path/ -it --entrypoint /bin/bash vyperlang/vyper
```
# Remix IDE compile/deploy
Add Vyper plugin and select **LocalCompiler** to compile contracts.
Run a container that exposes the vyper compiler as a HTTP server:
```
docker run -it -p 8000:8000 --expose=8000 --entrypoint /bin/bash vyperlang/vyper 
vyper-serve -b 0.0.0.0:8000
```

# Brownie framework usage
Create Docker image by running
```
docker build -t brownie_dev .
```
Run the container with a mapping from local folder to container's **/code**:
```
docker run -it -v ${pwd}:/code brownie_dev
```
