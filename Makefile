.PHONY: deps lint test run docker_build

docker_run: docker_build 
docker run \ 
       --name hello-world-printer-dev \ 
   -p 5000:5000 \ 
   -d hello-world-printer 

deps:
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	flake8 hello_world

test:
	pytest -v

run:
	python main.py
