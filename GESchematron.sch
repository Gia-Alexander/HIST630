<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
  
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        
        <sch:rule context="tei:teiHeader//tei:catDesc">
            <sch:report test="tei:gloss">
                A &lt;catDesc&gt; element in the &lt;taxonomy&gt; may not contain a &lt;gloss&gt; element.
            </sch:report>
        </sch:rule>
                
        <sch:rule context="tei:header/category">
            <sch:let name="category" value="//tei:teiHeader/category/xml:id"/>
            <sch:assert test=". = category">
                Preferred values: #Paper, #Metal, #Glass, #Furniture, #SmallWares
            </sch:assert>
        </sch:rule>
        
        <sch:rule context="tei:body/p/objectName">
            <sch:let name="objectName" value="//tei:body/p/objectName/type"/>
            <sch:assert test=". = objectName">
                Preferred values: 
                BulkPaper, Stationery, CardStock, Printing, 
                Communion, PreciousMetals. GeneralDomestic, ElectroPlate, SheffieldPlage, Ormolu, Jewellery, OrnamentsToys, Enamel, Curios, 
                Windows, StainedGlass, CastGlass, Bottles, ChemGlass, FlintGlass, OpticalGlass,
                Decor, Upholstery, Wallpaper, PapierMache,
                Perfume, BoxesCases, FakeFlowers, Candles, Confectionery, Beads, Umbrellas, Fishing, WalkingCanes, MiscSmallWares                
            </sch:assert>
        </sch:rule>
        
    </sch:pattern>
</sch:schema>
