#Here we got the text desired, now i was determining which OCR reader package was better, the ultimate pick was magicK.
#Becuase of the multiple options to truly get the reader to extract text properly.


#DHSphoto first attempt to scan using OCR
library(tesseract)
fra <- tesseract("fra")
text2 <- tesseract::ocr("SenDHS1986.png", engine = fra)
cat(text2)


#DHS better visualization and accuracy, all of the asterisks are seen and not re arranged with regular OCR thank you magicK
library(magick)
input <- image_read("SenDHS1986.png")

text3 <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr('fra') 

cat(text3)

# What cat(text3) spews, the original french text of the picture I had grabbed.

"TABLEAU 2.2 POURCENTAGE DES FEMMES ACTUELLEMENT EN UNION QUI SONT EN
UNION POLYGAME SELON L'AGE ACTUEL ET LES VARIABLES SOCIO-
DEMOGRAPHIQUES l

Age actuel de la femne
Variables socio-
démographiques 15-19 20-24 25-29 30-34 35-39 40-44 45-49 Total
Milieu
Urbain 23,8 25,2 31,3 49,6 60,9 54,2 55,0 41,4
Rural 27,7 36,8 45,7 60,3 65,2 62,1 64,9 49,0
Région
Ouest 23,5 29,6 30,3 48,7 57,4 54,3 55,3 49,0
Centre 21,4 30,0 46,6 65,3 66,7 67,6 72,3 49,0
Nord-Est 32,0 34,3 51,0 50,0 66,7 57,4 52,5 47,0
Sud 39,7 48,4 41,6 59,0 68,3 53,5 58,5 51,7
Ethnie
Wolof 28,6 27,5 43,3 60,4 69,4 68,3 80,2 50,1
Poular 29,1 36,6 41,9 56,9 63,5 52,5 51,5 44,8
Serer 14,3 25,0 30,4 49,0 50,0 56,0 52,6 38,0
Mandingue 26,1 35,5 47,5 58,3 74,1 * * 48,8
Diola * 57,1 33,3 44,4 52,2 * * 44,2
Autres 29,8 50,0 45,8 51,0 59,1 71,0 50,0 49,1
Instruction
Aucune 27,7 34,4 44,1 59,9 65,6 59,9 62,5 48,7
Primaire 12,5 29,2 31,4 47,9 52,9 * * 36,4
Secondaire + Li 22,2 12,8 26,7 45,5 * * 26,8
Alphabétisation
Ne sait pas lire 27,7 34,8 43,9 60,1 65,8 59,7 62,6 48,6
Sait lire 13,0 22,7 23,1 35,6 48,1 * * 30,8
Total 27,1 33,2 40,9 56,0 63,7 59,7 62,0 46,5
ESF, 1978%* 30,6 35,5 46,5 57,7 56,5 65,5 64,8 48,5
*Moins de 20 femmes
**Enquête Sénégalaise sur la Fécondité, 1978, Vol. I, p. 79, Direction de
la Statistique, Division des Enquêtes et de la Démographie, Dakar, juillet

1981."


#The Polygamy write-up Sections from SenegalDHS1986, but we let R the library package do its magicK
library(magick)
input <- image_read("Polygamie.png")

text4 <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr('fra') 

cat(text4)

library(magick)
input <- image_read("polygamie2.png")

text5 <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr('fra') 

cat(text5)


#Now we need to translate text 3, text 4 and 5 to understand what is happening, my french is not that strong.

#After some further research and given the money and time constraints, I decided to ditch the hunt for a translation API and just use Microsoft Azure translate.

#Once we translate text and chart we can proceed with other required information

#Then we create output csv file for table given in text 3 and if lucky possibly an R package?
#Translating text3,text4 and text5 to understand the polygamy situation within Senegal.
