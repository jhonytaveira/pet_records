# Pet-Records
&nbsp;
### Installation
   [postgresql](https://www.postgresql.org/) version 9+
 
   Ruby version 2.5.3
 
   Rails version 5.2.4
 
```sh
git clone git@github.com:jhonytaveira/pet_records.git
cd pet_records/
bundle install
```
>
> Configure database.yml with your credentials. You can use database.sample.yml as example
>
```sh
rake db:create
rake db:migrate
```

```sh
rails s
```
&nbsp;
&nbsp;

# running tests

>
> https://chromedriver.chromium.org/downloads For test features, you must install chromedriver and compatible chrome version
> 
>

```sh
rspec spec/
```
