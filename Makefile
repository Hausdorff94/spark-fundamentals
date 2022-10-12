install:
	pip install --upgrade pip &&\
	pip install --upgrade setuptools &&\
	pip install -r requirements.txt

# imagename:
# 	export IMAGE_NAME="myspark"

buildimage:
	docker build -t myspark .

# buildnewimage: imagename buildimage

runcontainer:
	docker run -it  -p 8050:8050 -u root -e GRANT_SUDO=yes --security-opt seccomp:unconfined --name containerspark myspark
