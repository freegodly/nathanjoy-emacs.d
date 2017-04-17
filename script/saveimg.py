# coding=utf-8
# 保存剪切板图片到文件
# need install  pillow for python
# creator： Nathan Joy


from PIL import Image, ImageGrab
import sys 

if __name__ == '__main__':
    try:
        save_file_name = str(sys.argv[1])
        print(save_file_name)
        im = ImageGrab.grabclipboard()
        if isinstance(im, Image.Image):
            print("Image: size : %s, mode: %s" % (im.size, im.mode))
            im.save(save_file_name)
            print("[[file:\\\\\\%s]]" %save_file_name)
        else:
            print("clipboard no Image")
    except e:
        print("Error")

