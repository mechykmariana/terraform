    #!/bin/bash
    
    sudo apt update
    sudo apt install -y apache2 php libapache2-mod-php php-mysql
    sudo apt install mysql-server
    sudo systemctl start apache2
    sudo systemctl enable apache2
    sudo mysql -u root -p
    rm /var/www/html/index.html
    sudo mv /var/www/html/index.html /var/www/html/index.html.old
    sudo mv /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.old

    sudo mv /tmp/index.php /var/www/html/index.php 
    sudo mv /tmp/index.html /var/www/html/index.html 

    CREATE DATABASE web;
    USE web;

    CREATE TABLE register (
        UserName varchar(255),
        Password varchar(255)
    );

    CREATE USER 'DBname'@'localhost' IDENTIFIED BY 'DBpassword';
    GRANT ALL PRIVILEGES ON web.* TO 'DBname'@'localhost';
    FLUSH PRIVILEGES;

    exit
