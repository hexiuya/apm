docker stop apm
docker rm apm
docker image rm apm:0.0.1
docker build . -t apm:0.0.1
docker run -d -p 8116:8116 --name apm --network crm-network --network-alias alias-apm --link crm-test-mysql apm:0.0.1
