#!/bin/bash

VERSION=0.0.6

# exit when any command fails
set -e

## Backend
echo "Building backend..."
cd backend
docker build --tag=mreishus/spades-backend:$VERSION --tag=mreishus/spades-backend:latest .
docker push mreishus/spades-backend:latest
docker push mreishus/spades-backend:$VERSION
cd ..

## Frontend
echo "Building frontend..."
cd frontend
docker build --tag=mreishus/spades-frontend:$VERSION --tag=mreishus/spades-frontend:latest .
docker push mreishus/spades-frontend:latest
docker push mreishus/spades-frontend:$VERSION
cd ..

echo "Done!"
