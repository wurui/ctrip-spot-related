<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-spot-related">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-spot-related" ox-mod="ctrip-spot-related">
            <h3>
                想去该景点的人还想去
            </h3>
            <div class="spots">
            	<xsl:for-each select="data/recommended-spot/i[position() &lt; 4]">
            		<a href="{href}" class="item">
            			<img src="https://a.oxm1.cc/img/blank.png"
            				style="background-image:url({img})"
            				/>
            			<br/>
            			<nobr class="title">
            				<xsl:value-of select="title"/>
            			</nobr>
            			<br/>
            			<span class="score">
            				<xsl:value-of select="score"/>分
            			</span>
            		</a>
            	</xsl:for-each>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
