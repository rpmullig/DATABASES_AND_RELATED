<?xml version="1.0" encoding="UTF-8"?>



<xslt:stylesheet xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xslt:output method="xml" indent="yes"/>
    
        <xslt:template match="/">
            <ORDER>
                <LINEITEM>
 
                    <TITLE>
                        <xslt:value-of select="INVENTORY/BOOK/TITLE"/>
                    </TITLE>
                    
                    <QTY>
                        <xslt:value-of select="INVENTORY/BOOK/QUANTITY"/>
                    </QTY>
       
                    <BINDING>
                        <xslt:value-of select="INVENTORY/BOOK/BINDING"/>
                    </BINDING>
               
                </LINEITEM>
            </ORDER>
        </xslt:template>
    
    
</xslt:stylesheet>