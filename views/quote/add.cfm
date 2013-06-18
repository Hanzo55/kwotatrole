<cfsilent>
	<cfset local.quote = rc.quote />
</cfsilent>

<cfoutput><form method="post" action="index.cfm?action=quote.save">
	<input type="hidden" name="id" value="#local.quote.getId()#" />

	Add a Quote: <input type="text" name="text" /> <input type="submit" value="Add" />
</form></cfoutput>