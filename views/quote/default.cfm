<cfsilent>
	<cfset local.quoteList = rc.quotes />
	<cfset local.nav = rc.navContent />
	<cfset local.user = rc.user />
</cfsilent>
<cfoutput>
#local.nav#
<hr>
<cfloop collection="#local.quoteList#" item="local.id">
	
	<cfset local.quote = local.quoteList[local.id] />
	
	"#local.quote.getText()#" | 
	
	<cfif local.quote.hasUserRated( local.user )>
		#local.quote.getRatings()#
	<cfelse>
		<a href="/?action=quote.judge&id=#local.id#&verdict=c">[C]</a>
		<a href="/?action=quote.judge&id=#local.id#&verdict=t">[T]</a>
	</cfif>
	<br/>
</cfloop>
</cfoutput>