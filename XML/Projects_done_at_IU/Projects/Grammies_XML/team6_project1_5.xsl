<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <MUSIC>
            <xsl:for-each select="inventory/artist">
              <ARTIST>
                <ARTISTNAME><xsl:value-of select="artistName"/></ARTISTNAME>
                <ARTISTTYPE><xsl:value-of select="artistName/@artistType"/></ARTISTTYPE>
                <ARTISTCOUNTRY><xsl:value-of select="artistCountry"/></ARTISTCOUNTRY>
                <GROUPNAMES><xsl:value-of select="groupNames"/></GROUPNAMES>
                <CAREERSTART><xsl:value-of select="careerStart"/></CAREERSTART>
                <CAREEREND><xsl:value-of select="careerEnd"/></CAREEREND>
                <GENRE><xsl:value-of select="Genre"/></GENRE>
                  <xsl:for-each select="album">
                  <ALBUM> 
                    <xsl:attribute name="sku">rpmullig-<xsl:value-of select="@sku" /></xsl:attribute>
                    <RATING><xsl:value-of select="Rating"/></RATING>
                    <COMMENT><xsl:value-of select="Comment"/></COMMENT>
                    <ALBUMNAME>
                        <xsl:for-each select="albumName">
                        <xsl:attribute name="albumCategory">
                            <xsl:value-of select="@albumCategory" />
                        </xsl:attribute>
                        <xsl:attribute name="type">
                            <xsl:value-of select="@type" />
                        </xsl:attribute>
                        </xsl:for-each>
                        <xsl:value-of select="albumName"/>
                        
                    </ALBUMNAME>
                     <ALBUMCOVER><xsl:value-of select="albumCover"/></ALBUMCOVER>
                     <IMAGESOURCE><xsl:value-of select="imageSource"/></IMAGESOURCE>
                    <PRODUCERS><xsl:value-of select="producers"/></PRODUCERS>
                    <MIXERS><xsl:value-of select="mixers"/></MIXERS>
                    <MASTERENGINEERS><xsl:value-of select="masteringEngineer"/></MASTERENGINEERS>
                    <LABEL><xsl:value-of select="label"/></LABEL>
                    <RELEASEINFORMATION>
                        <xsl:for-each select="releaseInformation/releaseData">
                        <RELEASEDATA>          
                            <RELEASEDATE><xsl:value-of select="releaseDate"/></RELEASEDATE>
                            <RECORDLABEL><xsl:value-of select="recordLabel"/></RECORDLABEL>
                            <RECORDLABELCATALOGNUMBER><xsl:value-of select="recordLabelCatalogNumber"/></RECORDLABELCATALOGNUMBER>
                            <BARCODENUMBER><xsl:value-of select="barCodeNumber"/></BARCODENUMBER>
                            <COUNTRY><xsl:value-of select="country"/></COUNTRY>
                            <FORMAT><xsl:value-of select="format"/></FORMAT>
                          </RELEASEDATA>
                        </xsl:for-each>
                    </RELEASEINFORMATION>
                    <TRACKLIST>
                        <xsl:for-each select="trackList/song">
                        <SONG>
                            <xsl:attribute name="sku">rpmullig-<xsl:value-of select="@sku" /></xsl:attribute>
                            <xsl:attribute name="albumref">rpmullig-<xsl:value-of select="@albumref" /></xsl:attribute>
                            <xsl:attribute name="type">
                                <xsl:value-of select="@type" />
                            </xsl:attribute>
                            <SONGNAME><xsl:value-of select="songName"/></SONGNAME>
                            <SONGLENGTH><xsl:value-of select="songLength"/></SONGLENGTH>
                            <COMPOSERS><xsl:value-of select="composers"/></COMPOSERS>
                            <SONGNUMBER><xsl:value-of select="songNumber"/></SONGNUMBER>
                        </SONG>
                        </xsl:for-each>
                    </TRACKLIST>
                </ALBUM> 
                  </xsl:for-each>       
            </ARTIST>
            </xsl:for-each>
        </MUSIC>
    </xsl:template>
</xsl:stylesheet>	