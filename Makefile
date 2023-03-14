install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	# add .py back in later
	#black *.py
	black *.ipynb

lint:
	# add .py back in later
	#pylint --disable=R,C *.py
	echo "not yet implemented"

all: install format lint