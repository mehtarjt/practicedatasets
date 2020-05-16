RMDIR /Q /S practicedatasets.egg-info
RMDIR /Q /S dist
RMDIR /Q /S build
python setup.py sdist bdist_wheel
twine check dist/*
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
twine upload dist/*
