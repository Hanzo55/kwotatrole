<cfsilent>
	<cfset local.quoteList = rc.quotes />
	<cfset local.user = rc.user />
</cfsilent>	
<cfoutput>
<hr>
<ul id="quote-list">
<cfloop collection="#local.quoteList#" item="local.id">
	<cfset local.quote = local.quoteList[ local.id ] />

	<cfif local.quote.hasUserRated( local.user )>
		#local.quote.getRatingsByUser( local.user.getId() )#
	<cfelse>
		<a href="/?action=quote.judge&id=#local.id#&verdict=c">[C]</a>
		<a href="/?action=quote.judge&id=#local.id#&verdict=t">[T]</a>
	</cfif>

	<li><label>"#local.quote.getText()#"</label>

	<ul>
		<span id="quote-info">#local.quote.getAuthor()#</li>
	</ul>
	
	<span id="content-title">"<a href="#local.quote.getSourceUrl()#">#local.quote.getSourceTitle()#</a>"</span>
	<span id="content-site"><a href="#local.quote.getSiteUrl()#">#local.quote.getSiteName()#</a></span>

	<br/>
</cfloop>
</ul>
</cfoutput>