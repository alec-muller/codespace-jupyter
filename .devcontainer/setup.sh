#!/bin/bash

echo "Data/hora inicial: $(date)"

# Definir a versão do Apache Airflow
AIRFLOW_VERSION="2.7.2"

# Obter a versão do Python instalada no Codespace
PYTHON_VERSION=$(python3 --version 2>&1 | cut -d " " -f 2 | cut -d "." -f 1,2)

# Obter a versão do Airflow a partir do GitHub
AIRFLOW_CONSTRAINTS="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

# Baixar o arquivo de restrições do Airflow e substituir "==" por "<="
curl -sSL $AIRFLOW_CONSTRAINTS | sed 's/==/<=/g' >> requirements.in

# Adicionar outras dependências necessárias ao arquivo requirements.in
echo -e "\n ipywidgets<=7.7.1" >> requirements.in
echo -e "\n matplotlib<=3.7.0" >> requirements.in 
echo -e "\n torch<=1.12.1" >> requirements.in 
echo -e "\n torchvision<=0.13.1" >> requirements.in 

# Atualiza o pacote do pip
python3 -m pip install --upgrade pip

# Instalar pip-tools se não estiver instalado
python3 -m pip install pip-tools

# Gerar requirements.txt usando pip-compile
sudo pip-compile --no-index --quiet --allow-unsafe -U -o requirements_once.txt requirements.in

# Instalar as dependências
python3 -m pip install --quiet --no-input --ignore-installed -r requirements_once.txt --ignore-installed 

# Instalar apache-airflow usando a variável de versão
python3 -m pip install --quiet --no-input --ignore-installed apache-airflow==$AIRFLOW_VERSION

echo "Data/hora final: $(date)"