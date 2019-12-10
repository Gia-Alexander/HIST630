<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:teiHeader//tei:category">
            <sch:report test="tei:gloss">
                A &lt;category&gt; element in the &lt;taxonomy&gt; may not contain a &lt;gloss&gt; element.
            </sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>
