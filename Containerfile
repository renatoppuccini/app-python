FROM registry.redhat.io/ubi8/python-38:1-86.1648121386


ADD app/app.py .
 
# Install dependencies
RUN pip install flask && pip install jinja2

# Run the application
EXPOSE 8080

#CMD python app.py
ENTRYPOINT ["/opt/app-root/bin/python","app.py"]
