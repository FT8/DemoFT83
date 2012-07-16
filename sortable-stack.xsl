<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Sortable Stack by Order</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>note</th>
        <th>image</th>
      </tr>
      <xsl:for-each select="sortable-stack/item">
      <xsl:sort select="@order"/>
      <tr>
        <td><xsl:value-of select="note"/></td>
        <td><xsl:value-of select="image"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

