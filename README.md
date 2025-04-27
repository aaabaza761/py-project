# Flask Redis App

This project is a simple web application using **Flask** and **Redis**. It tracks the number of visits to the homepage using **Redis** as a caching layer for better performance.

## Description

**Redis** is used to store the number of visits each time the homepage is accessed. When a user visits the page, the counter in Redis is incremented, and the total number of visits is displayed on the page.

### Components

- **Flask**: A web framework for Python.
- **Redis**: A NoSQL in-memory data store used for caching.
- **Docker**: To run the application in containers along with Redis.

## How to Run

### 1. Set Up the Environment
Ensure you have **Docker** and **Docker Compose** installed on your machine.

### 2. Build and Run the Application with Docker Compose
To run the application using Docker, you can use **Docker Compose** to run both Flask and Redis in separate containers.

1. First, build the containers:

   ```bash
   docker-compose build

2. Then, run the containers:
   ```bash
   docker-compose build

3. Access the Application
Once the application starts, you can access the homepage via the following URL:

   ```bash
   http://localhost:5000
You will see a message similar to:
 **Hello from DolfinED, I have been seen X times.**

 ## Key Files

1. app.py: Contains the Flask application and connects to Redis to track the number of visits.

2. Dockerfile: package and containerize flask app with dependenicies for working on port 5000

3. docker-compose.yml: Coordinates running both the Flask service and Redis in separate containers.

## How Redis Works

The application increments the value of the hits key in Redis each time the homepage is visited. In case of Redis connection failure, the application will retry up to 5 times
