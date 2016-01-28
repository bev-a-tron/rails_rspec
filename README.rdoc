##README

Install gems, then generate rspec file and helper files:

```
bundle install
rails generate rspec:install
rm -rf test
rake db:migrate
```

