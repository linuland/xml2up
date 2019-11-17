DataFil	::=	<DataInfoDel> <Data> <Avstämning> <FilSlut>
<DataInfoDel>		#INFO_START <LF> <DataInfo> #INFO_SLUT <LF>
<DataInfo>		<TypFil> <Beställningsid> <Beställningstyp> <InfilInfo> | <UtfilInfo>
<TypFil>		#FILTYP <WS> <FilTyp> <LF>
;FilTyp enligt kolumnen ”fältnamn/termkod”, i TekniskBeskrivning kap 8.3
<Beställningsid>		#BESTÄLLNINGSID <WS> <BestId> <LF>
;BestId enligt kolumnen “fältnamn/termkod”, TekniskBeskrivning kap 8.3
<Beställningstyp>		#BESTÄLLNINGSTYP <WS> <BestTyp> <LF>
;BestTyp enligt kolumnen “fältnamn/ ;termkod”, TekniskBeskrivning kap 8.3
<InfilInfo>		<InfilNamn> [<Giltighetstid>]
<InfilNamn>		NAMN_INFIL <WS> <NamnInfil> <LF>
;NamnInFil enligt kolumnen ”fältnamn/termkod”, TekniskBeskrivning kap 8.3
<Giltighetstid>		#GILTIG_TOM <WS> <TomDatum> <LF>
;TomDatum enligt kolumnen ”fältnamn/termkod”, TekniskBeskrivning kap 8.3
<UtfilInfo>		<Effekteringsdatum>[<Ändringsdatum>] [<InfilTillGrund>]
<Effektueringsdatum>		#EFFEKTUERAD <WS> <EffDatum> <LF>
;EffDatum enligt kolumnen “fältnamn/ ;termkod” TekniskBeskrivning kap 8.3
<Ändringsdatum>		#DATUM_ANDRING <WS> <FromTomDatum> <LF>
;FromTomDatum enligt kolumnen fältnamn/termkod”, TekniskBeskrivning kap 8.3
<InfilTillGrund>		#INFIL_TILL_GRUND <WS><NamnInfilTillGrund><LF>
<data>		#DATA_START<LF>
<DataPost1Sekvens>|
<DataPost2Sekvens>|
<DataPost3Sekvens> #DATA_SLUT<LF>
<Dagstart>		#DAG_START ÅÅÅÅMMDD<LF>
<Dagslut>		#DAG_SLUT<LF>
<Dag>		<Dagstart><DataPost2Sekvens><Dagslut>
<DataPost1Sekvens>		<DataPost1>*
<DataPost1>		#PNR <WS> <PersNr> <LF>
<DataPost2Sekvens>		<DataPost2>*
<DataPost2>		#POST_START <LF> <DataDel>*
#POST_SLUT <LF>
<DataPost3Sekvens>		<Dag>*
<DataDel>		#UP <WS> <TermKod> [<WS>]
[<TermVärde>] <LF>
;TermKod och TermVärde enligt kolumn “fältnamn/termkod”,
TekniskBeskrivning kap 8.3 och bilaga 1. För termkoder, som visar att en/ett relation/medborgarskap eller historisk folkbokföringsadress ;startar resp slutar, saknas
;<TAB><TermVärde>, se bilaga 1.
<Avstämning>		#AVST_START <LF> <AvstInfo>
#AVST_SLUT <LF>2
<AvstInfo>		#ANTAL_POSTER <WS> <AntalPoster>
<LF>
;AntalPoster enligt kolumn ”fältnamn/termkod”, TekniskBeskrivning kap 8.3
<FilSlut>		#FIL_SLUT <LF>
