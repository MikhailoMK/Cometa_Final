FROM python
RUN pip install Flask
WORKDIR /root
COPY ./app /root
EXPOSE 7777
CMD ["python", "index.py"]