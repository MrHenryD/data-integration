FROM python:3.9.7


WORKDIR /opt/amundsen

RUN git clone https://github.com/lyft/amundsenfrontendlibrary.git && \
    cd amundsenfrontendlibrary/amundsen_application/static && \
    apt-get update && \
    apt-get install -y npm && \
    npm install && \
    npm run build && \
    cd ../../

RUN cd /opt/amundsen/amundsenfrontendlibrary && \
    pip3 install -r requirements.txt && \
    python3 setup.py install

CMD ["python3", "/opt/amundsen/amundsenfrontendlibrary/amundsen_application/wsgi.py"]