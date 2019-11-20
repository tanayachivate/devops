FROM 200.0.1.100:5000/node
WORKDIR /code
COPY . .
EXPOSE 4444
CMD node index.js
