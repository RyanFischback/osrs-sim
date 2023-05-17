# Project Setup

To set up and run the project, follow these steps:

1. Clone the repository:

   ```bash
   git clone <repository_url>
   
2. Install dependencies:

Run the following command in the **root** and **frontend** directories of the project: 
   ```bash
   npm install
   ```

3.) Set up the PostgreSQL database:

3.1; Run the Create.sql and Data.sql scripts found in backend/db/scripts/ to create a local PostgreSQL database. 


3.2; You can use tools like pgAdmin for this step. TODO: update Create.sql to create the database as well. 


3.3; Create a .env file in the main directory of the project and provide the required PostgreSQL connection details:

host=localhost
port=<port_number>
dbname=<database_name>
user=<username>
password=<password>
  
  
3.4; Replace <port_number>, <database_name>, <username>, and <password> with your actual PostgreSQL connection details.

4.) Run the project:

After completing the previous steps, you can run the project by executing the following command in the main directory:
  
  ```
  npm run dev
  ```
This command will start the backend and frontend together for easily development and general hosting
