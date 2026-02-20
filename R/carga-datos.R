
apellidos_por_provincia_url <- "https://datosabiertos.renaper.gob.ar/apellidos_cantidad_personas_provincia.csv"

apellidos_por_provincia_datos <- "data/apellidos_cantidad_personas_provincia.csv"

download.file(url = apellidos_por_provincia_url, destfile = apellidos_por_provincia_datos)

apellidos <- readr::read_csv("data/apellidos_cantidad_personas_provincia.csv")

str(apellidos)
