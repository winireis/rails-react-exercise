# README

Este código é um estudo para desenvolvimento de uma API em Ruby on Rails e Front-end em React com deploy em uma única instância no Heroku.

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
Editamos o database.yml para conectar ao PostgreSQL no ambiente de desenvolvimento e teste.
[8fd8570](https://github.com/winireis/rails-react-exercise/commit/8fd8570c7a288fb5827f1e5349641610b3238a4c)
