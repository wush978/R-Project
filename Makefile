tag=wush978/dsc2015-r-project

build :
	docker build -t $(tag) .

run :
	docker run --rm -v `pwd`:/workspace -p 80:8888 -e PASSWORD=wush --name dsc2015 $(tag)

kill :
	docker kill dsc2015

bash :
	docker exec -it dsc2015 /bin/bash
