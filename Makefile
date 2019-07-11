first-run:
	pip install -r requirements.txt
	pip install --trusted-host github.com https://github.com/explosion/spacy-models/releases/download/pt_core_news_sm-2.1.0/pt_core_news_sm-2.1.0.tar.gz && \
    python -m spacy link pt_core_news_sm pt
	docker run -p 8000:8000 rasa/duckling
	rasa train
	rasa shell