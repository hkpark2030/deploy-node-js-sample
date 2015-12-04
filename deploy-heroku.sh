#!/bin/bash

# 4. deploy to Heroku from a new terminal
git clone https://github.com/heroku/node-js-sample.git
cd node-js-sample
heroku create
git push heroku master
heroku open
heroku logs --tail
