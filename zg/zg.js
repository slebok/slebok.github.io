var base = 'https://raw.githubusercontent.com/slebok/zeitgeist/master/';

function url2text(url)
{
	var request = new XMLHttpRequest();
	request.open('GET', url, false);
	request.send(null);
	return request.responseText;
}

function url2xml(url)
{
	var request = new XMLHttpRequest();
	request.open('GET', url, false);
	request.send(null);
	return request.responseXML;
}

function pure(handle)
{
	if (handle.includes('/'))
		return handle.split('/').slice(-1)[0];
	else
		return handle;
}

function enhanceLinks(where, handle, res)
{
	var h = 'bibsleigh' in res ? res.bibsleigh : pure(handle);
	if (h != '')
		$('#'+where).append('<a href="http://bibtex.github.io/' + h + '.html">[BibSLEIGH]</a>&nbsp;&nbsp;');
	if ('doi' in res)
		$('#'+where).append('<a href="http://dx.doi.org/' + res.doi + '">[DOI]</a>&nbsp;&nbsp;');
	if ('ee' in res && !res.ee.includes('doi'))
		$('#'+where).append('<a href="' + res.ee + '">[EE]</a>&nbsp;&nbsp;');
	if ('dblpkey' in res)
		$('#'+where).append('<a href="http://dblp.uni-trier.de/rec/html/' + res.dblpkey + '">[DBLP]</a>&nbsp;&nbsp;');
	// universal
	$('#'+where).append('<a href="https://www.google.com/search?q=%22' + res.title.split(' ').join('+') + '%22">[Google]</a>&nbsp;&nbsp;');
	$('#'+where).append('<a href="https://scholar.google.be/scholar?q=%22' + res.title.split(' ').join('+') + '%22">[Scholar]</a>&nbsp;&nbsp;');
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
	enhanceLinks('links', handle, res);
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
	enhanceLinks('links', handle, res);
	$('#main').append('<div id="tabs"><ul><li><a href="#tab1">Present</a></li><li><a href="#tab2">Past</a></li><li><a href="#tab3">Future</a></li></ul><div id="tab1"><ul id="present"></ul></div><div id="tab2"><ol id="past"></ol></div><div id="tab3"><ul id="future"></ul></div></div>');
	$( function() { $( "#tabs" ).tabs(); });
	if ('present' in res)
		$.each(res.present, function(n,x) {
			$('#present').append('<li>' + x + '</li>');
		});
	if ('past' in res)
		$.each(res.past, function(n,x) {
			$('#past').append('<li id="past' + n + '"></li>');

			if (x.startsWith('dblp:'))
			{
				var xml = url2text(base + 'dblp/' + x.substring(5) + '.xml');
				console.log(xml);
				var xmlDoc = $.parseXML(xml);
				var $xml = $(xmlDoc);
				var $author = $xml.find("author");
				$author.each(function(){ $('#past'+n).append($(this).text() + ', '); });
				$('#past'+n).append('<em>' + $xml.find("title").text() + '</em>, '
					+ $xml.find("booktitle").text() + ' '
					+ $xml.find("year").text());
				var dblpkey = $xml.find('inproceedings').attr('key');
				$('#past'+n).append(' <a href="http://dblp.uni-trier.de/rec/html/' + dblpkey + '">[DBLP]</a>');
				var $ee = $xml.find("ee");
				$ee.each(function(){
					if ($(this).text().includes('https://doi.org/'))
						$('#past'+n).append(' <a href="' + $(this).text() + '">[DOI]</a>');
				});
			}
			else if (x.startsWith('bibsleigh:'))
			{
				var bib = JSON.parse(url2text('https://raw.githubusercontent.com/slebok/bibsleigh/master/corpus/' + x.substring(10) + '.json'));
				console.log(bib);

				$('#past'+n).append('<img src="http://bibtex.github.io/stuff/' + bib.venue.toLowerCase() + '.png" />')
				// TODO: make robust towards solo papers
				$.each(bib.author, function(k,z) { $('#past'+n).append(z + ', '); });
				$('#past'+n).append('<em>' + bib.title + '</em>, <abbr title="' + bib.booktitle + '">' + bib.booktitleshort + '</abbr> '
					+ bib.year + ', pp. ' + bib.pages.replace('-','–') + '.');
				$('#past'+n).append('<span id="links'+n+'"></span>');
				enhanceLinks('links'+n, x.substring(10), bib)
			}
			else
				$('#past' + n).append(x);
		});
	if ('future' in res)
		$.each(res.future, function(n,x) {
			$('#future').append('<li>' + x + '</li>');
		});
}

function loadFromJson(handle)
{
	var res = JSON.parse(url2text(base + handle + '.json'));
	console.log(res);

	$('#main').empty();
	if ('papers' in res)
		loadEvent(handle, res);
	else
		loadPaper(handle, res);
}

(function(){ loadFromJson('SLE'); })();