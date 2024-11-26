#!/bin/bash
echo "Running unit tests..."
# Run unit tests using Maven (JUnit is typically integrated with Maven)
mvn test

echo "Running integration tests..."
# If you have a separate integration test phase, run it here
mvn verify

