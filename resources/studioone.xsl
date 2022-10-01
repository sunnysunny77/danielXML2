<?xml version="1.0" encoding="UTF-8"?>

<!-- xsl template for studioone -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="stocksong">

        <li>

            <ul>

                <li>

                    <b>Album:</b>&#160;<xsl:value-of select="album"/>

                </li>

                <li>

                    <b>Artist:</b>&#160;<xsl:value-of select="artist"/>

                </li>

                <li>

                    <b>Country:</b>&#160;<xsl:value-of select="country"/>

                </li>

                <li>

                    <b>Company:</b>&#160;<xsl:value-of select="company"/>

                </li>

                <li>

                    <b>Song:</b>&#160;<xsl:value-of select="song"/>

                </li>

                <li>

                    <b>Media:</b>&#160;<xsl:value-of select="media"/>

                </li>

                <li>

                    <b>Price:</b>&#160;<xsl:value-of select="price"/>

                </li>

                <li>

                    <b>Year:</b>&#160;<xsl:value-of select="year"/>

                </li>
                

            </ul>

        </li>

    </xsl:template>

</xsl:stylesheet>