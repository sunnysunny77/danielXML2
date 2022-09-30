<?xml version="1.0" encoding="UTF-8"?>

<!-- xsl template for studioone -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="stocksong">

        <li>

            <ul>

                <li>

                    <xsl:apply-templates select="album" />

                </li>

            </ul>

        </li>

    </xsl:template>

</xsl:stylesheet>