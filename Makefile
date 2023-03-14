install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	black *.ipynb

lint:
	pylint --disable=R,C *.py
	pylint --disable=R,C *.ipynb

all: install lint format