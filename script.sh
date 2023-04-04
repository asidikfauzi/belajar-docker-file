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


#EXPOSE instruction
docker build -t udemy/expose expose

docker image inspect udemy/expose

docker container create --name expose -p 8080:8080 udemy/expose

docker container start expose

docker container logs expose

#ENV instruction
docker build -t udemy/env env

docker image inspect udemy/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 udemy/env

docker container start env

docker container logs env

docker container stop env

#Volume Instruction
docker build -t udemy/volume volume

docker image inspect udemy/volume

docker container create --name volume -p 8080:8080 udemy/volume

docker container start volume

docker container logs volume

docker container inspect volume
#f302145ce820f079bcea044e0f7eee91325a8db42f472725baa12c127435ce2f

docker container stop volume

#WORKDIR Instruction
docker build -t udemy/workdir workdir

docker image inspect udemy/workdir

docker container create --name workdir -p 8080:8080 udemy/workdir

docker container start workdir

docker container exec -it workdir /bin/sh


#USER Instruction
docker build -t udemy/user user

docker image inspect udemy/user

docker container create --name user -p 8080:8080 udemy/user

docker container start user

docker container exec -it user /bin/sh

#argument Instruction
docker build -t udemy/arg arg --build-arg app=pzn

docker image inspect udemy/arg

docker container create --name arg -p 8080:8080 udemy/arg

docker container start arg

docker container exec -it arg /bin/sh

#health Instruction
docker build -t udemy/health health

docker image inspect udemy/health

docker container create --name health -p 8080:8080 udemy/health

docker container start health

docker ps

docker ps | grep unhealthy

docker container inspect health


#entrypoint Instruction
docker build -t udemy/entrypoint entrypoint

docker image inspect udemy/entrypoint

docker container create --name entrypoint -p 8080:8080 udemy/entrypoint

docker container start entrypoint

docker container inspect entrypoint



#Multi stage Instruction
docker build -t asidikfauzi/multi multi

docker image ls

docker container create --name multi -p 8080:8080 asidikfauzi/multi

docker container start multi

docker container inspect multi