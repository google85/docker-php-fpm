## PHP-FPM Docker image

#### What is PHP-FPM?
- **PHP-FPM** (FastCGI Process Manager) is an alternative PHP *FastCGI* implementation with some additional features useful for sites of any size, especially busier sites.

#### Usage
- Build:
    ```bash
    docker build .  --build-arg PHP_VERSION=8.2  -t google85/php-fpm:8.2
    ```

- Push to Dockerhub:
    ```bash
    docker push google85/php-fpm:8.2
    ```

- That's it!