## Setup
- Clone your project
- Go to the folder application using cd command on your cmd or terminal
- Run composer install on your cmd or terminal
- Copy .env.example file to .env on the root folder. You can type copy .env.example .env if using command prompt - Windows or cp .env.example .env if using terminal, Ubuntu
- Open your .env file and change the database name (DB_DATABASE) to whatever you have, username (DB_USERNAME) and password (DB_PASSWORD) field correspond to your configuration.
- Run php artisan key:generate
- Run php artisan migrate or Create your new database mysql and import file "dbtinder.sql" 
- Run php artisan serve
- Go to browser : http://localhost:8000/



## People Swagger
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/cdb46f64-386e-4f89-90f5-9cb51890b471)


<br> <br>
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/0272c53d-84c2-4294-91dc-52e69cf6b4fe)



<br> <br>
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/2034184b-6504-4bf4-91dd-3395154f43e8)


<br> <br>
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/94c938fd-6b8a-4033-b274-a8120c0c8654)


<br> <br>
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/6a08bf05-101f-4d98-9d85-07d9e4102f27)


<br> <br>
![image](https://github.com/sahadroid/tinderapp_laravel/assets/27715383/ac92b381-2d07-40e7-a83b-ff716d6055a1)



## Cronjob
<img width="711" alt="Screen Shot 2024-04-26 at 12 01 40" src="https://github.com/sahadroid/tinderapp_laravel/assets/27715383/e3d63f7c-1cc7-48c0-a7d7-e242e5737958">


<br> <br>
#This will run the command every hour.
<img width="501" alt="Screen Shot 2024-04-26 at 12 05 51" src="https://github.com/sahadroid/tinderapp_laravel/assets/27715383/0f9cc46e-0cf7-4336-9cde-c94622b4eff1">

<br> <br>
#Cron entry to your server
<img width="824" alt="Screen Shot 2024-04-26 at 12 03 53" src="https://github.com/sahadroid/tinderapp_laravel/assets/27715383/af8f7d54-a553-4f57-aaab-9971aa2c8aa2">