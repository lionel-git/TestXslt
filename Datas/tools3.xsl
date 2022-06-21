<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
				<h2>Updated Tool Information:</h2>
				<table border="1">
					<xsl:for-each select="tool/data/field">
						<tr>
							<td>
								<xsl:choose>
									<xsl:when test="@id='prodNo' or @id='prodNo2'" >xxxxx</xsl:when>
									<xsl:when test="@id='prodName'" >www</xsl:when>
									<xsl:otherwise><xsl:text></xsl:text></xsl:otherwise>
								</xsl:choose>
							</td>
							<td>
								<xsl:value-of select="value" />
							</td>
							<toto>
								<xsl:value-of select="../name" />
							</toto>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>