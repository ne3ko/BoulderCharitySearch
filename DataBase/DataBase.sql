create table if not exists charity(
	charity_id serial, 
	charity_name varchar(60) not null, 
	charity_link varchar(200) not null, 
	address varchar(70),
	phone_number varchar(12),
	email varchar(100),
	catagory_name varchar(30) not null, 
	charity_description varchar(2000) not null, 
	charity_tag varchar(800) not null, 
	logo_url varchar(200) not null,
	primary key (charity_id)
);

create table if not exists finance(
	charity_id serial, 
	assets varchar (20), 
	income varchar (20),
	irs_link varchar (200), 
	primary key (charity_id)
);

insert into Charity(
	charity_name,
	charity_link, 
	address,
	phone_number,
	email,
	catagory_name, 
	charity_description, 
	charity_tag, 
	logo_url,
) 
values
	('The Humane Society of Boulder Valley Inc',
		'https://www.boulderhumane.org/'
		'2323 55th Street, Boulder, CO 80301',
		'303-442-4030',
		NULL,
		'Animals & Environment',
		'It is the mission of the Humane Society of Boulder Valley to protect and enhance the lives of companion animals by promoting healthy relationships between pets and people. We were founded more than a century ago in 1902, yet this mission holds true today as we counter animal neglect and cruelty and partner with other animal welfare organizations, sharing our mutual mission of saving more animals\' lives.
		
		The Humane Society of Boulder Valley provides shelter and care to more than 7,000 animals each year, with 95 percent of these animals being successfully adopted or reunited with their guardians. Our success rates are supported by our Behavior Modification program; helping shelter dogs and cats overcome behavior problems, our Shelter Medicine program; providing quality and compassionate medical services to shelter animals, and our Safety Net program; ensuring healthy relationships are supported in times of need and crisis.

		Our Adoption program allow us the ability to open our doors to thousands of animals due to overcrowding or lack of resources in other shelters throughout our region. The Transfer program also enables us to offer a greater variety of animals to our adoption clients. Every year we partner with over 50 other animal welfare agencies to provide more care and services for homeless pets.',
		'It is the mission of the Humane Society of Boulder Valley to protect and enhance the lives of companion animals by promoting healthy relationships between pets and people.',
		'https://www.boulderhumane.org/sites/default/files/logo.png'),
	( 'Boulder Opera',
		'http://www.boulderoperacompany.com/',
		'2015 Grape Avenue, Boulder, CO 80304',
		'303-731-2036',
		'info@boulderoperacompany.com',
		'Art & Culture',
		'The Boulder Opera is committed to making opera accessible, inspiring and engaging to the community. Our goal is to develop new audiences for this old art form, enrich the lives of our community, and provide opportunity to local musicians. Our Children’s productions explore repertoire in reduced versions with a narrator and an ensemble orchestra. And our full-length productions, which include standard, contemporary, and rarely performed works, are experimental in nature, seeking to reach and entertain new audiences and delight the old. Our outreach program is designed to inspire and educate the young generation about opera and to make connections to other disciplines through our study guides and free workshops.',
		'The Boulder Opera is committed to making opera accessible, inspiring and engaging to the community.',
		'http://static1.squarespace.com/static/532f3115e4b00d0eac2bb162/t/532f32a4e4b07b2b8d0f259c/1542158701808/?format=1500w'),
	( 'Attention Homes',
		'https://www.attentionhomes.org/',
		'1443 Spruce Street, Boulder, CO 80302',
		'303-447-1206',
		'contactAH@attentionhomes.org',
		'Human Services',
		'Attention Homes provides life-changing resources to youth in crisis. We offer shelter, community-based living, and teaching of life-skills necessary for an independent future. The goal of our program is to reduce youth homelessness with a continuum of service that moves youth from the streets or in the shelter towards stable, long-term housing and/or family reunification. Our program has the only overnight emergency shelter for youth experiencing homelessness or at-risk of homelessness in Boulder County.',
		'Attention Homes provides life-changing resources to youth in crisis.',
		'https://www.attentionhomes.org/wp-content/uploads/2018/01/horizontal_RGB-1.jpg')
	();