1. Clone the repository:
```
git clone https://github.com/yourusername/Python-Image-Classifier-with-RESTful-API.git
```
2. Change into the project directory:
```
cd Python-Image-Classifier-with-RESTful-API
```
3. Build the Docker image:
```
docker build -t image_classifier .
```
Start the Docker container:
```
docker run -p 5000:5000 -d image_classifier
```

Open your browser and go to http://localhost:5000/ to access the web interface of the application.
![alt text](https://github.com/Oliver0804/Python-Image-Classifier-with-RESTful-API/blob/main/doc_pic/1.png?raw=true)

This application also supports object detection on uploaded images. You can use the POST method to upload an image to the /upload endpoint and the API will return the class and coordinates of all objects in the image.

![alt text](https://github.com/Oliver0804/Python-Image-Classifier-with-RESTful-API/blob/main/doc_pic/2.png?raw=true)
![alt text](https://github.com/Oliver0804/Python-Image-Classifier-with-RESTful-API/blob/main/doc_pic/3.png?raw=true)

In summary, Python-Image-Classifier-with-RESTful-API is a convenient and easy-to-use image recognition application. Deploying it with Docker allows developers to quickly set up a self-contained development environment, which makes it easy to customize and extend the application.
