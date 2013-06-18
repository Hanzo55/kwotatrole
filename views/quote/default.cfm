<cfsilent>
	<cfset local.quoteList = rc.quotes />
	<cfset local.nav = rc.navContent />
	<cfset local.user = rc.user />
</cfsilent>
<cfoutput>#local.nav#</cfoutput>
<hr>
<cfloop collection="#local.quoteList#" item="local.id">
	<cfset local.quote = local.quoteList[local.id] />
	<cfoutput>"#local.quote.getText()#" | <cfif local.quote.hasUserRated( local.user )>#local.quote.getRatings()#<cfelse>[C] [T]</cfif></cfoutput><br/>
</cfloop>