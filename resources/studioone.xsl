<?xml version="1.0" encoding="UTF-8"?>


<!-- xsl template for studioone -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <xsl:for-each select="studioone/stocksong">

            <li>

                <ul>

                    <li>

                        <a target="_blank" href="./images/holder.jpg">
                            <img src="./images/holder.jpg" alt="image{position()}" />
                        </a>

                    </li>

                    <li>

                        <b>Album:</b>
                        &#160;
                        <xsl:value-of select="album" />

                    </li>

                    <li>

                        <b>Artist:</b>
                        &#160;
                        <xsl:value-of select="artist" />

                    </li>

                    <li>

                        <b>Country:</b>
                        &#160;
                        <xsl:value-of select="country" />

                    </li>

                    <li>

                        <b>Company:</b>
                        &#160;
                        <xsl:value-of select="company" />

                    </li>

                    <li>

                        <b>Song:</b>
                        &#160;
                        <xsl:value-of select="song" />

                    </li>

                    <li>

                        <b>Media:</b>
                        &#160;
                        <xsl:value-of select="media" />

                    </li>


                    <li>

                        <b>Price:</b>
                        &#160;
                        <xsl:choose>

                            <xsl:when test="price &gt; 10">
                                <span class="green">
                                    $<xsl:value-of select="price" />
                                </span>
                            </xsl:when>

                            <xsl:when test="price &gt; 9">
                                <span class="blue">
                                    $<xsl:value-of select="price" />
                                </span>
                            </xsl:when>

                            <xsl:otherwise>
                                $<xsl:value-of select="price" />
                            </xsl:otherwise>

                        </xsl:choose>

                    </li>

                    <li>

                        <b>Year:</b>
                        &#160;
                        <xsl:value-of select="year" />

                    </li>


                </ul>

            </li>

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>