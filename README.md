>  Note:   This image needs privilaged container (will change in near future)  access on openshift to run.
Check this link for more info on how to enable privilaged mode https://github.com/debianmaster/Notes/wiki/Enabling-privileged-containers-on-Openshift



## openshift-webclient setup
```sh
oc new-project cli
oc new-build https://github.com/debianmaster/openshift-webclient --strategy=docker --name=webconsole
oc new-app webconsole --name=webcli
```
> multiple

```sh
for a in {1..9}; do oc new-app webconsole --name=user0$a; done;

for a in {10..15}; do oc new-app webconsole --name=user$a; done;

for a in {1..9}; do oc expose svc/user0$a  done;

for a in {10..15}; do oc expose svc/user$a; done;
```

## How to use?
> access this website @    http://shell-{project}.{oseenv}.com:8443   
> login with username    *foo*   password  *bar*  
> click on *Open terminal*  on top right corner  
> Double cick on shell window to maximize window  


```sh
oc login http://shell-{project}.{oseenv}.com:8443
```

## Setup user pods

```sh
oc project web

for i in {0..10} ; 
do 
oc new-app debianmaster/ose-client:v8 --name=user0$i
oc expose svc/user0$i
sleep 1
done;

for i in {10..40} ; 
do 
oc new-app debianmaster/ose-client:v8 --name=user$i
oc expose svc/user$i
sleep 1
done;
```





