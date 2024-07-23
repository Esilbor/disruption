| Valid Commands                         | Description                                                                                                   |
|:---------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| docker compose ls                      | Lists running Docker Compose projects.                                                                        |
| docker compose -p srcs stop            | Stops services for the project named 'srcs'.                                                                  |
| docker exec -it wordpress /bin/bash    | Starts an interactive bash session in the running 'wordpress' container.                                      |
| docker exec -it mariadb /bin/bash      | Starts an interactive bash session in the running 'mariadb' container.                                        |
| mysql;                                 | Starts the MariaDB monitor within the 'mariadb' container.                                                    |
| show databases;                        | Shows all databases in the MariaDB instance.                                                                  |
| use wordpress;                         | Switches to the 'wordpress' database.                                                                         |
| show tables;                           | Lists all tables in the current database.                                                                     |
| desc wp_users;                         | Describes the structure of the 'wp_users' table.                                                              |
| desc wp_comments;                      | Describes the structure of the 'wp_comments' table.                                                           |
| select ID, display_name from wp_users; | Selects and displays the 'ID' and 'display_name' columns from the 'wp_users' table.                           |
| code .                                 | Opens the current directory in Visual Studio Code.                                                            |
| docker volume --help                   | Displays help for Docker volume management commands.                                                          |
| docker volume rm --help                | Displays help for the 'docker volume rm' command, which removes one or more volumes.                          |
| docker system prune --all              | Removes all stopped containers, unused networks, images, and build cache with confirmation.                   |
| docker volume ls                       | Lists all Docker volumes.                                                                                     |
| ls                                     | Lists files and directories in the current directory.                                                         |
| cp ~/.env ./srcs/                      | Copies the '.env' file from the home directory to the 'srcs' directory.                                       |
| cd srcs                                | Changes the current directory to 'srcs'.                                                                      |
| ls -la                                 | Lists files and directories in the current directory with detailed information.                               |
| cd ..                                  | Moves up one directory level.                                                                                 |
| make                                   | Executes the commands in the 'Makefile', which includes creating directories and running 'docker compose up'. |
| ps -aux                                | Lists all running processes with detailed information.                                                        |