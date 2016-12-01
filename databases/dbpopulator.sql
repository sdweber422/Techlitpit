

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'Felix''s Node.js','There is lots of information about node.js, but given the rapid pace at which it is developing, it can be difficult for beginners to find good, current information on how to get started. This guide aims to provide exactly that, whilst staying updated with the latest stable version of node.js. This guide has been updated to reflect the latest changes in node 0.4.x, the currently stable branch of node.js.', 'http://jsbooks.revolunet.com/img/cover_felix_nodejs_guide.png', 'http://nodeguide.com/' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'Felix Geisendörfer') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='Felix''s Node.js' WHERE authors.name='Felix Geisendörfer' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'Node.js') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='Felix''s Node.js' WHERE categories.name='Node.js' ON CONFLICT DO NOTHING;

-------------------------------------------------

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'The Little Book on CoffeeScript','CoffeeScript is a little language that compiles down to JavaScript. The syntax is inspired by Ruby and Python, and implements many features from those two languages. This book is designed to help you learn CoffeeScript, understand best practices and start building awesome client side applications. The book is little, only five chapters, but that''s rather apt as CoffeeScript is a little language too.', 'http://arcturo.github.io/library/coffeescript/site/covers.gif', 'http://arcturo.github.io/library/coffeescript/01_introduction.html' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'Alex MacCaw') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='The Little Book on CoffeeScript' WHERE authors.name='Alex MacCaw' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'CoffeeScript') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='The Little Book on CoffeeScript' WHERE categories.name='CoffeeScript' ON CONFLICT DO NOTHING;

-------------------------------------------------

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'Dive into HTML5','You may well ask: “How can I start using HTML5 if older browsers don’t support it?” But the question itself is misleading. HTML5 is not one big thing; it is a collection of individual features. So you can’t detect “HTML5 support,” because that doesn’t make any sense. But you can detect support for individual features, like canvas, video, or geolocation.

You may think of HTML as tags and angle brackets. That’s an important part of it, but it’s not the whole story. The HTML5 specification also defines how those angle brackets interact with JavaScript, through the Document Object Model (DOM). HTML5 doesn’t just define a <video> tag; there is also a corresponding DOM API for video objects in the DOM. You can use this API to detect support for different video formats, play a video, pause, mute audio, track how much of the video has been downloaded, and everything else you need to build a rich user experience around the <video> tag itself.', 'http://jsbooks.revolunet.com/img/cover_diveintohtml5.png', 'http://diveintohtml5.info/index.html' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'Mark Pilgrim') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='Dive into HTML5' WHERE authors.name='Mark Pilgrim' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'HTML5') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='Dive into HTML5' WHERE categories.name='HTML5' ON CONFLICT DO NOTHING;

-------------------------------------------------

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'HTML Canvas Deep Dive','HTML Canvas is an amazing drawing technology built into all modern web browsers. With Canvas you can draw shapes, manipulate photos, build games, and animate virtually anything; all with proper web standards. You can even create mobile apps with it.

HTML Canvas Deep Dive is a hands on introduction to Canvas. Code along with the book and play with interactive examples. When you finish reading this short tome you will have the skills to make charts, effects, diagrams, and games that integrate into your existing web content.', 'http://jsbooks.revolunet.com/img/cover_htmlcanvas.png', 'http://joshondesign.com/p/books/canvasdeepdive/toc.html' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'Josh Marinacci') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='HTML Canvas Deep Dive' WHERE authors.name='Josh Marinacci' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'HTML5') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='HTML Canvas Deep Dive' WHERE categories.name='HTML5' ON CONFLICT DO NOTHING;

-------------------------------------------------

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'Javascript Language Reference', 'This Ecma Standard de伀氂ines the ECMAScript 2016 Language. It is the seventh edition of the ECMAScript Language
Speci伀氂ication. Since publication of the 伀氂irst edition in 1997, ECMAScript has grown to be one of the world''s most widely used
general purpose programming languages. It is best known as the language embedded in web browsers but has also been
widely adopted for server and embedded applications.
ECMAScript is based on several originating technologies, the most well‑known being JavaScript (Netscape) and JScript
(Microsoft). The language was invented by Brendan Eich at Netscape and 伀氂irst appeared in that company''s Navigator 2.0
browser. It has appeared in all subsequent browsers from Netscape and in all browsers from Microsoft starting with Internet
Explorer 3.0.', 'http://jsbooks.revolunet.com/img/ecma-262.jpg', 'http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-262.pdf' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'ECMA International') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='Javascript Language Reference' WHERE authors.name='ECMA International' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'Javascript') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='Javascript Language Reference' WHERE categories.name='Javascript' ON CONFLICT DO NOTHING;

-------------------------------------------------

INSERT INTO "resources" (id,title, description, image_link, url) VALUES (DEFAULT, 'JQuery Fundamentals', 'jQuery Fundamentals is designed to get you comfortable working through common problems you''ll be called upon to solve using jQuery. To get the most out of this site, you''ll want to read the content and try the various interactive examples. Each chapter will cover a concept and give you a chance to try example code related to the concept.', 'http://jsbooks.revolunet.com/img/cover_jqueryfund.png', 'http://jqfundamentals.com/' ) ON CONFLICT DO NOTHING;
INSERT INTO "authors" (id,name) VALUES (DEFAULT, 'Rebecca Murphey') ON CONFLICT DO NOTHING;
INSERT INTO resource_authors (author_id, resource_id) SELECT authors.id, resources.id FROM authors JOIN resources ON resources.title ='JQuery Fundamentals' WHERE authors.name='Rebecca Murphey' ON CONFLICT DO NOTHING;
INSERT INTO "categories" (id,name) VALUES (DEFAULT, 'JQuery') ON CONFLICT DO NOTHING;
INSERT INTO "resource_categories" (category_id,   resource_id) SELECT categories.id, resources.id FROM categories JOIN resources ON resources.title ='JQuery Fundamentals' WHERE categories.name='JQuery' ON CONFLICT DO NOTHING;
