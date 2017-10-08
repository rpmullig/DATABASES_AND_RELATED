<?xml version="1.0" encoding="UTF-8"?> 

<xslt:stylesheet xmlns:xslt="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
	
    <xslt:output method="xml" indent="yes"/>
        <xslt:template match="/">
			<MUSIC>
				<xslt:for-each select="Music/Artist">
				<ARTIST>
					<ARTISTNAME><xslt:value-of select="Biography_Info/Name"/></ARTISTNAME>
					<ARTISTTYPE><xslt:value-of select="Biography_Info/Individual_Or_Group"/></ARTISTTYPE>
					<ARTISTCOUNTRY><xslt:value-of select="Biography_Info/Country"/></ARTISTCOUNTRY>
					<GROUPNAMES><xslt:value-of select="Biography_Info/Artists_within_group"/></GROUPNAMES>
					<CAREERSTART><xslt:value-of select="Biography_Info/Career_Start_Date"/></CAREERSTART>
					<CAREEREND><xslt:value-of select="Biography_Info/Careet_End_Date"/></CAREEREND>
					<GENRE><xslt:value-of select="Biography_Info/Genre"/></GENRE>
					<xslt:for-each select="Album">
					<ALBUM> 
						<xslt:attribute name="sku">dingyish-<xslt:value-of select="@sku" /></xslt:attribute>
						<RATING><xslt:value-of select="Rating"/></RATING>
						<COMMENT><xslt:value-of select="Comment"/></COMMENT>
						<ALBUMNAME>
							<xslt:attribute name="albumCategory">
								<xslt:value-of select="@Category" />
							</xslt:attribute>
							<xslt:attribute name="type">
								<xslt:value-of select="@type" />
							</xslt:attribute>
							<xslt:value-of select="@Name"/>
						</ALBUMNAME>
						<ALBUMCOVER><xslt:value-of select="image"/></ALBUMCOVER>
						<IMAGESOURCE><xslt:value-of select="image_source"/></IMAGESOURCE>
						<LABEL><xslt:value-of select="label"/></LABEL>
						<RELEASEINFORMATION>
							<xslt:for-each select="Releases/Release">
							<RELEASEDATA>
								<RELEASEDATE><xslt:value-of select="release_date"/></RELEASEDATE>
								<RECORDLABEL><xslt:value-of select="record_label"/></RECORDLABEL>
								<RECORDLABELCATALOGNUMBER><xslt:value-of select="catalog"/></RECORDLABELCATALOGNUMBER>
								<BARCODENUMBER><xslt:value-of select="bar_code"/></BARCODENUMBER>
								<COUNTRY><xslt:value-of select="country"/></COUNTRY>
								<FORMAT><xslt:value-of select="format"/></FORMAT>
							</RELEASEDATA>	
							</xslt:for-each>
						</RELEASEINFORMATION>
						<TRACKLIST>
							<xslt:for-each select="Tracks/Song">
							<SONG>
								<xslt:attribute name="sku">dingyish-<xslt:value-of select="@sku" /></xslt:attribute>
								<xslt:attribute name="albumref">dingyish-<xslt:value-of select="@albumref" /></xslt:attribute>
								<xslt:attribute name="type">
									<xslt:value-of select="@type" />
								</xslt:attribute>
								<SONGNAME><xslt:value-of select="Title"/></SONGNAME>
								<SONGLENGTH><xslt:value-of select="Length"/></SONGLENGTH>
								<COMPOSERS><xslt:value-of select="Composer"/></COMPOSERS>
								<SONGNUMBER><xslt:value-of select="Song_Position"/></SONGNUMBER>
							</SONG>
							</xslt:for-each>
						</TRACKLIST>
					</ALBUM>
					</xslt:for-each>
				</ARTIST>
				</xslt:for-each>
			</MUSIC>
		</xslt:template>
</xslt:stylesheet>	
	
