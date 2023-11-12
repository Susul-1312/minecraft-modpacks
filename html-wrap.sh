echo "<html>
<head>
<title>$1</title>
<style>
@media (prefers-color-scheme: dark){
body {color:#eee;background:#161616}
a:link {color:#cdf}
a:hover, a:visited:hover {color:#def}
a:visited {color:#dcf}
}
body{
margin:1em auto;
max-width:40em;
padding:0 .62em;
font:1.2em/1.62 sans-serif
}
h1,h2,h3 {
line-height:1.2
}
@media print{
body{
max-width:none
}
}
</style>
</head>
<body>"
while read line; do
	echo $line
done < <(cat -)
echo "</body>
</html>"
