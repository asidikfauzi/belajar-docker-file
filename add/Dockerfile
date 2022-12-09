FROM alpine:3

RUN mkdir hello
# ambil salah satu text 
#COPY text/world.txt hello
#ambil semua text
ADD text/*.txt hello

CMD cat "hello/world.txt"