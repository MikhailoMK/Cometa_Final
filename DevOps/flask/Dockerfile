FROM python
RUN pip install Flask
WORKDIR /root
COPY index.py .
COPY static ./static
COPY templates ./templates
CMD ["python", "index.py"]