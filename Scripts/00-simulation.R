#Installing tesseract 
install.packages('tesseract')
install.packages("magick")


#Use tessaract
library(tesseract)
eng <-tesseract("eng")
text <- tesseract::ocr("Mariama_Ba.png", engine = eng)
cat(text)

#code from: https://cran.r-project.org/web/packages/tesseract/vignettes/intro.html I used the code to capture the book page better (Thanks R and magicK).
library(magick)
input <- image_read("Mariama_Ba1.png")

text <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr() 

cat(text)



tesseract::tesseract_info() #shows we only got English OCR

tesseract_download("fra") #downloads french OCR
(french <- tesseract("fra")) #loads french OCR


#We test out french OCR with test poem from Senghor using magicK

library(magick)
input <- image_read("testsenghor.jpeg")

text1 <- input %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr('fra') 

cat(text1)


