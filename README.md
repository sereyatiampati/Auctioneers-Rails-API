# Auctioneers App

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)
![Render](https://img.shields.io/badge/Render-46E3B7?style=for-the-badge&logo=render&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![JWT](https://img.shields.io/badge/JWT-000000?style=for-the-badge&logo=JSON%20web%20tokens&logoColor=white)

## Description
This is an e-commerce auctioneering application that allows users to bid for products. This repository contains the data for the application and the necessary authorization & authentication measures used in the frontend.



---
**Authors and Contributors**
| No  |      Name      |                  Email                   |     Role      |
| :-: | :------------: | :--------------------------------------: | :-----------: |
|  1 | Emilly Tiampati  | emilly.tiampati@student.moringaschool.com |   Scrum Master  & Developer    |
|  2  | Alois Mbutura  | 	alois.mbutura@student.moringaschool.com |   Developer      |
|  3  | Daniel Njuguna  |daniel.njuguna@student.moringaschool.com |   Developer      |
|  4  | Randy Cherutich  | randy.cherutich@student.moringaschool.com |   Developer        |
|  5  | Maryann Njuguna  | maryann.njuguna@student.moringaschool.com |   Developer       |
|  6  | Kenny Saruni  | kenny.saruni@student.moringaschool.com |   Developer       |

---



## ERD
![This is an ERD image](/public/erd.png)

## Ruby version
ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-linux]

## Dependencies
- Make sure ruby is installed in your machine by using this command:
```bash
  rvm list
```
- It should show the ruby version installed.
- If there is no output, install ruby with this command:
```bash
  rvm install 2.7.4 --default
```

- Run the application on your terminal with this command:
```bash
  rails s
```

## Services (routes)

- The routes available for this API are:
* PRODUCTS:
  * get '/products'
  * get '/products/:id'
  * post '/products'
  * delete 'products/:id'
  * get '/latest_products'
  * get '/highestbid/:id'
  * get '/activebids'
  * get '/inactive_bids'
  * patch '/close_bid/:id'
  * patch '/products/:id'

* BIDS:
  * get '/bids'
  * post '/bids'
  * delete '/bids/:id'
  * get '/productbids/:id' (getting bids for a specific product)
  * get '/bidhistory'
  * get '/bids/:id (getting a specific bid)

* CATEGORIES:
  * get '/categories'
  * get '/categories/:id'
  * post '/categories'
  * delete '/categories/:id'
  * get '/category_products/:id'

## Authors

- [@Emily Tiampati](https://github.com/sereyatiampati)
- [@Kenny Saruni](https://github.com/Kennysaruni)
- [@Alois Mbutura](https://github.com/mbutura)
- [@Daniel Njuguna](https://github.com/kagu-dante)
- [@Maryann Njuguna](https://github.com/mary-ruguru)
- [@Randy Kipkurui](https://github.com/randy-04)

## License
[MIT](https://github.com/sereyatiampati/Auctioneers-Rails-API/blob/master/LICENSE.md)
