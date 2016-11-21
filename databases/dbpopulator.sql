

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
