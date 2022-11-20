### para construir a imagem (buildar) 

`sudo podman build --tag node:node_container -f ./Dockerfile`

### se precisar alterar privilegio da sua machine podman

`podman machine set --rootful`


### para executar :

`podman run -p 8081:8080 --name node_container --rm node:node_container`

### para parar

`podman stop node_container`


### para remover

`sudo podman rm -f node_container`

#### os testes foram feitos localmente, para testes no orquestrador necessario informar o caminho da instalacao.

`ex: `

`RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app`

`WORKDIR /home/node/app` 
