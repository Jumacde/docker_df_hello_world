# docker_df_hello_world
training docker file

what does this project
 - create a ubuntu server
 - run a bash file
    - show only words "hello wolrd"

structure:
1. Dockerfile
 - docker image: ubuntu:latest
 - copy hello_world.sh in the container.
 - run once main method from the hello_world.sh 
    . 
2. hello_world.sh
 - show only hello world
3. builder.sh
 - build contianer
    - docker image name: hello_image
    - read Dockerfile
    - start docker(run command)
        - container name: hello_container

result and next step:
the container is active and shows hello world on the terminal.
but this container don't keep to work.

Inorder to check working statue of containers
add 'exec tail -f /dev/null' in  the hello_world.sh
==> result: 
CONTAINER ID   IMAGE         COMMAND             CREATED          STATUS          PORTS                                     NAMES
b3d246cd08ee   hello_image   "/hello_world.sh"   14 seconds ago   Up 13 seconds   0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   hello_container

the containr keep to work successfully.
