<?xml version="1.0" encoding="UTF-8"?>



<xslt:stylesheet xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xslt:output method="xml" indent="yes"/>
    
        <xslt:template match="/">
            <ORDER>
                <xslt:for-each select="INVENTORY/BOOK[QUANTITY &lt; 500]">
                <xslt:sort select="TITLE" data-type="test" order="descending"/>
                <LINEITEM>
 
                    <TITLE>
                        <xslt:value-of select="TITLE"/>
                    </TITLE>
                    
                    <QTY>
                        <xslt:value-of select="QUANTITY"/>
                    </QTY>
       
                    <BINDING>
                        <xslt:value-of select="BINDING"/>
                    </BINDING>
               
                </LINEITEM>
                </xslt:for-each>
            </ORDER>
        </xslt:template>
    
    
</xslt:stylesheet>