# Good questions

Web-application where users could ask and answer questions. Registered and anonymous users could ask questions. Google CAPTCHA is applied via reCAPTCHA gem in security reasons. Application uses Heroku for hosting.

# Try application
https://allask.herokuapp.com

# Screenshot
![Application screenshot](https://github.com/dmentry/askme/blob/master/askme_screenshot.jpg)

# System
Ruby 2.7.0

Rails 6.0.3

# Installation
git clone git@github.com:dmentry/askme.git

## Before run
bundle && bundle exec rake db:migrate

Write keys for captcha in environment variables (RECAPTCHA_ASKME_PUBLIC_KEY, RECAPTCHA_ASKME_PRIVATE_KEY)

## Run locally server
bundle exec rails s

Open in browser

http://127.0.0.1:3000


