#!/bin/bash

# Initialize the git repository
git init

# Add a node .gitignore
wget -O .gitignore https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore

# Initialize the package.json
# I prefer an empty json object over all of the defauls
echo "{}" > package.json

# Touch the initial js file
touch index.js

# Create the first commit
git add .
git commit -m 'Initial commit'
