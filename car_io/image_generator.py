#!/usr/bin/python3
import datetime
import time
import os
from PIL import Image


def dump_image():
    im = Image.new("RGB", (128, 128), "#FF0000")
    filename = os.path.join("captures", f"{datetime.datetime.now()}.png")
    im.save(filename)


if __name__ == "__main__":
    while True:
        time.sleep(1)
        dump_image()
