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



