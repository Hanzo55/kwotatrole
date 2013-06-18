<cfsilent>
	<cfset local.user = rc.user />
</cfsilent>
<cfoutput>#local.user.getUsername()# | #chr(176)# #local.user.getHeaven()# | #chr(968)# #local.user.getHell()#</cfoutput>
<hr/>