<?xml version="1.0"?>
<!--+
    | Transforms the NOB-data from text format into xml format
    | Only simple POSs are handled!
    | NB: An XSLT-2.0-processor is needed!
    | The input: NOB data in the given format
    | Usage: java -Xmx2024m net.sf.saxon.Transform -it main nobDB_txt2xml.xsl file="INPUT-FILE"
    | 
    +-->

<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		xmlns:fn="fn"
		xmlns:local="nightbar"
		exclude-result-prefixes="xs fn local">
  
  
  
  <xsl:strip-space elements="*"/>
  <xsl:output method="xml"
	      omit-xml-declaration="no"
	      indent="yes"/>
  

<xsl:function name="local:distinct-deep" as="node()*">
  <xsl:param name="nodes" as="node()*"/> 
 
  <xsl:sequence select=" 
    for $seq in (1 to count($nodes))
    return $nodes[$seq][not(local:is-node-in-sequence-deep-equal(
                          .,$nodes[position() &lt; $seq]))]
 "/>
   
</xsl:function>

<xsl:function name="local:is-node-in-sequence-deep-equal" as="xs:boolean">
  <xsl:param name="node" as="node()?"/> 
  <xsl:param name="seq" as="node()*"/> 
 
  <xsl:sequence select=" 
   some $nodeInSeq in $seq satisfies deep-equal($nodeInSeq,$node)
 "/>
   
</xsl:function>

  <!-- Patterns for the feature values -->
  <xsl:variable name="e" select="'xml'"/>
  <xsl:variable name="outputDir" select="'xml-out'"/>
  <xsl:variable name="gm" select="' mask '"/>
  <xsl:variable name="gf" select="' fem '"/>
  <xsl:variable name="gn" select="' nøyt '"/>
  <xsl:variable name="gmf" select="' m/f '"/>
  <xsl:variable name="tc" select="' appell '"/>
  <xsl:variable name="tp" select="' prop '"/>
  <xsl:variable name="ns" select="' ent '"/>
  <xsl:variable name="np" select="' fl '"/>
  <xsl:variable name="du" select="' ub '"/>
  <xsl:variable name="dd" select="' be '"/>
  <xsl:variable name="fbar" select="' ubøy'"/>
  <xsl:variable name="cp" select="' pos '"/>
  <xsl:variable name="cc" select="' komp '"/>
  <xsl:variable name="cs" select="' sup '"/>
  <xsl:variable name="mif" select="' inf '"/>
  <xsl:variable name="mpp" select="'perf-part'"/>
  <xsl:variable name="mip" select="' imp '"/>
  <xsl:variable name="diath" select="' pass '"/>
  <xsl:variable name="tmpes" select="' pres '"/>
  <xsl:variable name="tmpet" select="' pret '"/>

  <!--   Input file in text format: as parameter -->
<!--   <xsl:param name="file" select="'/Users/cipriangerstenberger/NOB_data/NOB/UTF8/fullform_bm_u8.txt'"/> -->
  <xsl:param name="file" select="'/Users/cipriangerstenbergerfullform_bm_u8.txt'"/>
  
  <!--   pos tag set: the multiword expression are not included (to be extended!) -->
  <xsl:variable name="all-pos" as="element()">
    <p>
      <pos>CLB</pos>
      <pos>adj</pos>
      <pos>adjektiv</pos>
      <pos>adv</pos>
      <pos>det</pos>
      <pos>fork</pos>
      <pos>henv</pos>
      <pos>inf</pos>
      <pos>inf-merke</pos>
      <pos>interj</pos>
      <pos>konj</pos>
      <pos>pref</pos>
      <pos>prep</pos>
      <pos>pron</pos>
      <pos>sbu</pos>
      <pos>subst</pos>
      <pos>symb</pos>
      <pos>verb</pos>
    </p>
  </xsl:variable>
  
  <xsl:template match="/" name="main">
    
    <xsl:choose>
      <xsl:when test="unparsed-text-available($file)">
	<xsl:variable name="source" select="unparsed-text($file)"/>
	<xsl:variable name="lines" select="tokenize($source, '&#xa;')" as="xs:string+"/>
	<xsl:for-each select="$all-pos/pos">
	  <xsl:variable name="current-pos" select="."/>
	  
	  <xsl:variable name="output_pos">
	    <r>
	      <!-- capture the patterns and their meanings -->
	      <xsl:for-each select="$lines">
		<xsl:analyze-string select="." regex="^(\d+)\t([^\t]+)\t([^\t]+)\t([^\t]+)(.*)$" flags="s">
		  <xsl:matching-substring>
		    <xsl:variable name="ref" select="regex-group(1)"/>
		    <xsl:variable name="lemma" select="regex-group(2)"/>
		    <xsl:variable name="form" select="regex-group(3)"/>
		    <xsl:variable name="features" select="tokenize(regex-group(4), ' ')"/>
		    <xsl:variable name="featurestr" select="regex-group(4)"/>
		    <xsl:variable name="count" select="count($features)"/>
		    <xsl:variable name="pos" select="$features[1]"/>
		    <xsl:variable name="rest" select="normalize-space(regex-group(5))"/>
		    <!-- construct the entry: the features are self-explanatory -->
		    <xsl:if test="$pos = $current-pos">
		      <l>
			<xsl:attribute name="ref">
			  <xsl:value-of select="$ref"/>
			</xsl:attribute>
			<xsl:attribute name="pos">
			  <xsl:value-of select="$pos"/>
			</xsl:attribute>
			<xsl:choose>
			  <xsl:when test="contains($featurestr, $tc)">
			    <xsl:attribute name="type">
			      <xsl:value-of select="normalize-space($tc)"/>
			    </xsl:attribute>
			  </xsl:when>
			  <xsl:when test="contains($featurestr, $tp)">
			    <xsl:attribute name="type">
			      <xsl:value-of select="normalize-space($tp)"/>
			    </xsl:attribute>
			  </xsl:when>
			</xsl:choose>
			<xsl:attribute name="lemma">
			  <xsl:value-of select="$lemma"/>
			</xsl:attribute>
			<f>
			  <xsl:attribute name="form">
			    <xsl:value-of select="$form"/>
			  </xsl:attribute>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $gm)">
			      <xsl:attribute name="gender">
				<xsl:value-of select="normalize-space($gm)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $gf)">
			      <xsl:attribute name="gender">
				<xsl:value-of select="normalize-space($gf)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $gn)">
			      <xsl:attribute name="gender">
				<xsl:value-of select="normalize-space($gn)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $gmf)">
			      <xsl:attribute name="gender">
				<xsl:value-of select="normalize-space($gmf)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $ns)">
			      <xsl:attribute name="number">
				<xsl:value-of select="normalize-space($ns)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $np)">
			      <xsl:attribute name="number">
				<xsl:value-of select="normalize-space($np)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $du)">
			      <xsl:attribute name="def">
				<xsl:value-of select="normalize-space($du)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $dd)">
			      <xsl:attribute name="def">
				<xsl:value-of select="normalize-space($dd)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $fbar)">
			      <xsl:attribute name="flect">
				<xsl:value-of select="normalize-space($fbar)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $cp)">
			      <xsl:attribute name="deg">
				<xsl:value-of select="normalize-space($cp)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $cc)">
			      <xsl:attribute name="deg">
				<xsl:value-of select="normalize-space($cc)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $cs)">
			      <xsl:attribute name="deg">
				<xsl:value-of select="normalize-space($cs)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $mif)">
			      <xsl:attribute name="mod">
				<xsl:value-of select="normalize-space($mif)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $mpp)">
			      <xsl:attribute name="mod">
				<xsl:value-of select="normalize-space($mpp)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $mip)">
			      <xsl:attribute name="mod">
				<xsl:value-of select="normalize-space($mip)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $diath)">
			      <xsl:attribute name="diath">
				<xsl:value-of select="normalize-space($diath)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <xsl:choose>
			    <xsl:when test="contains($featurestr, $tmpes)">
			      <xsl:attribute name="temp">
				<xsl:value-of select="normalize-space($tmpes)"/>
			      </xsl:attribute>
			    </xsl:when>
			    <xsl:when test="contains($featurestr, $tmpet)">
			      <xsl:attribute name="temp">
				<xsl:value-of select="normalize-space($tmpet)"/>
			      </xsl:attribute>
			    </xsl:when>
			  </xsl:choose>
			  <!-- 			  <features> -->
			  <!-- 			    <xsl:attribute name="count"> -->
			  <!-- 			      <xsl:value-of select="$count"/> -->
			  <!-- 			    </xsl:attribute> -->
			  <!-- 			    <xsl:value-of select="$features"/> -->
			  <!-- 			  </features> -->
			  <!-- 			  <rest val="{$rest}"/> -->
			</f>
		      </l>
		    </xsl:if>
		  </xsl:matching-substring>
		  <!-- 		  <xsl:non-matching-substring> -->
		  <!-- 		    <xxx><xsl:value-of select="." /></xxx> -->
		  <!-- 		  </xsl:non-matching-substring> -->
		</xsl:analyze-string>
	      </xsl:for-each>
	    </r>
	  </xsl:variable>
	  <!-- output the data into separate xml-files: pos it the file name -->
	  <xsl:result-document href="{$outputDir}/{$current-pos}.{$e}">
	    <r>
	      <xsl:for-each-group select="$output_pos/r/l" group-by="@ref">
		<l>
		  <xsl:for-each select="./@*">
		    <xsl:copy-of select="."/>
		  </xsl:for-each>
		  <xsl:variable name="featureList" as="node()*">
		    <xsl:for-each select="current-group()">
		      <xsl:copy-of select="f"/>
		    </xsl:for-each>
		  </xsl:variable>
		  <xsl:copy-of select="local:distinct-deep($featureList)"/> 
		</l>
	      </xsl:for-each-group>
	    </r>
	    <!-- 	    <xsl:copy-of select="$output_pos"/> -->
	  </xsl:result-document>
	</xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Cannot locate : </xsl:text><xsl:value-of select="$file"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>

