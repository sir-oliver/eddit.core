<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output
    method="html"
    encoding="UTF-8"
    omit-xml-declaration="yes"
    doctype-public="-//W3C//DTD HTML 4.01//EN"
    doctype-system="http://www.w3.org/TR/html4/strict.dtd"
    indent="yes" />

  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="edditPage">
    <html>
      <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <link rel="stylesheet" href="/eddit/css/export-xml.css"/>
      </head>
      <body>
        <div class="container-fluid">
          <div class="row">
            <div class="col-sm-4">
                <xsl:apply-templates select="object" />
            </div>
            <div class="col-sm-8">
              <iframe>
                <xsl:attribute name="src">
                  <xsl:value-of select="object/url"/>
                </xsl:attribute>
              </iframe>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="object">

    <div class="panel panel-default">
      <xsl:attribute name="class">panel panel-default <xsl:value-of select="@type"/></xsl:attribute>
      <div class="panel-heading">
        <h3 class="panel-title">
            <small class="mute pull-right"><xsl:value-of select="@id"/> | <xsl:value-of select="@type"/></small>
            <i><xsl:value-of select="@title"/> </i>
        </h3>
      </div>
        <table class="table table-striped">
          <!-- <xsl:for-each select="child::node()[@translate]"> -->
          <xsl:for-each select="./*">
            <tr>
              <td class="text-right" style="width: 10%; border-right: 1px solid #ddd"><xsl:value-of select="name()"/></td>
              <td><xsl:value-of disable-output-escaping="yes" select="."/></td>
            </tr>
          </xsl:for-each>
        </table>
    </div>
  </xsl:template>

</xsl:stylesheet>
