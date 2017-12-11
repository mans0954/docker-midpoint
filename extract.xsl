<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://midpoint.evolveum.com/xml/ns/public/common/common-3">
<xsl:strip-space elements="*" />
<xsl:output method="xml" indent="yes" />

  <xsl:template match="/objects">

    <xsl:result-document href="out/extract.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="org"/>
          <xsl:apply-templates select="user"/>
          <xsl:apply-templates select="shadow"/>
          <xsl:apply-templates select="role"/>
          <xsl:apply-templates select="valuePolicy"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/org.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
	xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
	xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="org"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/users.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="user"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/connectors.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="connector"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/shadows.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="shadow"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/roles.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="role"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/valuePolicy.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="valuePolicy"/>
      </objects>
    </xsl:result-document>

    <xsl:result-document href="out/securityPolicy.xml" method="xml">
      <objects xmlns="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:c="http://midpoint.evolveum.com/xml/ns/public/common/common-3"
        xmlns:org="http://midpoint.evolveum.com/xml/ns/public/common/org-3">
          <xsl:apply-templates select="securityPolicy"/>
      </objects>
    </xsl:result-document>



  </xsl:template>

  <xsl:template match="org">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="user">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="connector">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="shadow">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="role">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="valuePolicy">
      <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="securityPolicy">
      <xsl:copy-of select="."/>
  </xsl:template>

</xsl:stylesheet>
