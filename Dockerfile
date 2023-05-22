FROM python:3.6-alpine
LABEL maintener="AkSino"
WORKDIR /opt
RUN pip install flask==1.1.2
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com/"
ENV PGADMIN_URL="https://www.pgadmin.org/"
COPY . .
ENTRYPOINT ["sh", "-c", "source /opt/entrypoint.sh", "-s"]
CMD [ "python", "app.py" ]
