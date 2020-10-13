car <- list(
  drive="I'm driving",
  gudok="biiib - biiib",
  mass = "до 3,5 тонн"
)
class(car) <- "empl"

attributes(car)

car 

print.empl <- function(voditel){
  cat("Сигналит", voditel$gudok, "\n")
  cat("Ездит", voditel$drive, "\n")
  cat("Весит", voditel$mass, "\n")
}


methods(, "empl")
print.empl

car

electrocar <- list(
  drive="I'm driving",
  gudok="biiib - biiib",
  mass = "до 3,5 тонн",
  toplivo = "электричество" 
)
print.empl <- function(voditel){
  cat("Сигналит", voditel$gudok, "\n")
  cat("Ездит", voditel$drive, "\n")
  cat("Весит", voditel$mass, "\n")
  cat("Топливо", voditel$toplivo, "\n" )

}

class(electrocar) <- c("toplivo", "empl") 
electrocar

benzcar <- list(
  drive="I'm driving",
  gudok="biiib - biiib",
  mass = "до 3,5 тонн",
  topl = "бензин" # 
)
print.empl <- function(voditel){
  cat("Сигналит", voditel$gudok, "\n")
  cat("Ездит", voditel$drive, "\n")
  cat("Весит", voditel$mass, "\n")
  cat("Топливо", voditel$topl, "\n" )
}

class(benzcar) <- c("topl", "empl") 
benzcar

dizelcar <- list(
  drive="I'm driving",
  gudok="biiib - biiib",
  mass = "до 3,5 тонн",
  topliv = "солярка" # 
)
print.empl <- function(voditel){
  cat("Сигналит", voditel$gudok, "\n")
  cat("Ездит", voditel$drive, "\n")
  cat("Весит", voditel$mass, "\n")
  cat("Топливо", voditel$topliv, "\n" )
}

class(dizelcar) <- c("topliv", "empl")
dizelcar

print ("Выберите класс автомобиля: electrocar, dizelcar, benzcar")

poisc <- scan ("", what = "")

if (poisc == "electrocar"){
  print(electrocar)
}

if (poisc == "dizelcar"){
  print(dizelcar)
}

if (poisc == "benzcar"){
  print(benzcar)
}

