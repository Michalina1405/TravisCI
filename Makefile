.PHONY: test

deps:
	pip install -r requirements.txt
	pip install -r test_requirements.txt

lint:
	fake8 hello_world_test

test:
	PYTHONPATH=. py.test
	PYTHONPATH=. py.test  --verbose -s

run:
	python main.py
