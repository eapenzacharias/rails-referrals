# Rails Referrals

> A simple referral system built on Rails

User can share there referral link or send a referral email and track count of total successful referals and there names.

### Current API URL: `https://rails-referrals.herokuapp.com/api/`
## Built With

- Ruby on Rails

## Getting Started

### Prerequisites

- Ruby
- Postgres server

### Setup

Clone this repo and enter the directory.

```sh
git clone git@github.com:eapenzacharias/rails-referrals.git && cd rails-referrals
```

### Install

Run the following command to install all the dependencies.

```sh
bundle install
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails db:create # create database
rails db:migrate # migrate tables
rails s # to start the server
```

## API REQUEST EXAMPLES

#### Sign Up
```json
URL without referral: http://domain.com/api/auth
URL with referral: http://website.com/api/auth/?referrer={User ID of the referrer}
Method: POST

Request example:
{ 
   "email": "user@test.com",
   "password": "password",
   "password_confirmation": "password",
   "name": "User"
}
```

#### Sign In
```json
URL: http://domain.com/api/auth/sign_in
Method: POST

Request example:
{
   "email": "user@test.com",
   "password": "password"
}
```

### Authentication headers example for all further queries
```
"access-token": "wwwww",
"token-type":   "Bearer",
"client":       "xxxxx",
"expiry":       "yyyyy",
"uid":          "zzzzz"
```

#### Sign Out
```json
URL: http://domain.com/api/auth/sign_out
Method: DELETE
```

#### Referrals of current_user
```json
URL: http://domain.com/api/referrals
Method: GET
```

#### Current_user referred by
```json
URL: http://domain.com/api/referred_by
Method: GET
```

#### Send invite email
```json
URL: http://domain.com/api/send_invite
Method: POST

Request example:
{
   "email": "name@domain.com"
}
```

## Author

## Authors

👤 **Eapen Zacharias**

- GitHub: [@eapenzacharias](https://github.com/eapenzacharias)
- Twitter: [@eapenzac](https://twitter.com/eapenzac)
- LinkedIn: [eapenzac](https://linkedin.com/in/eapenzac)

## Show your support

Give a ⭐️ if you like this project!
