<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : football.xsl
    Created on : March 23, 2023, 6:14 PM
    Author     : Admin
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>football.xsl</title>
            </head>
            <body>
                
                 <h1>Corporation Football Vietnamese-national Vietnamese Championship Football</h1>
                                
                                                <table border="1" cellpadding="0" cellspacing="0">
                    <tr>
                        <th>Sân</th>
                        <th>Ngày</th>
                        <th>Đội 1</th>
                        <th>Số BT</th>
                        <th>Đội 2</th>
                        <th>Số BT</th>
                    </tr>
                    <xsl:for-each select="listFB/football">
                       
                        <tr>
                            <td>
                                <xsl:value-of select="san"/>
                            </td>
                            <td>
                                <xsl:value-of select="ngay"/>
                            </td>
                            <td>
                                <xsl:value-of select="doi1"/>
                            </td>
                            <td>
                                <xsl:value-of select="soBT1"/>
                            </td>
                            <td>
                                <xsl:value-of select="doi2"/>
                            </td>
                            <td>
                                <xsl:value-of select="soBT2"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
