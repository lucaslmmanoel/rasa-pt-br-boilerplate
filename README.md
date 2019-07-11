# RASA PT-BR BOILERPLATE

Projeto dedicado a criação de um boiller plate do framework rasa em pt br

### Pré Requisitos

Python3 & pip && docker


### Instalação no linux

Crie um ambiente virtual:

```
virtualenv -p python3 venv
```

Ative o ambiente virtual:

```
source venv/bin/activate
```
Instale as dependências e linke o spacy:

```
pip install -r requirements.txt
pip install --trusted-host github.com https://github.com/explosion/spacy-models/releases/download/pt_core_news_sm-2.1.0/pt_core_news_sm-2.1.0.tar.gz && \
    python -m spacy link pt_core_news_sm pt

```
Treine o modelo:
```
rasa train
```
Suba o duckling:
```
docker run -p 8000:8000 rasa/duckling
```

Teste no terminal:
```
rasa shell
```
Ou teste com o rasa web chat:
https://github.com/mrbot-ai/rasa-webchat

rasa x:
```
pip install rasa-x --extra-index-url https://pypi.rasa.com/simple
rasa x
```

