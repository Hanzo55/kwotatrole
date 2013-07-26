<cfsilent>
	<cfset local.header = rc.header />
	<cfset local.content = rc.content />
	<cfset local.user = rc.user />
</cfsilent>
<cfoutput>
	<div id="header">#local.header#</div>
	<div id="content">#local.content#</div>
</cfoutput>