install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-azure:	
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C data.py #disables recommended and config, only warning and error
	
test:
	python -m pytest -vv -cov=hello test_intro.py
	
all: install lint test 