.PHONY: deps lint test run
deps:
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	flake8 hello_world

test:
	pytest -v

run:
	python main.py
