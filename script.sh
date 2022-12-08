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