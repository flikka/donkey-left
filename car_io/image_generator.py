#!/usr/bin/python3
import logging
import datetime
import time
import os
from PIL import Image

logger = logging.getLogger(__name__)
logger.setLevel("DEBUG")
logger.addHandler(logging.StreamHandler())

def dump_image():
    im = Image.new("RGB", (128, 128), "#FF0000")
    filename = os.path.join("captures", f"{datetime.datetime.now()}.png")
    im.save(filename)
    logger.debug(f"Wrote file {filename}")


if __name__ == "__main__":
    while True:
        time.sleep(1)
        dump_image()
