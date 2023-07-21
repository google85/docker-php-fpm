## PHP-FPM Docker image

#### What is PHP-FPM?
- **PHP-FPM** (FastCGI Process Manager) is an alternative PHP *FastCGI* implementation with some additional features useful for sites of any size, especially busier sites.

#### Usage
- Start:
    ```bash
    docker run -it --name phpfpm -e PHP_VERSION=8.2.0 -v /path/to/app:/var/www/html google85/php-fpm
    ```

- That's it!