<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <MUSIC>
            <xsl:for-each select="Favorite_Albums/Album">
              <ARTIST>
                <ARTISTNAME><xsl:value-of select="Artist/Artist_Name"/></ARTISTNAME>
                <ARTISTTYPE><xsl:value-of select="DoNotHaveInXml"></xsl:value-of></ARTISTTYPE>
                 
                <ARTISTCOUNTRY><xsl:value-of select="Artist_Country"/></ARTISTCOUNTRY>
                <xsl:for-each select="Artist">
                <GROUPNAMES><xsl:value-of select="Group_Member"/></GROUPNAMES>
                </xsl:for-each>
                <CAREERSTART><xsl:value-of select="Career/Begin"/></CAREERSTART>
                <CAREEREND><xsl:value-of select="Career/End"/></CAREEREND>
                <GENRE><xsl:value-of select="Genre"/></GENRE>
                <ALBUM> 
                    <xsl:attribute name="sku">csparris-<xsl:value-of select="@SKU" /></xsl:attribute>
                    <RATING><xsl:value-of select="Rating"/></RATING>
                    <COMMENT><xsl:value-of select="Comment"/></COMMENT>
                    <ALBUMNAME>
                        <xsl:attribute name="albumCategory">
                            <xsl:value-of select="Album_Category" />
                        </xsl:attribute>
                        <xsl:attribute name="type">
                            <xsl:value-of select="@type" />
                        </xsl:attribute>
                        <xsl:value-of select="@Name"/>
                    </ALBUMNAME>
                    <ALBUMCOVER><xsl:value-of select="Album_Cover"/></ALBUMCOVER>
                    <IMAGESOURCE><xsl:value-of select="DoNotHaveInXML"/></IMAGESOURCE>
                    <xsl:for-each select="Producers">
                    <PRODUCERS><xsl:value-of select="Producer"/></PRODUCERS>
                    </xsl:for-each>
                    <xsl:for-each select="Mixers_Engineers">
                    <MIXERS><xsl:value-of select="Mixer"/></MIXERS>
                    <MASTERENGINEERS><xsl:value-of select="Mastering_Engineer"/></MASTERENGINEERS>
                    </xsl:for-each>
                    <LABEL><xsl:value-of select="Current_Label"/></LABEL>
                    <RELEASEINFORMATION>
                        <xsl:for-each select="Album_Releases/Album_Release">
                        <RELEASEDATA>          
                            <RELEASEDATE><xsl:value-of select="Date"/></RELEASEDATE>
                            <RECORDLABEL><xsl:value-of select="Label"/></RECORDLABEL>
                            <RECORDLABELCATALOGNUMBER><xsl:value-of select="CatalogNum"/></RECORDLABELCATALOGNUMBER>
                            <BARCODENUMBER><xsl:value-of select="Barcode"/></BARCODENUMBER>
                            <COUNTRY><xsl:value-of select="Country"/></COUNTRY>
                            <FORMAT><xsl:value-of select="Format"/></FORMAT>
                          </RELEASEDATA>
                        </xsl:for-each>
                    </RELEASEINFORMATION>
                    <TRACKLIST>
                        <xsl:for-each select="Songs/Song">
                        <SONG>
                            <xsl:attribute name="sku">csparris-<xsl:value-of select="@SKU" /></xsl:attribute>
                            <xsl:attribute name="albumref">csparris-<xsl:value-of select="@albumref" /></xsl:attribute>
                            <xsl:attribute name="type">
                                <xsl:value-of select="@type" />
                            </xsl:attribute>
                            <SONGNAME><xsl:value-of select="Title"/></SONGNAME>
                            <SONGLENGTH><xsl:value-of select="Length"/></SONGLENGTH>
                            <COMPOSERS><xsl:value-of select="Composers"/></COMPOSERS>
                            <SONGNUMBER><xsl:value-of select="TrackNumber"/></SONGNUMBER>
                        </SONG>
                        </xsl:for-each>
                    </TRACKLIST>
                </ALBUM> 
                        
            </ARTIST>
            </xsl:for-each>
        </MUSIC>
    </xsl:template>
</xsl:stylesheet>	