<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>#rc.title#</title>
  <link rel="stylesheet" href="/assets/css/davidsimon.css" />
</head>
<body>
  <cfoutput>#body#

<cfloop array="#rc.libs#" index="lib">
	<script src="#lib#"></script>	
</cfloop>

<cfloop array="#rc.emberFiles#" index="appFile">
	<script src="#appFile#"></script>	
</cfloop>
   
</cfoutput>   
</body>
</html>