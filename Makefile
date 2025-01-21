all: run

.python-version:
	pyenv virtualenv notebooks
	pyenv local notebooks
	pip install -r requirements.txt

run: .python-version
	jupyter notebook
