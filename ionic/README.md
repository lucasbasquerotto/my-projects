# Ionic + Docker

## 1) Command to build

```
sudo docker build -t ionic3 .
```

## 2) Command start the container

### 2.1) Linux

```
sudo docker run -it -v $(pwd):/app --rm -p 8100:8100 -p 35729:35729 ionic3
```

### 2.2) Windows (cmd)

```
docker run -it -v %cd%:/app --rm -p 8100:8100 -p 35729:35729 ionic3
```

Since you’re inside the container and the directories are binded, you can use any command from npm, ionic or cordova.
