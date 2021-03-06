<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/" name="xsl:initial-template">
	<html>
        <head>
            <link rel="stylesheet" type="text/css" href="../css/palomarejosgolf.css"/>
            <title>Vuelta2</title>
        </head>
        <body>
           <div id="contenedor">
                <header>
                    <div id="titulo">
                        <img src="../imagenes/logogrande.PNG" alt="logo" id="logo" />
                        <h1>Palomarejos Golf</h1>
                        <h2>Llega a tu mejor golf</h2>
                    </div>
                    
                    <nav>
                        <ul>
                            <li><a href="../indexLuisMora.html">Principal</a></li>
                            <li><a href="./equipo.xml">Trabajadores</a></li>
                            <li><a href="./vuelta1.xml">1ª Vuelta</a></li>
                            <li><a href="./vuelta2.xml">2ª Vuelta</a></li>
                        </ul>
                    </nav>
                </header>
                <table>
                    <tr>
                        <td>Nº Hoyo</td>
                        <td>Metros</td>
                        <td>Par</td>
                        <td>Hándicap</td>
                        <td>Imagen</td>
                    </tr>
                    <xsl:for-each select="vuelta2/hoyo">
                        <tr>
                            <td>
                                <xsl:value-of select="num"/>
                            </td>
                            <td>
                                <xsl:value-of select="metros"/>
                            </td>
                            <td>
                                <xsl:value-of select="par"/>
                            </td>
                            <td>
                                <xsl:value-of select="Handicap"/>
                            </td>
                            <td><img class="hoyos">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto"/>
                                </xsl:attribute>
                                </img>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>
    </html>
	</xsl:template>
</xsl:stylesheet>
