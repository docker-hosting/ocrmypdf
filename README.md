# ocrmypdf

OcrMyPdf batch processing image

Example usage in docker-compose file:
```
OCRmyPDF:
    image: pombeirp/ocr2pdf-watchdog
    container_name: OCRmyPDF
    network_mode: none
    volumes:
        - <path/to/archive/folder/on/host>:/archive
        - <path/to/watch/folder/on/host>:/hot-folder
        - /etc/localtime:/etc/localtime:ro
    environment:
      - PUID=<UID>
      - PGID=<GID>
      - "OCRMYPDF_OPTIONS=--pdf-renderer tess4 --tesseract-timeout 600 --author \"Your name\" --rotate-pages -l eng+fra+por+deu --deskew --clean --skip-text"
    restart: always
```
