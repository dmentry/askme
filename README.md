# Askme (Хорошие вопросы)

Web-application where users could ask and answer questions. Registered and anonymous users could ask questions. Google CAPTCHA is applied via reCAPTCHA gem in security reasons. Application uses Heroku for hosting.

## Live Demo
https://allask.herokuapp.com

## Screenshot
![Application screenshot](https://github.com/dmentry/askme/blob/master/askme_screenshot.jpg)

## Main requirements
* Ruby 2.7.0

* Rails 6.0.3

## Clone

```
git clone git@github.com:dmentry/askme.git
```

## Before run
### Install and migrate db

```
bundle install
```

```
bundle exec rake db:migrate
```

```
yarn
```

Put keys for captcha into environment variables `RECAPTCHA_ASKME_PUBLIC_KEY`, `RECAPTCHA_ASKME_PRIVATE_KEY`

### Start server
To start rails server:

```
bundle exec rails s
```

### Open in browser

http://127.0.0.1:3000
