# Default jupyter container

## Execução

1. Pull no repositório
2. Se necessario: docker pull python:3.6-slim
3. No terminal: docker build -t alexandria-notebooks .
4. No terminal: docker run --rm --name alexandria-notebooks -p 8888:8888 -v $(pwd):/alexandria-notebooks -i -t alexandria-notebooks /bin/bash
5. No terminal: bash start.sh