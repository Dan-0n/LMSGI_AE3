<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title><xsl:value-of select="ite/@nombre"/> | <xsl:value-of select="ite/empresa"/></title>
    <link rel="stylesheet" href="style2.css" />
</head>
<body>
    <div class="header">
        <img class="logo" src="img/logo.png"/>
    <ul>
        <li><a href="#Home">Home</a></li>
        <li><a href="#Estudios">Estudios</a></li>
        <li><a href="#Docentes">Docentes</a></li>
        <li><a href="#Direccion">Dirección</a></li>
        <li><a href="#Contacto">Contacto</a></li>
    </ul>
    </div>
    <div class="container">
    <div class="index">
    <section id="Home">
    </section>
    </div>
    <div class="ciclos">
        <section id="Estudios">
            <table border="1">
                <caption>Grados superiores FP</caption>
                <thead>
                    <th>Nombre</th>
                    <th>Grado</th>
                    <th>Decreto</th>
                </thead>
                <tbody>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="grado"/></td>
                        <td><xsl:value-of select="decretoTitulo/@año"/></td>
                    </tr>
                </xsl:for-each>
                </tbody>
            </table>
        </section>
    </div>
    <div class ="profesores">
        <section id="Docentes">
            <table border="1">
                <caption>Docentes</caption>
                <thead>
                    <th>ID</th>
                    <th>Nombre</th>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/profesores/profesor">
                    <tr>
                        <td><xsl:value-of select="nombre/@id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                    </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </section>
    </div>
    <div class="list">
    <section id="Direccion">
        <dl>
          <p>Director</p>
          <xsl:for-each select="ite/direccion/director">
          <dt><xsl:value-of select="nombre"/></dt>
          <dd><xsl:value-of select="despacho"/></dd>
          </xsl:for-each>
          <p>Jefe de estudios</p>
          <xsl:for-each select="ite/direccion/jefe_estudios">
          <dt><xsl:value-of select="nombre"/></dt>
          <dd><xsl:value-of select="despacho"/></dd>
          </xsl:for-each>
        </dl>
    </section>
    </div>
    <div class="form">
    <section id="Contacto">
        <legend>Formulario de Contacto</legend>
        <input type="text" placeholder="Nombre"/><br/>
        <input type="text" placeholder="Apellidos"/><br/>
        <input type="email" placeholder="Email"/><br/>
        <input type="phone" placeholder="Teléfono"/><br/>
        <select id="titulación" name="titulación"><br/>
        <option value="Selecciona una titulación"> Selecciona una titulación</option>
        <option value="ASIR"> Administración de Sistemas Informáticos en Red</option>
        <option value="DAW"> Desarrollo de Aplicaciones Web</option>
        <option value="DAM"> Desarrollo de Aplicaciones Multiplataforma</option>
        </select>
        <br/><button>Solicitar información</button>
    </section>
    </div>
    </div>
    <div class="footer">
        <footer>
            <p>Copyright © 2022  <xsl:value-of select="ite/@nombre"/> | <xsl:value-of select="ite/empresa"/></p> 
            <p><xsl:value-of select="ite/telefono"/></p>
        </footer>
        </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>