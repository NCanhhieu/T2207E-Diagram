<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : sinhvien.xsl
    Created on : March 22, 2023, 8:15 PM
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
                <title>sinhvien.xsl</title>
            </head>
            <body>
                                <h1>Danh sách sinh viên</h1>
                                
                                                <table border="1" cellpadding="0" cellspacing="0">
                    <tr>
                        <th>STT</th>
                        <th>MaSv</th>
                        <th>TenSv</th>
                        <th>GioiTinh</th>
                        <th>NgaySinh</th>
                        <th>MaLop</th>
                    </tr>
                    <xsl:for-each select="listSV/Sinhvien">
                        <xsl:sort select="MaSV" order="descending"/>
                        <tr>
                            <td>
                                <xsl:value-of select="position()"/>
                            </td>
                            <td>
                                <xsl:value-of select="MaSV"/>
                            </td>
                            <td>
                                <xsl:value-of select="Hoten"/>
                            </td>
                            <td>
                                <xsl:value-of select="gioitinh"/>
                            </td>
                            <td>
                                <xsl:value-of select="NgaySinh"/>
                            </td>
                            <td>
                                <xsl:value-of select="MaLop"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>


            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
