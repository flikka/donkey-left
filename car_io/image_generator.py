#!/usr/bin/python3
import datetime
import os
from PIL import Image

def dump_image():
    im = Image.new("RGB", (128, 128), "#FF0000")
    filename = os.path.join("captures", f"{datetime.datetime.now()}.png")
    im.save(filename)

if __name__=="__main__":
    for i in range(0,10):
        dump_image()