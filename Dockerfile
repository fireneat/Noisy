FROM python:3.10-alpine
RUN adduser noisy --disabled-password
USER noisy
WORKDIR /noisy
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir --disable-pip-version-check --no-warn-script-location --user
# Note: If the above doesn't work comment it out and uncomment below
#RUN pip install -r requirements_tested.txt --require-hashes --no-deps --no-cache-dir --disable-pip-version-check --no-warn-script-location --user
COPY . .
ENTRYPOINT ["python", "noisy.py"]
CMD ["--config", "config.json"]
