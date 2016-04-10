## openshift-webclient setup
```sh
oc new-app https://github.com/debianmaster/openshift-webclient  --name='shell'
oc expose dc/shell
```

## How to use?
> access this website @    http://shell-{project}.{oseenv}.com:8443   
> login with username    *foo*   password  *bar*  
> click on *Open terminal*  on top right corner  
> Double cick on shell window to maximize window  

```sh
oc login http://shell-{project}.{oseenv}.com:8443
```





>  Note:   This image needs privilaged container (will change in near future)  access on openshift to run.
Check this link for more info on how to enable privilaged mode https://github.com/debianmaster/Notes/wiki/Enabling-privileged-containers-on-Openshift

