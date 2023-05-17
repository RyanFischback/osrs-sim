1.)	git clone
2.)	Run the “npm install” command in the main directory of the project, as well as the “frontend” folder. This will install the required dependencies for running the project. 
2.1) Run Create.sql & Data.sql scripts found in backend/db/scripts/ to create a local postgresql database. (I use pgAdmin) -- TODO: Update Create.sql to create the database as well. (Right now only creating schema)
2.2.) Create a .env file inside of the main directory:
host=localhost
port=
dbname=
user=
password=
3.)	After you have ran the “npm install” command in each of the three directories, you will now be able to run the project by typing the “npm run dev” command in the main directory
