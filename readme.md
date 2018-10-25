# Kensim

## Introduction
This project was submitted to [Strathmore University](https://www.strathmore.edu/) on July of 2018 as part of the evaluation for Human Computer Interaction. The contributors fof this project were: [Anastasia Macharia](https://github.com/clare44macharia), [Caroline Kamau](https://github.com/Caroline-Kamau) and [Miller Adulu](https://github.com/MillerAdulu)

This HCI project was intended to improve the user experience for [Kensim](http://kensim.co.ke). Kensim is a real estate website for an agency that is supposed to enable them showcase their properties for interested clients. As of the time the project commenced Kensim the experience on Kensim was like [this](https://drive.google.com/file/d/11LYHkYIaI_KUt82wDgZQKXnr8p5VjAr7/view).

## Areas addressed
    1. Getting the search to work in a robust manner using the Algolia search engine
    2. Improving the UI to be adaptable to mobile
    3. Improving the process of adding properties to the listings on the backend

## Setup

1. Clone the project
2. Rename the *.env.example* file to *.env*
3. Run *composer install* in the directory. If you get errors, ensure to check that the required php extensions are installed and enabled on your server.
4. Run *php artisan key:generate* in the directory to set the APP_KEY used by [Laravel](https://laravel.com/)
5. Setup an algolia account and copy the application id and secret into the *.env* file that allow upload of models *(The admin id)*. Configure the remaining options based on the [documentation](https://www.algolia.com/doc/api-client/laravel/install/).
6. Setup a Google Maps API and copy the API key into the *.env* file and set the central latitude and longitude appropriately.
7. Upload the sample database provided to your server and set the database variables accordingly.
8. Setup a [Laravel Voyager](https://docs.laravelvoyager.com) instance using these [instructions](https://docs.laravelvoyager.com/getting-started/installation).
9. Run `php artisan eyewitness:install` to setup [Eyewitness.io](https://eyewitness.io/) to help view the application status.
10. Run `php artisan serve` to launch the application.
11. On the Laravel Voyager admin panel, add a few properties and pictures.
12. On a separate terminal opened in the same folder, run `php artisan scout:import "App\Property"` to index the added properties so that they are available for searching.
13. Close the second terminal and search away. :tada: