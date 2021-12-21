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
