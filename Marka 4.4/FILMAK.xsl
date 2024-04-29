<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/FILMAK">
        <html>
            <head>
                <title>PELIKULEN LISTA</title>
                <style>
                    body {
                        background-color: #B4C1C7;
                    }
                    .movie-card {
                        border: 1px solid #ccc;
                        border-radius: 8px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                        margin: 20px;
                        padding: 20px;
                        width: calc(33.333% - 40px);
                        float: left;
                        width: 25%;
                        margin-left: 4%;
                    }
                    .movie-card img {
                        max-width: 100%;
                        height: 40vh;
                        margin-bottom: 10px;
                        box-shadow: 7px 7px 12px 0 rgb(20, 20, 20);
                        border-radius: 30px;
                    }
                    .movie-card a {
                        color: blue;
                        text-decoration: none;
                        font-weight: bold;
                    }
                    .movie-card p {
                        margin: 5px 0;
                    }
                    h1 {
                        font-size: 32px;
                        font-weight: bold;
                        text-align: center;
                        margin-bottom: 85px;
                        color: #333366;
                        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
                    }
                    /* Estilos para el encabezado */
                    header {
                        text-align: center;
                        margin-bottom: 20px;
                    }
                    header img {
                        width: 100px; /* Ajusta el tamaño del logo según sea necesario */
                        height: auto;
                        margin-right: 20px;
                    }
                    header h1 {
                        display: inline-block;
                        color: #333366;
                        font-size: 24px;
                        font-weight: bold;
                        vertical-align: middle;
                    }

                    .div {
                        background-color: grey;
                        height: 90px;
                        border-radius: 90rem;
                    }
                    header{
                        text-align: center;
                         height: 89px;
                        background-color:#dcdcde;
                        border-radius: 90px;
                    }
                </style>
            </head>
            <body>
                
                <header>
                <div id="div">
                    <img src="path3570.svg" alt="Logo"/>
                    <h1>PELIKULEN ZERRENDA</h1>
                </div>
                    
                </header>
                
                <xsl:for-each select="DATA_RECORD">
                    <div class="movie-card">
                        <img src="{ARGAZKIA}" alt="{TITULUA}" />
                        <p><strong>Izenburua:</strong> <xsl:value-of select="TITULUA"/></p>
                        <p><strong>Generoa:</strong> <xsl:value-of select="GENEROA"/></p>
                        <p><strong>Aurrekontua:</strong> <xsl:value-of select="AURREKONTUAK"/></p>
                        <p><strong>Irabaziak:</strong> <xsl:value-of select="IRABAZIAK"/></p>
                        <p><strong>Estrenaldi-Data:</strong> <xsl:value-of select="ID_ESTREINALDIA"/></p>
                        <p><a href="{TRAILERRAK}" target="_blank">Ikusi Trailerra</a></p>
                    </div>
                </xsl:for-each>
                <div style="clear:both;"></div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>



