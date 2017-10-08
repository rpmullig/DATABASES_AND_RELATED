<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    
   <xsl:template match="MUSIC"> 
    <html>
        <head>
        <title>Team 6 RULES</title>
               
            <style>
            #album_info{
            font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
            width:100%;
            border-collapse:collapse;
            }
            
            #album_info td,
            #album_info th{
            font-size:1em;
            border:1px solid #98bf21;
            padding:3px 7px 2px 7px;
            }
            
            #album_info th{
            font-size:1.1em;
            text-align:left;
            padding-top:5px;
            padding-bottom:4px;
            background-color:#3399FF;
            color:#ffffff;
            }
            
            #album_info tr.alt td{
            color:#000000;
            background-color:#EAF2D3;
            }
          
            </style>
            
 
            </head>
    </html>
  
        <xsl:for-each select="ARTIST">
<center>
           
</center>   
            <SPAN style="font-style:Arial;color:#0066CC;font-weight:bold;font-size:1.5em" >Artist Name: </SPAN>
            <SPAN style="font-style:Arial;color:blue;font-weight:bold;font-size:1.5em" ><xsl:value-of  select="ARTISTNAME"/></SPAN><BR/>
            <SPAN style="font-style:Arial;color:#0066CC;font-weight:bold;font-size:1.1em">Artist Type: </SPAN>
            <SPAN style="font-style:Arial;color:blue;font-weight:bold;font-size:1.1em" ><xsl:value-of  select="ARTISTTYPE"/></SPAN><BR/>
            <SPAN style="font-style:Arial;color:#0066CC;font-weight:bold;font-size:1.1em">Genre: </SPAN>
            <SPAN style="font-style:Arial;color:blue;font-weight:bold;font-size:1.1em" ><xsl:value-of  select="GENRE"/></SPAN><BR/>
       
            <xsl:for-each select="ALBUM">
            
            <table id="album_info">               
                <tr>
                    <th>Album Title</th>
                    <th>Album Image</th>
                    <th>Album Comment</th>
                    <th>Album Category</th>
                    <th>Sku</th> 
                </tr>
 
               
                <tr>
                    <td><xsl:value-of select="ALBUMNAME"/></td>
                    <td> <img align="middle" width="140" height="100" alt="album cover">
                        <xsl:attribute name="src">images/<xsl:value-of select="ALBUMCOVER"/></xsl:attribute>
                    </img></td>
                    <td><xsl:value-of select="COMMENT"/></td>
                    <td><xsl:value-of select="ALBUMNAME/@albumCategory"/></td>
                    <td><xsl:value-of select="@sku"/></td>  
                </tr>
               
            </table>
            <table id="album_info">
                <tr>
                    <th>Song Title</th>
                    <th>Position</th>
                    <th>Song Length</th>
                    <th>Sku</th>
                    
                </tr>
                

                    <xsl:for-each select="TRACKLIST/SONG">
                        <tr>                     
                        
                    <td><xsl:value-of select="SONGNAME"></xsl:value-of></td>
                    <td><xsl:value-of select="SONGNUMBER"></xsl:value-of></td>
                    <td><xsl:value-of select="SONGLENGTH"></xsl:value-of></td>
                    <td><xsl:value-of select="@sku"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
            </table>
                
              <br></br>   
              <br></br>
            
            
            
            </xsl:for-each>
                
            
       
   </xsl:for-each>
            

   </xsl:template>
    
</xsl:stylesheet>