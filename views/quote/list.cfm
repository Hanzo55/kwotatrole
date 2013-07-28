<cfsilent>
	<cfset local.quoteList = rc.quotes />
	<cfset local.user = rc.user />
</cfsilent>	
<cfoutput>
<hr>
<cfloop collection="#local.quoteList#" item="local.id">
	<cfset local.quote = local.quoteList[ local.id ] />

	"#local.quote.getText()#" | 

	<cfif local.quote.hasUserRated( local.user )>
		#local.quote.getRatingsByUser( local.user.getId() )#
	<cfelse>
		<a href="/?action=quote.judge&id=#local.id#&verdict=c">[C]</a>
		<a href="/?action=quote.judge&id=#local.id#&verdict=t">[T]</a>
	</cfif>

	<br/>

	- #local.quote.getAuthor()#, "<a href="#local.quote.getSourceUrl()#">#local.quote.getSourceTitle()#</a>"<br/>
	[<a href="#local.quote.getSiteUrl()#">#local.quote.getSiteName()#</a>]
</cfloop>
</cfoutput>