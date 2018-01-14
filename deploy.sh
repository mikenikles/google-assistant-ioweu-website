#!/bin/bash

# Build website
hugo

# Copy the deployment config
cp now.json public/

# Deploy
cd public
now --public
now alias

# Go back to the root
cd -