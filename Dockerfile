FROM  archlinux/base:latest

WORKDIR /app
ADD . /app


RUN pacman -Syyuu --noconfirm
RUN pacman -S git base-devel chromaprint wget curl ffmpeg lame python python-pip imagemagick iputils jq tor --needed --noconfirm
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp
RUN pip install -r requirements.txt
CMD ["python", "main.py"]
