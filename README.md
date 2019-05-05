# README

Este código é um estudo para desenvolvimento de uma API em Ruby on Rails e Front-end em React com deploy em uma única instância no Heroku.

[b1aa193](https://github.com/winireis/rails-react-exercise/commit/b1aa193a62aac34d8bebee3335884b952c60ff1d)
Para criarmos a estrutura inicial do projeto da API em Ruby on Rails, utilizando o rvm e uma gemset específica para o projeto.
```
$ mkdir rails-react-exercise
$ cd rails-react-exercise
$ rvm use --create --rvmrc 2.6.0@rails-react-exercise
$ cd ..
$ cd rails-react-exercise
$ gem install rails
$ rails new . -d postgresql --api -T
```

[8fd8570](https://github.com/winireis/rails-react-exercise/commit/8fd8570c7a288fb5827f1e5349641610b3238a4c)
Editamos o database.yml para conectar ao PostgreSQL no ambiente de desenvolvimento e teste.

[93b79a4](https://github.com/winireis/rails-react-exercise/commit/93b79a49575fe4d690b0db82fb1a854d14ee02bf)
Adicionamos as gems jwt, bcrypt e rspec-rails.

[bf1eaaa](https://github.com/winireis/rails-react-exercise/commit/bf1eaaa542e3baaa48a70ef2614762f92c08cf86)
Criamos o front-end React dentro da pasta principal do projeto em Ruby on Rails da seguinte forma:
```
npm install -g create-react-app
create-react-app client
```
[4df9ff8](https://github.com/winireis/rails-react-exercise/commit/4df9ff8891efca5a68d5fff2f9cf1e8e0d2f0dba)
Criamos o Procfile.dev para levantar API e Front-end em desenvolvimento. Levantamos o servidor com o comando a seguir
```
$ heroku local -f Procfile.dev
```
[98c0511](https://github.com/winireis/rails-react-exercise/commit/98c0511dc36c740cbd6e73444b7b74c31cd64619)
Criamos o Procfile para levantar a API no Heroku. E executamos alguns comandos para o Heroku saber que deve levantar o React primeiro.
```
$ heroku apps:create
$ heroku buildpacks:add heroku/nodejs --index 1
$ heroku buildpacks:add heroku/ruby --index 2
$ git add .
$ git commit -m "Starting Rails and React on Heroku"
$ git push origin master
$ git push heroku master
$ heroku open
```
