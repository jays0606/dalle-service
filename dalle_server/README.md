## Dalle flask service

## Dockerfile 

`docker build -t dalle .`
`docker run -it --gpus all -p 80:80 --name dalle dalle`

### Installation

`pip install -r requirements.txt`

## Usage

change model_paths.json with your dalle checkpoints

`python3 app.py 1234`
