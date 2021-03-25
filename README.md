# nsxt-3.1-lab-2021

## Software Version as of 2021.3
- NSX-T 3.1
- Terraform 0.14.7
- PostgreSQL 13.2.1
- Jenkins 2.263.4

## How it works
- User wants to make a change to NSX-T, he updates the terraform files in the terraform folder
- Commit the change
- Jenkins will be triggered or scheduled, it applies the terraform changes

## Jenkins Job
![Jenkins job](docs/Picture1.png)
