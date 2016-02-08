# Learning how works scripts

This repo is for only learn how works the "scripts" key in a package.json

## Pre-requisites

You only need node the lastest version, then download this repo
and run into the cloned folder:

```
~  npm install
```

## Single "hello world"

```
~ npm run hello-scripts
```

## Hint some scripts

```
~ npm run hint
```

## Report the complexity script's

```
~ npm run complexity
```

### Source:

http://blog.npmjs.org/post/118810260230/building-a-simple-command-line-tool-with-npm

http://www.jayway.com/2014/03/28/running-scripts-with-npm/

http://substack.net/task_automation_with_npm_run


### WARNING:

This repo only works por unix/linux, osx systems, for Windows users its still a problem with some features, check out this issues:

https://github.com/npm/npm/issues/6543

https://github.com/npm/npm/issues/9420

### Alternative with docker (WIP)


```
~ docker build -t buildtool .
```


```
~ docker -rm -i -v $(pwd):/usr/src/app -t buildtool npm run [my taskname]
```

