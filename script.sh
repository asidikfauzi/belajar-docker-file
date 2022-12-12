# FROM Instruction
docker build -t asidikfauzi/from from
docker image ls

#RUN Instruction
docker build -t asidikfauzi/run run
#jika run tidak ingin menggunakan cache
docker build -t asidikfauzi/run run --progress=plain --no-cache

#cara melihat docker image dengan kata uniq
docker image ls | grep asidikfauzi

#Command Instruction
docker build -t asidikfauzi/command command

#lihatdetail image
docker image inspect asidikfauzi/command

docker container create --name command asidikfauzi/command

docker container start command

docker container logs command

#LABEL INSTRUCTION
docker build -t asidikfauzi/label label

docker image inspect asidikfauzi/label

#ADD INSTRUCTION
docker build -t asidikfauzi/add add

docker container create --name add asidikfauzi/add

docker container start add

docker container logs add

#COPY INSTRUCTION
docker build -t asidikfauzi/copy copy

docker container create --name copy asidikfauzi/copy

docker container start copy

docker container logs copy

#DOCKERIGNORE FILE
docker build -t asidikfauzi/ignore ignore

docker container create --name ignore asidikfauzi/ignore

docker container start ignore

docker container logs ignore
