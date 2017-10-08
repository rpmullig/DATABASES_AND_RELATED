<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <MUSIC>
            <xsl:for-each select="ArtistsList/Artists">
              <ARTIST>
                <ARTISTNAME><xsl:value-of select="@Name"/></ARTISTNAME>
                <xsl:for-each select="Information"> 
                <ARTISTCOUNTRY><xsl:value-of select="From_Country"/></ARTISTCOUNTRY>
                <GROUPNAMES><xsl:value-of select="Group_Members"/></GROUPNAMES>
                <CAREERSTART><xsl:value-of select="Career_Began"/></CAREERSTART>
                <CAREEREND><xsl:value-of select="Career_Ended"/></CAREEREND>
                <GENRE><xsl:value-of select="Genre"/></GENRE>
                </xsl:for-each>
               <xsl:for-each select="Album">
                 <ALBUM> 
                    <xsl:attribute name="sku">hw26-<xsl:value-of select="@SKU" /></xsl:attribute>
                    <RATING><xsl:value-of select="Rating"/></RATING>
                    <COMMENT><xsl:value-of select="Comment"/></COMMENT>
                    <ALBUMNAME>
                        <xsl:attribute name="albumCategory">
                            <xsl:value-of select="@Category" />
                        </xsl:attribute>
                        <xsl:attribute name="type">
                            <xsl:value-of select="@Type" />
                        </xsl:attribute>
                        <xsl:value-of select="@Name"/>
                    </ALBUMNAME>
                    <ALBUMCOVER><xsl:value-of select="Album_Picture_FileName"/></ALBUMCOVER>
                    <IMAGESOURCE><xsl:value-of select="Picture_Source"/></IMAGESOURCE>
                    <PRODUCERS><xsl:value-of select="Producers"/></PRODUCERS>
                    <MIXERS><xsl:value-of select="Mixers"/></MIXERS>
                    <MASTERENGINEERS><xsl:value-of select="Mastering_Engineer"/></MASTERENGINEERS>
                    <LABEL><xsl:value-of select="RecordLabel"/></LABEL>
                    <RELEASEINFORMATION>
                        <xsl:for-each select="Releases/Release">
                        <RELEASEDATA>          
                            <RELEASEDATE><xsl:value-of select="Release_Date"/></RELEASEDATE>
                            <RECORDLABEL><xsl:value-of select="Record_Label"/></RECORDLABEL>
                            <RECORDLABELCATALOGNUMBER><xsl:value-of select="Catelog_Number"/></RECORDLABELCATALOGNUMBER>
                            <BARCODENUMBER><xsl:value-of select="Bar_Code"/></BARCODENUMBER>
                            <COUNTRY><xsl:value-of select="Country"/></COUNTRY>
                            <FORMAT><xsl:value-of select="Format"/></FORMAT>
                          </RELEASEDATA>
                        </xsl:for-each>
                    </RELEASEINFORMATION>
                    <TRACKLIST>
                        <xsl:for-each select="Song/Songs">
                        <SONG>
                            <xsl:attribute name="sku">hw26-<xsl:value-of select="@SKU" /></xsl:attribute>
                            <xsl:attribute name="albumref">hw26-<xsl:value-of select="@AlbumREF" /></xsl:attribute>
                            <xsl:attribute name="type">
                                <xsl:value-of select="@Type" />
                            </xsl:attribute>
                            <SONGNAME><xsl:value-of select="Songs_Title"/></SONGNAME>
                            <SONGLENGTH><xsl:value-of select="Songs_Length"/></SONGLENGTH>
                            <COMPOSERS><xsl:value-of select="Songs_Composers"/></COMPOSERS>
                            <SONGNUMBER><xsl:value-of select="Songs_Position"/></SONGNUMBER>
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