test: test-sqlite test-flake8

test-sqlite: install-dependencies
	coverage run setup.py test
	coverage report -m --fail-under 80

test-flake8:
	pip install flake8
	flake8 .

install-dependencies:
	pip install -r dev_requirements.txt
