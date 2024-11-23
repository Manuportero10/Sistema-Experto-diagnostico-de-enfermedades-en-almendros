(defrule regla_inverno
    (declare (salience 46))
    (or(mes diciembre)
    (mes enero)
    (mes febrero))
    =>
    (assert (temporada inverno))

)

(defrule regla_primavera
    (declare (salience 46))
    (or(mes marzo)
    (mes abril)
    (mes mayo))
    =>
    (assert (temporada primavera))

)

(defrule regla_verano
    (declare (salience 46))
    (or(mes junio)
    (mes julio)
    (mes agosto))
    =>
    (assert (temporada verano))

)

(defrule regla_otoño
    (declare (salience 46))
    (or(mes septiembre)
    (mes octubre)
    (mes noviembre))
    =>
    (assert (temporada otoño))

)

; -------------------------------------- ENFERMEDAD MOLINOSIS --------------------------------------
(defrule regla_molinosis_1
    (declare (salience 45))
    (or (or (tonalidad_flores marron)
            (tonalidad_flores negro)
            (tonalidad_fruto marron)
            (tonalidad_fruto negro))
        (and (fruto_deshidratado si)
             (fruto_adherido si)))
    =>
    (assert (enfermedad molinosis_1))
)

(defrule regla_molinosis_2
    (declare (salience 44))
    (or (chancros_brotes si)
        (chancros_ramas si))
    =>
    (assert (enfermedad molinosis_2))
)

(defrule regla_molinosis_3
    (declare (salience 43))
    (and (temperatura media)
         (humedad alta)
    (or (or (tonalidad_flores marron)
        (tonalidad_flores negro)
        (tonalidad_fruto marron)
        (tonalidad_fruto negro))
        (and (fruto_deshidratado si)
             (fruto_adherido si))))
    =>
    (assert (enfermedad molinosis_3))
)

(defrule regla_molinosis_4
    (declare (salience 42))
    (and (temperatura media)
         (humedad alta)
    (or  (chancros_brotes si)
         (chancros_ramas si)))
    =>
    (assert (enfermedad molinosis_4))
)

(defrule regla_molinosis_5
    (declare (salience 41))
    (and 
        (or (variedad marcona)
            (variedad guara))
        (enfermedad molinosis_1))
    =>
    (assert (enfermedad molinosis_5))
)

(defrule regla_molinosis_6
    (declare (salience 40))
    (and 
        (or (variedad marcona)
            (variedad guara))
        (enfermedad molinosis_2))
    =>
    (assert (enfermedad molinosis_6))
)

(defrule regla_molinosis_7
    (declare (salience 39))
    (and 
        (or (variedad marcona)
            (variedad guara))
        (enfermedad molinosis_3))
    =>
    (assert (enfermedad molinosis_7))
)

(defrule regla_molinosis_8
    (declare (salience 38))
    (and 
        (or (variedad marcona)
            (variedad guara))
        (enfermedad molinosis_4))
    =>
    (assert (enfermedad molinosis_8))
)

; ---------------------------------------------------------------------------------------------------

(defrule debilitamiento_almendro
    (declare (salience 37))
    (and (ramas_secas si)
         (hojas_caidas si))
    =>
    (assert (debilitamiento_almendro si))
)

; --------------------------------------- ENFERMEDAD MANCHA OCRE --------------------------------
(defrule regla_mancha_ocre_1
    (declare (salience 36))
        (and 
        (or (mes abril)
            (mes mayo))
        (or (mancha_hoja amarillo)
            (mancha_hoja rojo)
            (mancha_hoja negro))
            )
    =>
    (assert (enfermedad mancha_ocre_1))
)

(defrule regla_mancha_ocre_2
    (declare (salience 35))
    (and 
    (or (mes abril)
        (mes mayo))
    (variedad guara)
    (and (debilitamiento_almendro si))
        )
    =>
    (assert (enfermedad mancha_ocre_2))
)

(defrule regla_mancha_ocre_3
    (declare (salience 34))
    (and 
    (and (temperatura media)
        (humedad alta))
    (enfermedad mancha_ocre_1)
        )
    =>
    (assert (enfermedad mancha_ocre_3))
)

(defrule regla_mancha_ocre_4
    (declare (salience 33))
    (and 
    (enfermedad mancha_ocre_3)
    (variedad guara)
        )
    =>
    (assert (enfermedad mancha_ocre_4))
)

(defrule regla_mancha_ocre_5
    (declare (salience 32))
    (and 
    (enfermedad mancha_ocre_3)
    (variedad vairo)
        )
    =>
    (assert (enfermedad mancha_ocre_5))
)
; ---------------------------------------------------------------------------------------------------

; -------------------------------------- ENFERMEDAD CRIBADO--------------------------------------
(defrule regla_cribado_1
    (declare (salience 31))
    (and 
    (temporada primavera)
    (temperatura media)
      (humedad alta))
    =>
    (assert (enfermedad cribado_1))
)

(defrule regla_cribado_2
    (declare (salience 30))
    (or 
    (tipo_mancha circular)
    (mancha_hoja amarillo)
      (mancha_hoja morado)
      (mancha_hoja negro)
      (perforaciones_hoja si))
    =>
    (assert (enfermedad cribado_2))
)

(defrule regla_cribado_3
    (declare (salience 29))
    (and 
    (color_cascara_fruto negro)
    (gomosis si))
    =>
    (assert (enfermedad cribado_3))
)

(defrule regla_cribado_4
    (declare (salience 28))
    (and 
    (or (mes abril)
        (mes mayo))
    (debilitamiento_almendro si))
    =>
    (assert (enfermedad cribado_4))
)

(defrule regla_cribado_5
    (declare (salience 27))
    (and 
        (temporada verano)
        (temperatura alta)
        (enfermedad cribado_2))
    =>
    (assert (enfermedad cribado_5))
)
; ---------------------------------------------------------------------------------------------------

; --------------------------------------- ENFERMEDAD VERTICULOSIS ----------------------------------

(defrule regla_verticulosis_1
    (declare (salience 26))
    (and 
        (or (mes mayo)
            (mes junio))
        (tipo_marchitamiento asimetrico))
    =>
    (assert (enfermedad verticulosis_1))
)

(defrule regla_verticulosis_2
    (declare (salience 25))
    (and 
        (or (mes mayo)
            (mes junio))
        (hojas_adheridas si))
    =>
    (assert (enfermedad verticulosis_2))
)

(defrule regla_verticulosis_3
    (declare (salience 24))
    (and 
        (or (mes mayo)
            (mes junio))
        (edad_arbol joven)
        (tipo_marchitamiento asimetrica))
    =>
    (assert (enfermedad verticulosis_3))
)

(defrule regla_verticulosis_4
    (declare (salience 23))
    (and 
        (or (mes mayo)
            (mes junio))
        (hojas_adheridas si)
        (edad_arbol joven))
    =>
    (assert (enfermedad verticulosis_4))
)

(defrule regla_verticulosis_5
    (declare (salience 22))
    (and 
        (or (temporada primavera)
            (temporada otoño))
        (temperatura media)
        (humedad alta)
        (edad_arbol joven)
        (tipo_marchitamiento asimetrico))
    =>
    (assert (enfermedad verticulosis_5))
)

; ---------------------------------------------------------------------------------------------------

; --------------------------------------- ENFERMEDAD XANTOMONAS -------------------------------------

(defrule regla_xantomonas_1
    (declare (salience 21))
    (color_cascara_fruto negro)
    (gomosis si)
    =>
    (assert (enfermedad xantomonas_1))
)

(defrule regla_xantomonas_2
    (declare (salience 20))
    (temporada verano)
    (abultamiento_fruto si)
    =>
    (assert (enfermedad xantomonas_2))
)

(defrule regla_xantomonas_3
    (declare (salience 19))
    (mancha_hoja negro)
    (tipo_mancha poligonal)
    =>
    (assert (enfermedad xantomonas_3))
)

(defrule regla_xantomonas_4
    (declare (salience 18))
    (temporada primavera)
    (humedad alta)
    (enfermedad xantomonas_1)
    =>
    (assert (enfermedad xantomonas_4))
)

(defrule regla_xantomonas_5
    (declare (salience 17))
    (temporada primavera)
    (humedad alta)
    (enfermedad xantomonas_3)
    =>
    (assert (enfermedad xantomonas_5))
)
; ---------------------------------------------------------------------------------------------------

(defrule print_aux
    (declare (salience 16))
    =>
    (printout t "-----------------------------------------------------------------" crlf)
)

; --------------------------------- CONCLUSIONES FINALES -------------------------------------------

; --------------------------------------- MOLINOSIS -----------------------------------------------
(defrule conclusiones_molinosis_muy_alta
    (declare (salience 15))
    (enfermedad molinosis_7)
    (enfermedad molinosis_8)
    =>
    (printout t "Detectamos la enfermedad Molinosis con un factor de certeza muy alto" crlf)
    (assert (conclusion molinosis_muy_alta))
)

(defrule conclusiones_molinosis_alta
    (declare (salience 14))
    (and (not (conclusion molinosis_muy_alta))
        (not (conclusion molinosis_alta))
        (or (enfermedad molinosis_5)
            (enfermedad molinosis_6)))
    =>
    (printout t "Detectamos la enfermedad Molinosis con un factor de certeza alto " crlf)
    (assert (conclusion molinosis_alta))

)

(defrule conclusiones_molinosis_medio
    (declare (salience 13))
    (and (not (conclusion molinosis_muy_alta))
        (not (conclusion molinosis_alta))
        (not (conclusion molinosis_medio))
        (or 
            (enfermedad molinosis_1)
            (enfermedad molinosis_2))
    )
    =>
    (printout t "Detectamos la enfermedad Molinosis con un factor de certeza medio " crlf)
    (assert (conclusion molinosis_medio))
)

(defrule conclusiones_molinosis_normal
    (declare (salience 12))
    (and (not (conclusion molinosis_muy_alta))
        (not (conclusion molinosis_alta))
        (not (conclusion molinosis_medio))
        (or (enfermedad molinosis_1)
            (enfermedad molinosis_2))
    )
    =>
    (printout t "Detectamos la enfermedad Molinosis con un factor de certeza moderado " crlf)

)

; ---------------------------------------------------------------------------------------------------

; --------------------------------------- MANCHA OCRE ----------------------------------------------
(defrule conclusiones_mancha_ocre_alta
    (declare (salience 11))
    (enfermedad mancha_ocre_4)
    =>
    (printout t "Detectamos la enfermedad Mancha Ocre con un factor de certeza alto " crlf)
    (assert (conclusion mancha_ocre_alta))

)

(defrule conclusiones_mancha_ocre_baja
    (declare (salience 10))
    (enfermedad mancha_ocre_5)
    =>
    (printout t "Detectamos la enfermedad Mancha Ocre con un factor de certeza bajo " crlf)
    (assert (conclusion mancha_ocre_baja))

)

(defrule conclusiones_mancha_ocre_medio
    (declare (salience 9))
    (not (conclusion mancha_ocre_alta))
    (not (conclusion mancha_ocre_baja))
    (enfermedad mancha_ocre_3)
    =>
    (printout t "Detectamos la enfermedad Mancha Ocre con un factor de certeza medio " crlf)
    (assert (conclusion mancha_ocre_medio))

)

(defrule conclusiones_mancha_ocre_normal
    (declare (salience 8))
    (and (not (conclusion mancha_ocre_alta))
         (not (conclusion mancha_ocre_baja))
         (not (conclusion mancha_ocre_medio))
         (not (conclusion mancha_ocre_normal))
            (or (enfermedad mancha_ocre_1)
                (enfermedad mancha_ocre_2))
    )

    =>
    (printout t "Detectamos la enfermedad Mancha Ocre con un factor de certeza moderado " crlf)
    (assert (conclusion mancha_ocre_normal))

)
; ---------------------------------------------------------------------------------------------------

; ---------------------------------------CONCLUSIONES CRIBADO ---------------------------------------

(defrule conclusiones_cribado_bajo
    (declare (salience 7))

    (and (not (conclusion cribado_bajo))
        (or (enfermedad cribado_1)
            (enfermedad cribado_5))
    )
    =>
    (printout t "Detectamos la enfermedad Cribado con un factor de certeza bajo " crlf)
    (assert (conclusion cribado_bajo))

)


(defrule conclusiones_cribado_normal
    (declare (salience 6))
    (and (not (conclusion cribado_bajo))
         (not (conclusion cribado_normal))
        (or (enfermedad cribado_2)
            (enfermedad cribado_3)
            (enfermedad cribado_4)))
    =>
    (printout t "Detectamos la enfermedad Cribado con un factor de certeza moderado " crlf)
    (assert (conclusion cribado_normal))

)
; ---------------------------------------------------------------------------------------------------

; ---------------------------------------CONCLUSIONES VERTICULOSIS -----------------------------------
(defrule conclusiones_verticulosis_muy_alta
    (declare (salience 5))
    (enfermedad verticulosis_5)
    =>
    (printout t "Detectamos la enfermedad Verticulosis con un factor de certeza muy alto " crlf)
    (assert (conclusion verticulosis_muy_alta))
)

(defrule conclusiones_verticulosis_alta
    (declare (salience 4))

    (and (not (conclusion verticulosis_muy_alta))
         (not (conclusion verticulosis_muy_alta))
         (not (conclusion verticulosis_alta))
        (or (enfermedad verticulosis_3)
        (enfermedad verticulosis_4))
    )
    =>
    (printout t "Detectamos la enfermedad Verticulosis con un factor de certeza alto " crlf)
    (assert (conclusion verticulosis_alta))

)

(defrule conclusiones_verticulosis_normal
    (declare (salience 3))

    (and (not (conclusion verticulosis_muy_alta))
         (not (conclusion verticulosis_alta))
         (not (conclusion verticulosis_normal))
         (or (enfermedad verticulosis_1)
             (enfermedad verticulosis_2))
    )
    =>
    (printout t "Detectamos la enfermedad Verticulosis con un factor de certeza moderado " crlf)
    (assert (conclusion verticulosis_normal))

)
; ---------------------------------------------------------------------------------------------------

; ---------------------------------------CONCLUSIONES XANTOMONAS -------------------------------------
(defrule conclusiones_xantomonas_medio
    (declare (salience 2))
    (and (not (conclusion xantomonas_medio))
        (or (enfermedad xantomonas_2)
        (enfermedad xantomonas_4)
        (enfermedad xantomonas_5))
    )
    =>
    (printout t "Detectamos la enfermedad Xantomonas con un factor de certeza medio " crlf)
    (assert (conclusion xantomonas_medio))
)

(defrule conclusiones_xantomonas_normal
    (declare (salience 1))
    (and (not (conclusion xantomonas_medio))
        (not (conclusion xantomonas_normal))
        (or (enfermedad xantomonas_1)
            (enfermedad xantomonas_3))
    )
    =>
    (printout t "Detectamos la enfermedad Xantomonas con un factor de certeza moderado " crlf)
    (assert (conclusion xantomonas_normal))
)
; ---------------------------------------------------------------------------------------------------

(defrule conclusion_no_enfermedad
    (not (conclusion molinosis_muy_alta))
    (not (conclusion molinosis_alta))
    (not (conclusion molinosis_medio))
    (not (conclusion mancha_ocre_alta))
    (not (conclusion mancha_ocre_baja))
    (not (conclusion mancha_ocre_medio))
    (not (conclusion cribado_bajo))
    (not (conclusion verticulosis_muy_alta))
    (not (conclusion verticulosis_alta))
    (not (conclusion verticulosis_normal))
    (not (conclusion xantomonas_medio))
    (not (conclusion xantomonas_normal))
    =>
    (printout t "El almendro no presenta ninguna enfermedad detectable con nuestro sistema" crlf)
)

(defrule print_aux2
    =>
    (printout t "-----------------------------------------------------------------" crlf)
)
; ---------------------------------------------------------------------------------------------------
