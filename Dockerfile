FROM  archlinux/base:latest

WORKDIR /app
ADD . /app

RUN pacman -Syyuu --noconfirm
RUN pacman -S git base-devel chromaprint wget curl ffmpeg lame python python-pip imagemagick iputils jq tor --needed --noconfirm
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
