; ---------------------------------------- INFORMACION CONTEXTUAL -----------------------------------

(defrule inicio_sistema 
    (declare (salience 99))
    => 
    (printout t "Bienvenido a nuestro sistema a la ayuda de la decision para el diagnostico de enfermedades en los almendros, presione cualquier tecla para continuar" crlf)
    (bind ?tecla_1 (read))   
)

(defrule introducir_mes_año
    (declare (salience 98))
    (not (tecla_1 ?))
    =>
    (printout t "¿En que mes del año nos encontramos para el diagnostico?" crlf)
    (bind ?mes (read))
    (assert (mes ?mes))
)

(defrule introducir_variedad
    (declare (salience 97))
    =>
    (printout t "¿Que variedad de almendro es?" crlf)
    (printout t "[marcona/vairo/guara] " crlf)
    (bind ?variedad (read))
    (assert (variedad ?variedad))
)

(defrule introducir_edad_almendro
    (declare (salience 96))
    =>
    (printout t "¿Que edad tiene el almendro?" crlf)
    (printout t "[ns/joven/adulto/anciano] " crlf)
    (bind ?edad_arbol (read))
    (assert (edad_arbol ?edad_arbol))
)



(defrule introducir_temperatura
    (declare (salience 95))
    =>
    (printout t "¿Como es la temperatura del lugar?" crlf)
    (printout t "[baja/media/alta] " crlf)
    (bind ?temperatura (read))
    (assert (temperatura ?temperatura))
)

(defrule introducir_humedad
    (declare (salience 94))
    =>
    (printout t "¿Como es la humedad del lugar?" crlf)
    (printout t "[baja/media/alta] " crlf)
    (bind ?humedad (read))
    (assert (humedad ?humedad))
)
; ----------------------------------------------------------------------------------------------------

(defrule introducir_sistema 
    (declare (salience 93))
    => 
    (printout t "Ahora pasaremos a la identificación de sintomas, pulser cualquier tecla para continuar" crlf)
    (bind ?tecla_2 (read))   
)

; -------------------------------- SINTOMAS RELACIONADOS CON EL FRUTO--------------------------------
(defrule tonalidad_frutos
    (declare (salience 90))
    (not (tecla_2 ?))
    =>
    (printout t "¿Como es la tonalidad de los frutos?" crlf)
    (printout t "[normal/amarillo/marron/negro] " crlf)
    (bind ?tonalidad_fruto (read))
    (assert (tonalidad_flores ?tonalidad_fruto))
)

(defrule fruto_deshidratado
    (declare (salience 89))
    =>
    (printout t "¿Los frutos estan deshidratados?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?fruto_deshidratado (read))
    (assert (fruto_deshidratado ?fruto_deshidratado))
)

(defrule fruto_adherido
    (declare (salience 88))
    (fruto_deshidratado si)
    =>
    (printout t "¿El fruto está adherido al árbol?" crlf)
    (printout t "[si/no]" crlf)
    (bind ?respuesta (read))
    (assert (fruto_adherido ?respuesta))
)

(defrule fruto_mancha_cascara
    (declare (salience 87))
    =>
    (printout t "¿Observa que en la cascara del fruto tiene manchas?" crlf)
    (printout t "[no/marron/negro] " crlf)
    (bind ?color_cascara_fruto (read))
    (assert (color_cascara_fruto ?color_cascara_fruto))
)

(defrule fruto_abultamiento
    (declare (salience 86))
    =>
    (printout t "¿Observa que en la cascara del fruto exite abultamiento/s?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?abultamiento_fruto (read))
    (assert (abultamiento_fruto ?abultamiento_fruto))
)

;-----------------------------------------------------------------------------------------------------

; -------------------------------- SINTOMAS RELACIONADOS CON LA FLOR--------------------------------
(defrule tonalidad_flores
    (declare (salience 80))
    =>
    (printout t "¿Como es la tonalidad de la flor?" crlf)
    (printout t "[normal/amarillo/marron/negro] " crlf)
    (bind ?tonalidad_flor (read))
    (assert (tonalidad_flores ?tonalidad_flor))
)
; ----------------------------------------------------------------------------------------------------

; -------------------------------- SINTOMAS RELACIONADOS CON LAS RAMAS--------------------------------
(defrule chancros_ramas
    (declare (salience 70))
    =>
    (printout t "¿En las ramas del almendro existe la presencia de chancros?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?chancros_ramas (read))
    (assert (chancros_ramas ?chancros_ramas))
)

(defrule ramas_secas
    (declare (salience 69))
    =>
    (printout t "¿Obersva que las ramas del almendro están secas en su mayoría?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?ramas_secas (read))
    (assert (ramas_secas ?ramas_secas))
)

(defrule tipo_ramas_secas
    (declare (salience 68))
    (ramas_secas si)
    =>
    (printout t "¿Que tipo de marchitamiento esta observando?" crlf)
    (printout t "[ns/simetrica/asimetrica] " crlf)
    (bind ?tipo_marchitamiento (read))
    (assert (tipo_marchitamiento ?tipo_marchitamiento))
)

; ----------------------------------------------------------------------------------------------------

; -------------------------------- SINTOMAS RELACIONADOS CON LOS BROTES--------------------------------
(defrule chancros_brotes
    (declare (salience 60))
    =>
    (printout t "¿En los brotes del almendro existe la presencia de chancros?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?chancros_brotes (read))
    (assert (chancros_brotes ?chancros_brotes))
)
; ----------------------------------------------------------------------------------------------------

; -------------------------------- SINTOMAS RELACIONADOS CON LAS HOJAS--------------------------------
(defrule hoja_mancha
    (declare (salience 53))
    =>
    (printout t "¿Observa en las hojas manchas de colores?" crlf)
    (printout t "[no/amarillo/rojo/morado/negro] " crlf)
    (bind ?mancha_hoja(read))
    (assert (mancha_hoja ?mancha_hoja))
)

(defrule tipo_mancha
    (declare (salience 52))
    (or (mancha_hoja amarillo)
        (mancha_hoja rojo)
        (mancha_hoja morado)
        (mancha_hoja negro))
    =>
    (printout t "¿Que forma reconocible observas en la mancha?" crlf)
    (printout t "[circular/poligonal/ninguna] " crlf)
    (bind ?tipo_mancha(read))
    (assert (tipo_mancha ?tipo_mancha))
)

(defrule hojas_caidas
    (declare (salience 51))
    =>
    (printout t "¿Observa que el árbol tiene muchas hojas caidas?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?hojas_caidas(read))
    (assert (hojas_caidas ?hojas_caidas))
)

(defrule hojas_perforadas
    (declare (salience 50))
    =>
    (printout t "¿Observa que las hojas tiene pequeñas perforaciones?" crlf)
    (printout t "[si/no] " crlf)
    (bind ?perforaciones_hoja(read))
    (assert (perforaciones_hoja ?perforaciones_hoja))
)

(defrule hojas_adheridas
    (declare (salience 49))
    =>
    (printout t "¿Observa que las hojas están adheridas al brote" crlf)
    (printout t "[si/no] " crlf)
    (bind ?hojas_adheridas(read))
    (assert (hojas_adheridas ?hojas_adheridas))
)

; ----------------------------------------------------------------------------------------------------

; ---------------------------------- SINTOMAS RELACIONADOS CON EL TRONCO-------------------------------
(defrule gomosis_tronco
    (declare (salience 48))
    =>
    (printout t "¿En el tronco del almendro observa una sustancia oscura y gomosa" crlf)
    (printout t "[si/no] " crlf)
    (bind ?gomosis (read))
    (assert (gomosis ?gomosis))
)

;-----------------------------------------------------------------------------------------------------

; ---------------------------------- CONCLUSIONES FINALES -------------------------------

(defrule conclusiones
    (declare (salience 47))
    =>
    (printout t "Se han recopilado todos los datos necesarios para el diagnostico, en breves anunciaremos el diagnostico" crlf)
    (printout t "Pulse cualquier tecla e intro para seguir: ")
    (bind ?tecla_3 (read))
)
; ---------------------------------------------------------------------------------------