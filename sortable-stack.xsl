<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
    method="html"
    doctype-public="XSLT-compat"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />

<xsl:template match="/">
<html>
        <head>
            <title>Sortable Stack by Order</title>
            </head>
  		<script type="text/javascript">
			i=1;
			function onBtnClick(){
			if(i%2==0){
			i=1;
			alert("Sort by item");
				var sort_node=this.xslStylesheet.getElementsByTagName("sort").item(0);
				sort_xpath="item[key='" + item + "']/value";
				sort_node.setAttribute("select",sort_xpath);
				
				}
				else
				{
				i=2;
				alert("Sort by order");
				var sort_node=this.xslStylesheet.getElementsByTagName("sort").item(0);
				sort_xpath="item[key='" + @order + "']";
				sort_node.setAttribute("select",sort_xpath);
				
				}
			}
			</script>
            <body>
<form>
    <h2>Sortable Stack by Order</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>note</th>
        <th>image</th>
      </tr>
	  <xsl:variable name="sort_node" select="'name'"/>
      <xsl:for-each select="sortable-stack/item">
	  
<!--<xsl:sort select="item[key=$sort_param]" />-->
      <xsl:sort select="@order"/>
      <tr>
        <td><xsl:value-of select="note"/></td>
        <td><xsl:value-of select="image"/></td>
      </tr>
      </xsl:for-each>
    </table>
	<INPUT TYPE="BUTTON" OnClick="javascript:onBtnClick(this.form);" VALUE="Sort" />
	</form>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>