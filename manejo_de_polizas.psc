//Datos de entrada 
//sumaAsegurada como real

//Proceso 
//montoAseguradora = sumaAsegurada * 0.8
//montoSocios = sumaAsegurada * 0.1
//montoAseguradora = 100000 * 0.8
//montoSocios = 100000 * 0.1
//montoRestante = sumaAsegurada - 100000
//montoSocios = montoSocios + montoRestante / 2
//montoAseguradora = 100000 * 0.8
//montoSocios = 100000 * 0.1

//Datos de salida 
//montoAseguradora
//montosocios 
//montoEspecial

Algoritmo manejo_de_polizas
	
	Imprimir "Ingrese la suma asegurada"
	Leer sumaAsegurada
	
	Si sumaAsegurada <= 100000 Entonces
		montoAseguradora = sumaAsegurada * 0.8
        montoSocios = sumaAsegurada * 0.2
	SiNo
		Si sumaAsegurada>100000 y sumaAsegurada<=120000 Entonces
			montoAseguradora <- 100000 * 0.8
			montoSocios <- 100000 * 0.1
			montoRestante <- sumaAsegurada - 100000
			montoSocios <- montoSocios + montoRestante / 2
		SiNo
		   Si sumaAsegurada>120000 Entonces 
			  montoAseguradora <- 100000 * 0.8
			  montoSocios <- 100000 * 0.1
			  montoRestante <- sumaAsegurada - 120000
			  montoEspecial <- montoRestante
			FinSi
		Fin Si
	Fin Si
	
	Escribir "El monto destinado para la aseguradora:", montoAseguradora
    Escribir "Elmonto destinado para los socios:", montoSocios
    Si montoEspecial > 0 entonces
        Escribir "Elonto para el socio con contrato especial:", montoEspecial
    FinSi
	
FinAlgoritmo
