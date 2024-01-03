#!/bin/bash

DEFAULT_PY=3.9
ENVIRONMENTS_PATH="$HOME/.py_venvs"

if [ $# -eq 0 ]
  then
    printf "Please provide an environment name\n\nUsage: ./env_setup.sh <YOUR_ENVIRONMENT_NAME>\n"
    exit
fi

printf "Creating environment $1 with Python version $DEFAULT_PY\n"

cd $ENVIRONMENTS_PATH

python$DEFAULT_PY -m venv $1


source $1/bin/activate

python -m pip install -U pip
python -m pip install --user ipykernel
python -m ipykernel install --user --name=$1
python -m pip install pandas numpy matplotlib scikit-learn jupyterlab

echo "alias workon-$1=\"source $ENVIRONMENTS_PATH/$1/bin/activate\"" >> $HOME/.bash_aliases

source $HOME/.bashrc
