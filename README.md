# sym02
##website-skeleton

### Work Process

#### Update dependencies
1) composer update

#### Run server
1) php bin/console server:run

#### Modify .env
1) change .env with DB connexion: 
DATABASE_URL=mysql://root:@127.0.0.1:3306/sym_02
2) The future DB will be sym_02

#### Install security-checker for composer
1) composer require sensiolabs/security-checker --dev
2) test it with: composer update

#### Create DB (Database name is in .env)
php bin/console doctrine:database:create

#### Create an entity, like a table in MySQL
php bin/console make:entity
> Article
> titre
> ? (for view all type)
> string
> 150
> no
> description
> text
> no
> temps
> datetime
> yes
> auteur
> string
> no
#### Prepare SQL in a migration files in MySQL
php bin/console make:migration

#### Real migrations
php bin/console doctrine:migrations:migrate

#### Save DB in config folder 
datas/base01.sql