function pure(handle)
{
	if (handle.includes('/'))
		return handle.split('/').slice(-1)[0];
	else
		return handle;
}

function enhanceLinks(handle, res)
{
	var h = 'bibsleigh' in res ? res.bibsleigh : pure(handle);
	$('#links').append('<a href="http://bibtex.github.io/' + h + '.html">[BibSLEIGH]</a>&nbsp;&nbsp;');
	if ('doi' in res)
		$('#links').append('<a href="http://dx.doi.org/' + res.doi + '">[DOI]</a>&nbsp;&nbsp;');
	if ('ee' in res && !res.ee.includes('doi'))
		$('#links').append('<a href="' + res.ee + '">[EE]</a>&nbsp;&nbsp;');
	if ('dblpkey' in res)
		$('#links').append('<a href="http://dblp.uni-trier.de/rec/html/' + res.dblpkey + '">[DBLP]</a>&nbsp;&nbsp;');
}

function loadEvent(handle, res)
{
	if (!('venue' in res))
		res.venue = res.name
	$('#main').append('<h3 id="pTitle"><img src="http://bibtex.github.io/stuff/' + res.venue.toLowerCase() + '.png" /></h3>');
	if ('booktitle' in res)
		$('#pTitle').append(res.booktitle + ' ' + res.year);
	if ('address' in res)
		$('#pTitle').append(' in ' + res.address[0] + ' (' + res.address[2] + ')');
	if ('back' in res)
		$('#pTitle').append(' <a href="javascript:loadFromJson(\'' + res.back + '\');">[↑]</a>');
	$('#main').append('<div id="links"></div>');
	enhanceLinks(handle, res);
	$('#main').append('<ul id="papers"></ul>');
	$.each(res.papers, function(n,x) {
		$('#papers').append('<li><a href="javascript:loadFromJson(\'' + x + '\');">' + pure(x) + '</a></li>');
	});
}

function loadPaper(handle, res)
{
	$('#main').append('<h3 id="pTitle"><img src="http://bibtex.github.io/stuff/' + res.venue.toLowerCase() + '.png" /></h3>')
	$.each(res.author, function(n,x) {
		lnk = x.replace(/ /g,'_').replace(/\./g,'').replace(/é/g,'e').replace(/ø/g,'oe').replace(/Ø/g,'Oe').replace(/ë/g,'e').replace('ä','ae').replace('ö','oe');
		$('#pTitle').append('<a href="http://bibtex.github.io/person/' + lnk + '.html">' + x + '</a>, ');
	});
	$('#pTitle').append('<em>“' + res.title + '”</em>, <abbr title="' + res.booktitle + '">' + res.booktitleshort + '</abbr> '
		+ res.year + ', pp. ' + res.pages.replace('-','–') + '.');
	if ('back' in res)
		$('#pTitle').append(' <a href="javascript:loadFromJson(\'' + res.back + '\');">[↑]</a>');
	$('#main').append('<div id="links"></div>');
	enhanceLinks(handle, res);
	$('#main').append('<div id="tabs"><ul><li><a href="#present">Present</a></li><li><a href="#past">Past</a></li><li><a href="#future">Future</a></li></ul><div id="present"></div><div id="past"></div><div id="future"></div></div>');
	$( function() { $( "#tabs" ).tabs(); });
}

function loadFromJson(handle)
{
	var request = new XMLHttpRequest();
	request.open('GET', 'https://raw.githubusercontent.com/slebok/zeitgeist/master/' + handle + '.json', false);
	request.send(null);
	var res = JSON.parse(request.responseText);
	console.log(res);

	$('#main').empty();
	if ('papers' in res)
		loadEvent(handle, res);
	else
		loadPaper(handle, res);
}

(function(){ loadFromJson('SLE'); })();