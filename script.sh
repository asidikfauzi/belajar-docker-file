# FROM Instruction
docker build -t asidikfauzi/from from
docker image ls

#RUN Instruction
docker build -t asidikfauzi/run run
#jika run tidak ingin menggunakan cache
docker build -t asidikfauzi/run run --progress=plain --no-cache

#cara melihat docker image dengan kata uniq
docker image ls | asidikfauzi