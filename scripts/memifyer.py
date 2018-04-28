from display import draw
import glob, os

img_path = "/home/brent/home-iot/scripts/photos/"

os.chdir(img_path)
photo = glob.glob("*.jpg")
array_len = len(photo)

for i in range(array_len):
    photo[i] = img_path.strip('\'') + photo[i]

for j in range(array_len):
    draw(photo[j],"")
