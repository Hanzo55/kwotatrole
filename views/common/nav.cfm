<cfsilent>
	<cfset local.user = rc.user />
</cfsilent>
<div id="bar">
    <div id="links">
        <span id="links-nav"></span>
        <span id="links-user"><cfoutput>#local.user.getUsername()#</cfoutput></span>
    </div>
    <div id="sheep-meter">
        <div class="black-sheep"></div>
        <div class="meter">
            <span style="width:<cfoutput>#local.user.getHerdPercentage()#</cfoutput>%"></span>
        </div>
        <div class="white-sheep"></div>
    </div>
</div>