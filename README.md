This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).


Deployment with docker + K8s

#### Build with NPM
`npm run-script build`

#### To build the image
`sudo docker build -t <docker-hub-user/image-name:version> .`

#### Push the image to dockerhub
`sudo docker push <docker-hub-user/image-name:version>`


#### Update `deployment.yaml` with the latest image:

```yaml
containers:
  - name: leashapp
    image: <docker-hub-user/image-name:version>
    imagePullPolicy: Always
    ports:
      - containerPort: 80
```
#### Apply with K8s
Start app in K8s:
`kubectl apply deployment.yaml`

#### Launch service in minikube
`minikube service leashapp`
