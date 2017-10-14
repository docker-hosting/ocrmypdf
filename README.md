# ocrmypdf

OcrMyPdf batch processing image

Example usage in docker-compose file:
```
services:
    ocr:
        image: dockerhosting/ocrmypdf
        container_name: ${OCR_CONTAINER}
        network_mode: none
        volumes:
            - ${OCR_OUTPUT}:/archive
            - ${OCR_INPUT}:/hot-folder
            - /etc/localtime:/etc/localtime:ro
        environment:
            - "OCRMYPDF_OPTIONS=--pdf-renderer tess4 --tesseract-timeout 600 --rotate-pages -l eng+fra+por+deu --deskew --clean --skip-text"
        restart: always
```

Then insert in your `.env` file:

```
OCR_CONTAINER=<container_name>
OCR_INPUT=<input directory>
OCR_OUTPUT=<output directory>
```
