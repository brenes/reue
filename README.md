# Reue

This rails APP is an app deployable in a Raspberry Pi device to collect and show weather measurements.

# Install in Raspberry

Following come some instructions for installing the app in the final device.

The raspberry will be called `raspi` and the domain of the app will be `reue.raspi`. If you want to change the name and domain you should change the deploy recipe and nginx configuration.

## Accessing the Raspberry

In order to deploy the app we will use capistrano and it will rely on you having access to the Raspberry via SSH.

So the first task is to ensure you have access via SSH with a user with proper permissions.

Also, change your `/etc/hosts` to solve the domains `raspi` and `reue.raspi` to the raspberry IP.

```
192.168.1.206 reue.raspi
192.168.1.206 raspi
```

## Install ASDF, Ruby and NodeJS

In fact, [ASDF](https://github.com/asdf-vm/asdf) is not really required but it makes easier to install ruby and nodejs versions.

The versions currently tested are:

* Ruby: 2.7.2
* Nodejs: 15.2.1

## Deploy the app

Just do a `cap production deploy`

## System.d services

1. Copy the files in `raspi/systemd` in the raspberry `/etc/systemd/system/` folder.

## Nginx configuration

1. Install Nginx.
2. Copy the files in `raspi/nginx` in the raspberry `/etc/nginx/sites_available/` folder.

