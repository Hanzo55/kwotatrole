<cfsilent>
	<cfset local.quoteList = rc.quotes />
	<cfset local.nav = rc.content />
</cfsilent>
<cfoutput>#local.nav#</cfoutput>
<hr>
<cfloop collection="#local.quoteList#" item="local.id">
	<cfset local.quote = local.quoteList[local.id] />
	<cfoutput>"#local.quote.getText()#"</cfoutput><br/>
</cfloop>