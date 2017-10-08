<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <MUSIC>
            <xsl:for-each select="music/artist">
              <ARTIST>
                <ARTISTNAME><xsl:value-of select="@name"></xsl:value-of></ARTISTNAME>
                  <ARTISTTYPE><xsl:value-of select="@band_style"></xsl:value-of></ARTISTTYPE>
                  <ARTISTCOUNTRY><xsl:value-of select="@country"></xsl:value-of></ARTISTCOUNTRY>
                <GROUPNAMES><xsl:value-of select="groupNames"/></GROUPNAMES>
                  <CAREERSTART><xsl:value-of select="@career_beg"></xsl:value-of></CAREERSTART>
                  <CAREEREND><xsl:value-of select="@career_end"/></CAREEREND>
                <GENRE><xsl:value-of select="album/genre"/></GENRE>
                  <xsl:for-each select="album">
                  <ALBUM> 
                    <xsl:attribute name="sku">jhbae-<xsl:value-of select="@SKU"/></xsl:attribute>
                    <RATING><xsl:value-of select="rating"/></RATING>
                    <COMMENT><xsl:value-of select="comment"/></COMMENT>
                    <ALBUMNAME>
                        <xsl:attribute name="albumCategory">
                            <xsl:value-of select="@album_category"/>
                        </xsl:attribute>
                        <xsl:attribute name="type">
                            <xsl:value-of select="@type"/>
                        </xsl:attribute>
    
                        <xsl:value-of select="@a_title"/>
                        
                    </ALBUMNAME>
                     <ALBUMCOVER><xsl:value-of select="image"/></ALBUMCOVER>
                     <IMAGESOURCE><xsl:value-of select="image/@citation"/></IMAGESOURCE>
                      
                    <PRODUCERS><xsl:value-of select="@g_producer"/></PRODUCERS>
                      <MIXERS><xsl:value-of select="@g_engineer_mixer"/></MIXERS>
                    <MASTERENGINEERS><xsl:value-of select="@g_master_engineer"/></MASTERENGINEERS>
                    <LABEL><xsl:value-of select="@g_record_label"/></LABEL>
                    
                       <RELEASEINFORMATION>
                        <xsl:for-each select="album_release">
                        <RELEASEDATA>          
                            <RELEASEDATE><xsl:value-of select="@date"/></RELEASEDATE>
                            <RECORDLABEL><xsl:value-of select="@record_label"/></RECORDLABEL>
                            <RECORDLABELCATALOGNUMBER><xsl:value-of select="@catalog_num"/></RECORDLABELCATALOGNUMBER>
                            <BARCODENUMBER><xsl:value-of select="@barcode"/></BARCODENUMBER>
                            <COUNTRY><xsl:value-of select="@country"/></COUNTRY>
                            <FORMAT><xsl:value-of select="@format"/></FORMAT>
                          </RELEASEDATA>
                        </xsl:for-each>
                    </RELEASEINFORMATION>
                    <TRACKLIST>
                        <xsl:for-each select="song">
                        <SONG>
                            <xsl:attribute name="sku">jhbae-<xsl:value-of select="@SKU" /></xsl:attribute>
                            <xsl:attribute name="albumref">jhbae-<xsl:value-of select="@albumref" /></xsl:attribute>
                            <xsl:attribute name="type">
                                <xsl:value-of select="@type" />
                            </xsl:attribute>
                            <SONGNAME><xsl:value-of select="@s_title"/></SONGNAME>
                            <SONGLENGTH><xsl:value-of select="@duration"/></SONGLENGTH>
                            <COMPOSERS><xsl:value-of select="@composer"/></COMPOSERS>
                            <SONGNUMBER><xsl:value-of select="@track_num"/></SONGNUMBER>
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