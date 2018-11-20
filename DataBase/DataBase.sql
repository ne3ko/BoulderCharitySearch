create table if not exists charity(
	charity_id serial, 
	charity_name varchar(60) not null, 
	charity_link varchar(200) not null, 
	address varchar(70) not null,
	city varchar(20) not null,
	state varchar(2) not null,
	zipcode varchar(5) not null,
	phone_number varchar(12),
	email varchar(100),
	catagory_name varchar(30) not null, 
	charity_description varchar(2000) not null, 
	charity_tag varchar(800) not null, 
	logo varchar(15000) not null,
	founded varchar(4) not null,
	primary key (charity_id)
);

create table if not exists financial(
	charity_id serial, 
	assets varchar(20), 
	income varchar(20),
	expenses varchar(20),
	irs_form varchar(200), 
	primary key (charity_id)
);

insert into charity(
	charity_name,
	charity_link, 
	address,
	city,
	state,
	zipcode,
	phone_number
	email,
	catagory_name, 
	charity_description, 
	charity_tag, 
	logo,
	founded
) 
values
	-- The Humane Society of Boulder Valley Inc
	( 'The Humane Society of Boulder Valley Inc', -- Charity Name
		'https://www.boulderhumane.org/', -- Charity Link
		'2323 55th Street', -- Address
		'Boulder', -- City
		'CO', -- State
		'80301', -- Zipcode
		'303-442-4030', -- Phone Number
		NULL, -- Email
		'Animals & Environment', -- Category Name
		'It is the mission of the Humane Society of Boulder Valley to protect and enhance the lives of companion animals by promoting healthy relationships between pets and people. We were founded more than a century ago in 1902, yet this mission holds true today as we counter animal neglect and cruelty and partner with other animal welfare organizations, sharing our mutual mission of saving more animals\' lives.\n\nThe Humane Society of Boulder Valley provides shelter and care to more than 7,000 animals each year, with 95 percent of these animals being successfully adopted or reunited with their guardians. Our success rates are supported by our Behavior Modification program; helping shelter dogs and cats overcome behavior problems, our Shelter Medicine program; providing quality and compassionate medical services to shelter animals, and our Safety Net program; ensuring healthy relationships are supported in times of need and crisis.\n\nOur Adoption program allow us the ability to open our doors to thousands of animals due to overcrowding or lack of resources in other shelters throughout our region. The Transfer program also enables us to offer a greater variety of animals to our adoption clients. Every year we partner with over 50 other animal welfare agencies to provide more care and services for homeless pets.',   'It is the mission of the Humane Society of Boulder Valley to protect and enhance the lives of companion animals by promoting healthy relationships between pets and people.', -- Charity Description
		'It is the mission of the Humane Society of Boulder Valley to protect and enhance the lives of companion animals by promoting healthy relationships between pets and people.', -- Charity Tag
		'https://www.boulderhumane.org/sites/default/files/logo.png', -- Logo
		'1933' -- Founded
		),
	-- Boulder Opera
	( 'Boulder Opera', -- Charity Name
		'http://www.boulderoperacompany.com/', -- Charity Link
		'2015 Grape Avenue', -- Address
		'Boulder', -- City
		'CO', -- State
		'80304', -- Zipcode
		'303-731-2036', -- Phone Number
		'info@boulderoperacompany.com', -- Email
		'Art & Culture', -- Category Name
		'The Boulder Opera is committed to making opera accessible, inspiring and engaging to the community. Our goal is to develop new audiences for this old art form, enrich the lives of our community, and provide opportunity to local musicians. Our Children’s productions explore repertoire in reduced versions with a narrator and an ensemble orchestra. And our full-length productions, which include standard, contemporary, and rarely performed works, are experimental in nature, seeking to reach and entertain new audiences and delight the old. Our outreach program is designed to inspire and educate the young generation about opera and to make connections to other disciplines through our study guides and free workshops.', -- Charity Description
		'The Boulder Opera is committed to making opera accessible, inspiring and engaging to the community.', -- Charity Tag
		'http://static1.squarespace.com/static/532f3115e4b00d0eac2bb162/t/532f32a4e4b07b2b8d0f259c/1542158701808/?format=1500w', -- Logo
		'2015' -- Founded
		),
	-- Attention Homes
	( 'Attention Homes', -- Charity Name
		'https://www.attentionhomes.org/', -- Charity Link
		'1443 Spruce Street', -- Address
		'Boulder', -- City
		'CO', -- State
		'80302', -- Zipcode
		'303-447-1206', -- Phone Number
		'contactAH@attentionhomes.org', -- Email
		'Human Services', -- Category Name
		'Attention Homes provides life-changing resources to youth in crisis. We offer shelter, community-based living, and teaching of life-skills necessary for an independent future. The goal of our program is to reduce youth homelessness with a continuum of service that moves youth from the streets or in the shelter towards stable, long-term housing and/or family reunification. Our program has the only overnight emergency shelter for youth experiencing homelessness or at-risk of homelessness in Boulder County.', -- Charity Description
		'Attention Homes provides life-changing resources to youth in crisis.', -- Charity Tag
		'https://www.attentionhomes.org/wp-content/uploads/2018/01/horizontal_RGB-1.jpg', -- Logo
		'1967' -- Founded
		),
	-- Montessori Education Center Of The Rockies Inc
	( 'Montessori Education Center Of The Rockies Inc', -- Charity Name
		'http://www.mecr.edu/wp/', -- Charity Link
		'4745 Walnut Street Suite B', -- Address
		'Boulder', -- City
		'CO', -- State
		'80301', -- Zipcode
		'303-494-3002', -- Phone Number
		'info@mecr.edu', -- Email
		'Education', -- Category Name
		'MECR is a nationally recognized, high-quality Montessori teacher training program. Students come to MECR from Colorado, but also from all over the US and international locations. Our students bring a broad diversity of work and personal experiences with them, creating an interesting and stimulating dynamic.\n\nMECR’s goal is to prepare adults who wish to help children develop their unique potential as human beings. We accomplish this by providing a learning experience that integrates Montessori philosophy, methodology and current concepts of human development. We are committed to supporting the individual growth and interests of adult students, including those who may be encountering Montessori for the first time. Additionally, MECR instructors are helping to build the future of Montessori education through their publications, conference presentations, and development of new materials, and are passionate about sharing their knowledge with students. If this committed, focused passion for children and for education sounds exciting to you, MECR may be the place to start your career as a Montessori educator!', -- Charity Description
		'Montessori Education Center of the Rockies prepares adults for careers in Education by offering courses leading to American Montessori Society Certification, as well as opportunities for Professional Development.', -- Charity Tag
		'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQYAAADBCAMAAAAace62AAAAh1BMVEX///8AAACGhoa0tLSQkJC7u7u4uLiioqJsbGyurq5lZWVzc3OxsbGZmZnFxcVhYWHg4OBOTk56enqJiYloaGhaWlr5+flvb2/z8/N/f3+pqamXl5fBwcHq6upUVFRISEg6OjrX19fMzMwwMDDj4+NDQ0MhISE3NzcvLy8TExMoKCgaGhoNDQ0hnVqpAAAgAElEQVR4nO1dCZerqBIOiKLiihoFdxI1Mfn/v++BmrXTfdPp5c68M3VmbmdRI0VR9dVCuVr9R//Rf/Qf/Uf/0X/0H/1H/9H/AWU1kESDv30fP0KZZZWPv2mz2wP3kgmd/H/9C3f167QFwDi9brWFIwEYdDng+uq4rAfHdrUqATB/+Q5/h3C0vNDldB/riRGSN6BKAICXwzwAhPrL/8/EIdvOf7eL8Jty3cdy9Mtra7W6YUMH/Onvumz/n9iA+2WM5iz7LQDFaoUAUNxhYCP/rQE9Hy4AsK9PL2kYurfK419JGIB2Uvpy5OqPDUL1BwC8UouiWSkBIOfDCwC8q7NbZTTA4R3l+i8iOb0gVi+k0pOqb7WbZxsAtFIqspH/JldskIdHV2d3oAraEKTTm3+xUKyPYB7+KgPAWSnp6NVyAMBdKTaMUgFYV2xYjbO0GFVXTsJA2qxYtGWViPW/VV+0cjHM00gnFSCnu85WcB5ZAICujMKVbZQWgumGtpt0KJrWxPF88AGA/C+M4Qvk9Cdltwds+svAUf2B09BmCSkpk3Me8Gt14Mzfd+p1J/9sLTy/sQFI5Mmbf5NAJNNYlBpUSnISBzmbk6oziFwR7funli4B/vx9C3p56nQVhTGkzdGWi8ivwn++rnDAppCGcFrm5ST5Uk2A8NN+QjiLhnrpTzZ2YUOh7Me33vGPUCzXMD6JvpRmoBjwijTzUa4tdZV1N62tYVan1knU/tmko8wFpJ/FQa4G/4HlF54kvd+cqHfVJ/dHrbNZ9q0JZK8B4NPb8MTjfyQJIRbB30h5aCd7KJdFeX8U7LoOPKRGfuMLT9yPEYHd9G8/XVF6Hgj99GBepbWrBjJJLVdmgspR3XnRLa+q+nrYtu/HC/k3/Kiidnt9aqsE5bCAq2qWs38myblKFjDMwYgocDvnwoZSMHtYxjhUftIqulGa0ydtkYTVYQYMic+9az5mx3kl5KcVEXDs/dMMaKZubhlYoIbhX323ZceFBXsTij/Zum0r2mThmIkuvMomHmf7BV6z6YB/WJzKnS3bCsuZWuN+KM7fcDIPqW9s7VbUP6B1a+36+TwibqacL8KgfPZi/KdZTm+26T4obj/PFymwXlDtW2tBncy5fOjM/pchVc9awaqv3PR3UomUlEtrpsIH8Y2rLKpZDvjrzjKflwezzp9kqQroTZ/mq1vX/C/SdsEyhnKfve4iDR5vJv/A/aoas+ZVRW50CgDGetKl/5RwRDT7zWqxXu4qm/3D7/IJ8Wxfrz6Z4lj6ZtbEQ/53XQxlsKTbMMMaqSXTRQV643cyQZE2qYm4OImW9C+sQqyc5Yf/KqhEUxQhOM7O8GqBvqtyWg3M+F6jPgvYQTv/Nlii+wq39bvuW3/sOVpQM58nvF2WxUwZVDkX/wfmJ5ugQrJcWZgmVHwv1a/5QPvw1B8hcdIByeQ+lkdw0YyRXA/H/Fl88EkqJ0agG7XYT9Yi+At4UoKEaroVZSYzZSyGZYq4cprYD2rvLZL2oTEuH1BwD1V+j3Q5/Gmscj10rOmXuWiVg8R+WF2VymxUJxCd/dXYg3QU7UnwJ5Q4hwHaVL7c/QKcCdQPsUUft/7HB/8gTSt0STfp+8088smhgr9jwFUc7q9HoCSsz7cRuM4wzAZs/LVVWppXAvF3qJzT9OlVtn7VbgAI3ffP+X5SEcmj/vbz7Ld4sziTyl6fflIDd7LxC1ROGO3uM4U1+x9mxCkYNMdUpI6eqxHmxMRf8PTy+zFvZ0dm/FE+nPNsWEWbMxMsCScVKqr+yjIN9rcupoQUbiZBd/ODv6nPiWhF0lzudmA/vynufL/fJOVnHM8xmWIG9eVP1sq0h6uCDLUKev302zfp+F8mDi6zg+fpCOb0+c/QcVII7hILbq1FUSgk89fArCJVQ7GYKGNatdvxB6WhmbKn6F4VSrEI/3ICSfr5izxID8ddB/0cDvwRcqc5j+6hm3Skur+eWy7707JcLMVB3ZIotxB+d/hegRV9Cbe1+xNqkVyo/gEJE1VUOvNBYYndXHg5c+S7HX59uqrKmq3PSGkDXkqjfX8sIrsznIpGFQ2+0urfRMHC3Gx3KmwdXuOC8wPB5Oxwx4fsPoT7bRTMTh076WFlI164TAHMbxfV1Ry7vmgpda8a/JngfWBLVUBOtkL+bvLCRdYHIjnxA8bFPQXIV9MK7o3XSkueoSkaPKMEeJOsfZ7iYaViVj/AB3Y2lFKVH380i8PAIE6/+YpHudZnb6ztvr+2L0tODqf744lua14R8Yul/sUJfWX7H5CH7lSHrv+OFbdexAtbcI6TZOP3T1h5vPgXv0DBqxnU9GohOeAH+PBTlbTw0XCrF4Ms+g3znB+wm9Ld7X9AOZJH5sC8DkJ+grZ3p2k/YNfRUml8IdGs8FexZACKfH8X92xv90c9T3Yz/WFnvKH/AB+6e0mdagK+vv42V1lkReXuGq59grT5NCu5II7i+/kgYfU1ZshUWOa+MvEV2qpak/7CThOAB2HxP5Mx55xboCF0rvwuvl8/SGHdnd94zYPw9YtUquLcarlf/CJ6XB/nNZsMK7uIhv60F+0Bnnxegh9uTEPnaNTEhNS73tT2FVoX3ckgK8/tJWxizuP1pN9XU77vTgtLfyMP+dMruV2Sp3dUL4mDVjFBXiv7MpjKlrlaoyXIJFfIS/UU7WIlBssTGLVRkJy0t3bHh/ZYPem4lkCrHq1Pb9nhKNXlxTQVX9ngSsBtQi561UokzfSHAi802QBpatmn+8K3sx+GK/u5ZWf6kruPvkiXWKFzSidNlYlfQO/aLTgNpBp+ScLQYTqtBXs90j3YWlogfLpcyrqWBzbIT5+SuEL51fr44JtsiYRk+izCmZw9sBcPjnyOeHIb8e8+zqa/y6F2mZYj1nXBEIjYhsEWnSboig9iVJcpn1kWM56xH90Qmjb8nkgx4YBfVxDlXT6QfcwF/J5uy5alZQDnQOMQUS7cFXWxOJ1w9i9KyRAsuWP8eVmQZh4YeDDL2SUYu52rbB/q0icpmzY5nCuZvI+TpNZV+OfupmYuSP8SbVlWWNy1KjYyw/VON2vN018m1gTPytUf807BuRD1EZjTl3DIetq8wJ0INH+43oc0B/7J/Iv9h8JQgqp87Oa6x/lGAakGVZ2xkYqXRhnbWtKyz5debybDobYIVL1kfin+ED4qL4NPH0RepRwrHaP+Tqsm2z0Smk/Qlp7ibgX4MNwdViqI8IBPYmEeB5Qhy9Wi3EuCApE9Gf0i3i/D3UuoB3tVE99jD+wzuHt7pSuqrn4oeTBCtmBHbV5tLfgiGyTp0wWz8cMgA542NpTdGz6sFyxbAtPLCc5dyOAOJbUBHewKqC96cr2HU+Q+Bl6NWLQPzI8MvdtcvSkf2fCbkIjRfwMbZtI+TFyfgqzZtYqeaLcsidCObH9DQjtsiI0souWRT4shH5YbXPdKHwRHn/bUdKU79EGws7wdlPcgRI4urkQbgo8F+WMS9XV+MgT794Vhfbb02zulzBcj4AInarQUQ8vDra+TnZckZs1ZXkTLLWYqbpQ2kfxet634g0z5+l7xGw8k5yQOWG1yq1+vxVFlRCM6MaL9MLyFhvPL7c3dt4uVWINuqzMRWgTS3kQ2SzVLbOPWiwpfG86jCICHPTs3gZW77xcSwf7+E/8tqMZLfDYHIPzCgpBStZHq4CQC1UeaIThcWUpxjX2qJb0HaWXboNiZkas3ZWtsN6HtE5DSAbuecw5zp4AQk0J9aFurSN4BwO0D585/M9J1PQce1tVXtEJ5AHhdopNbXX6Uo8puDSm9ZDaLZREHgLhFaZS67pl6Hfm7ZISYF/u2dARxYXSIl8O6zHZy0u7NxmeHx7+ZPTTbzRvoJm7axrxYKDj32lApsQnhkI+isHlz+35/gg/lolWzPdrqTX+0hwPpUG4JaLgIh7AHMUChTyN9locU7I2hkzjTNwojMCTqeYAm84em9K2alKbtos1U4vGV0qSFDavdxIbyTaTz+tDhjtFnFUaW9YHBviORZxRc33IHmlLI6gOrXJeXSVnoho3ZxAcgYbZWbr3AOqLB3dO4e2N4JBJ6PK3OG47hszhslz2/H4748dhmVpZzHA9/UFX1QEjLOU5nLNqyBJbhFY4TM6vugBl2EXK9NKg4i01w3IG4gQRKBGmBwESj9N/Gg6t7q/W6DNo3UZnmvVpcev9FtjklNVXaf3SaZR/rZ0ihpcrR/Vlauw8UJHlw8VL549nJ8kcRZxWW4h/x3CuQ2AhKCdjvar/OCbRoi/LIRL2KGjUxyY1QaBE2YdgjgI93+hC/Hw8+3quHcFnJ0sOImk45XM+N/Zq8/SxI6lcljn6XkY/vy2qUrTm1HWhoTQRsMecMkTAH5ACIaTFXrwqWogb1Y7LB+Q70ItddxInJjmGCMSxQ2zY3pSTBRzHc+1G2S467kHOJpbJ+qR7DUSHpeWNT9X6kP+vPRu3mEN4Zy2JZA+FoLW4JIaO278LYbTwNeh2xEwbivu8S3jm8wjaHlDa12aOGuahNHSe3KBP76hob1R/lKEV3Z0n9GUPrUiyzfQhf3MJbljPrz8G9t7Q+nBUDvoX26Um7dQh1IGk2hrYtXEEKuQpACHa+iYZWkwbUQchIbdAcGpdiqUMdIbxyo4V9OnQhMhC+Qs5/yD9Zd/gbnbfEiak452s7MMz3HZPozB8M3OEa7ayX6LkGqOZpnoM1XzMrVlc+40DYkedbtm/vwiFuQmwLnbaJjpk9mnWDOhwJT89aodsOTpqzXhJ/ShTd3Wew2AoJxMr8ldrZ8moJlkfwKOKnqD3fYQQArx5VhIEGUq+q4oT6DjIKyqFoBw1VZLBJrh1a0mqaKNjQpYPp21biWSzQNM3GMZM6wudaJQ6nSR5vR9ma2ztNod1KbXkykgnQs+rzmSEI6tU2Jkth8PvSdFzuqwyP3vYo+rcyG+4Tn+hR4GGR5NR3u2aoq4pi27MxIsJ302E4SgzNzVZQQbhNu1FOHiUFF3oRGDA4oHCBbu4tm1vQjSAubgSE32aoyCLH6zd9Up4hAwBzuz/VEiXvIkg8nm5oFwFEPLG754MHoG4YfEcQIEMVUx27BvUsqMkRjOPGbiCOW7QtLDRG3RDV1IRFJTWyY+SUwjHejzUweThp6OBOT++kkEt/BKTXjOi825//ShRS+hNzDyt1jXIE70SCgsWmIxCJNtlaUDfv84VgHx84qI5Mo4HDDe52PgT7+kgrmuAiDCyqH2AVgiMiDkaZCLyCy4W8MZsUYc8NcCu4rtfTHYy3I9KXlmA6BOQirevmWvYlVBhWL9O+Vo4J9uba4HcraQ7TmMuqD6BiWlhBWA43RgkBz0CZWxZFgOIYdKCzIfJ5QTPTrRIqHdijDWBueUmJULGD3TD2lvy5DMBSaJqD6S4F4dBj6WTx482PlxdA50mLYJ7avAQ3QI98obOBARIJIqvVzAbzvYRPNK0Z6SV3VUWQnUeRR12XjRfjnQGOcMLqsQd70OpR6Qkt1TdEulDHIYm5L7C+ohonUDUwifeuW2QeaVaTS7cBR0CYr7XW2irJsb8bz3Cj91tLSsycqtOv/Urjxfz7RApASme9U+PPdu+UBBtq3jMCkpJrGvFQKie3qyP7cAnTh3L0B8BCZyvFG7s0bXZThzNyMFgkiEeJCcJRIn7WGBS10OJR1M84MdkVtNRdwSJW2YB0/tx48kzRm5vKeA9CxYnkSnjXX0nrK/yoZ7NXKVdH8+iYEkw9gNHKpWaTgPEIUswtyyMrNi7LswDMQIIYOW9ZRA7NIUqwGxtupIUoOvqgP9is1hEPKqdnaJd0fdx5S0hO7fum9oAAy0MuAp3emsLs8EhCpZoAVbG99kGHrzTBEaRVMW6lmflj7LTuNOUt6LvdLsJpwR1hFtSXuh+MCZ1BrXStogj4zXCQVoAhLIjjugYzq6Y7DnGOucapE0oninb0QFzqRVorNebyAwYIrVxvHVFWHmP9nd+0e8eErwWV8ne88AF+dasNnrM0A9g/wh2auQrGnRtwQQvdtYhc71RiYSIsrQiIqU6JwMbMQ6/Vt6L1nby362Hoch/mxCNSTEjjh019SGBdUD2HhY8IgZtL2SgJsUGiOoFHPS7uloT7HrhfqdCuDy7Oxd0stkK0xgu13uvNw0iY1MeedFigvbObqqmwiXkVUCOM/SQMgVQurbQwsCVl4mCIqqgz9SM2dakPHKqP8RDWiRUKTD2JmUIc2mZIazO3s+EKeFSJlwgkWq/0wlsYm/1hhrfmWU2W56jTNnCrOaH5gg31HhdHJz7rOfMZJlwrpMvg5nrFmypJTYJwtfUSYACf+QOx7Zy1UMAi2PHIp53fDfYugolHdBu6+6oGZBNWckEJA+pNfh3jEoDrhmtGOTz2t/gt/CMmGs9CtQQ0t9USOFD7b55bJgqpl8vy4g836thSfbZR2zLMKn+TDmkt3WhUWBqxatPcNS7bSEDsOkg40qXObRIekopy5pmFE3vSHoRwYyaEbHSJPW1NJ1rXND3pbuGqXNcmNg1s3Bk9+Getd1GhdFYOyzasoyeMJ7cK+tItO9e77R/ViEurLkqWAxQSzAxb59jFltHBw7FrSJMTxKPSwnnfjLsaSAUImeYLXSsobvZ9X28SQn0pR5ET2WTTdKCWSsThtL0H7XVTCB0lILmZvj/6mTcH4RlArW3sCT7l3NOn2GABkE3dhRQ/jUdbdVrgJ9Ak2F5HSDMwIfkuAUeaOEVhUS+3uC/xsR9GaY7sIPVwoTNeS5VhNwRVmOXiGGgo3NG+CsMoiozKjSy3goc3WkiXDgOq6luIUB6ekulqWcvuFY4sp5Il8yk27IG17kF3nMRBfyRBB7DVRVF4vi8RNDBDBLmDeRtiMxn6Bvg2QBRpfG0wdJzw4X5vN/UWtoUubN6MeyA/RImFqE4CJ+e2uwHmPm/eKr7qEBTsdvLXx+ecxfVy4/gKR7ZTTPE5NsjpR3Jeyulg9iD8Jl2/nIEKNNS1oNT9vBAoyoFUdmHtmobDMuoRiFRvxAbAGHK85XkL47klFqAgspFnCYRYlU/do22EcDA6D5xBCQKHu0rr5Nl0QzZLQXGVoFhPdXzNc2wIpzZvc3R9/7bARQAb0GTTGius48pkxwRgUFGgtXBLWmyhBI1+c7SQptniIN0jFFLQDGCwGeeW1IZHYfgRIE2IiIFQ20vlguUh7FEmxLg3VPj5HbfeXK52zmavjZOpeIoNqjh43XaTLD0ISTf2CgYI5R0DhwpAVhiOYWhbICaTNEgUVBhGW4g4gqHdH8CedRj6Bd16UVSnxw6Aw36/TzQv1isP+6hLh3q/0enjqG9y61Gth084jLC+YkMJ1O1NLs1TSX61BZ9v5x76D1BDHgJaNyTJG7FlDkWGy7o4aaRs87gtyoApVF0xYPeDe8DS9Y48hL1a+ssSdieOS1oXa6Ho/HRj7xMSGqZ831bsnV1Ld43nm0/lZZlaZs2cZJgsprsqpdp67mQVkG7nuzLeSEMLrEpw3fFE6sIGdVUU47DAnqazJIUUktpsOB1E6mDipMQP883Q1fXYUSSoFrGkY2FF9sR2jCLQCmfAduJv6GBdxSnE4T3n2PoARD+gTEVhu5kNUtfdNzn+M61ndazdxxoy0IjKSsCwSbpQ81vdkt5QHCWJ33VhgiOqUWEVoudJDTZ+4vuNsCGyPK1oGhoSCbU3bgi55RV+OJKuSgGEic48mFwqQhHwdo+twfqzGyMC6VCcstFf2FMR32NIOCSpbeLeoIbDrS6uwyhklc1TS8JpimNa19WmsYFtV5HvOC4/4q6rewLsuNkyzSi8VHfjpBvCEEvNAFuuWaiQkPqS5PCkNjceJ46HT5cq5OOav7qr5GIb6rsYVgF0rmPsNW4Xytn0IYZCExbWKY0OfuP7qUYwjktuabg5hLsw3qV2nNaYmKjGVIp/cjDNDiLbqSTX3CTapXHPiHUROk/ZzfX+kdeAX9gSTjvvte142AThms+suGNDeazdMR2O9sAkYK50hK3KTapqc9g3FRBRq+NA47lpbZKqpkNkV3rPMPRMy7Z9EEGIExy7xc5lEO3pZkM6HEmA6dHuPOrtnAxoj28B831k+jlS2nsxDTr0E/pktceEo9f1sDRBuIYNWQcGVmG3dmyu6wVSILKnNooIrvyiMnAe1dGexD2WIiEhtAaplMj+OPR1ZaOdjgoNu/aGAj8EyEc8L+ySIRyll7KU4JQSgW+t2ms1fdnZQs5tisenYpMSPfN9J8UAzWy4tpcRKJHH5BrglSoaBRGJcmbh0HCx6+KdGXLMcc63h7LVLCwBqAmgTTHaEssxo6Vt9BiyERmo5RauJayie8mQ/YnXV7USbxxb/mLLdWcZhAJPqrDsqe5YVK7SI1VVSKvJUFyxATaYSHgkhSzpIulScovnuFIp0kNFasuhBSm5h9wIhLQHO8cRElUWOc7ZfkhAk0IrcaDlMSvHuCaSIZINUMJs/6wYyis8Xdwti+zljtLLIJbNlM1TCV0CVCR1qfnB10rWAwkgkaZZImLb2EXUDvcNy4mhaQYp/FaYiSqdowBBzeFbT0O1quICadggW9dsvWthSkMIukrCcZzppZfluRua560rxXjtPow3RnPdvVzQNrPh9MCQ9oPypWs2QAREW08LMb2ylxnotixzDdhIpeODMbFhjyFtfaka7Ab0PTN14RXtOihEpHeEdNGe08iQCoG0EbSlo723O54aTN9qBmJwF9cw2iPknoqW3FurJG6CRN2bIqhnaTuzYT23wM7cp0rBJsx5WPYjXIeeWENFnTSD9IGwVTgIE8HiCoz7xrR5VY19ERoMsjAaI7ehNuaFRM2cskQyZGiaA9QL3voeTf0OHVLQO3ZhaW3skNOSyO73+jZXRvOVMOqJlkWRgIMQonlyt9G0f3Np5oQubDAA9V0uvSjdddPYjiVsDH3kurrleKqOU7KvDxkxiEf1wpA4wdrRxpcgynYNU3O8tkppChsW1s3IqctzJ8pjM1JadP6B8o2f3V7EYfuVfbULG9rFvXyyenq7TaLlR4czG9Yg8VJe+/7O7yo/4VFqOZy5pJao2Z8ceAtgo5DQMLer+CDRpXSfeCFql9k4rMI6ASYKdVvgQpgOjf2RxURiD3LaNFY+0Fzw5EGs/Zc2hd+yYe4B3sM/HP2ALtLgm1Vc2wzxsICOwV1iu2NY22liIRPvp3QiPjZVRytETN105QKQXtYuGZM6Me04tvEOmkMzVlVtH0gYS3CHRSGx5FK50T7S39kpNll9zqO6o7O5y9q2fSWxi09syCUExGaEU7czKxBWlV9R6TMygTA/P7Vu57e1Z2se4VFljlWS0BCrBLYRWW5iH2p/Y3aU2k4jpGtFkrq2j0k/68ft4aEVc+cmhOi1TY8neqH/ynp5OgifFPOJDQbgAsK62QP/kJDa47hFWeGhrtnvwfGUIsr2oIEHFZ1LRphI/BAgy/XhIW66A/Ar7A0C6pbPY2If/ZBQqXKLOc5Yju+orSkhsf1iG8wX2LA9bSifxHDxUdcjlHjIDHEQt6iQIBIdJY4+hBS5Gg0vmrfc11j6jWbhFQLLc6Vutg8oyTHfwhLH8+O6etQzC7ZYd1SKexKCbPeeApy2VH0hNT/RmQ1lnufPxN/Cc2JnZkMzs8EGmb5iZVvAXirNGpjJQdpCB2LOkv7azHmV4L5EzdJ0DHuEW851LlyORx/U8SgFwcNBLqDFOWmAfXTtedfoB7guJV+ylRPd+hTwz+H95MKGCdnNbNgCzv1UbeXLNauMS6ph3krk1IUg4rdmLpcgMqGagUtv7VYRUKshHF3T0ITWCEyiJJJsBE0nrerKnUurs4/KkzLwcN/tZ8hbShyKZWR/5ipH0vtDimbMNuuGBEcwEa2xbkuu5TVUdoeGIbLbUtxbYVdiK99FebrZsV6BSMPIa1G5uUtAkuxxXBRtGW0Zdo9+FcWrj2VhpSTxq716xcwGiSKTQFWtPQOfyhucMrHBGjMoGI4it5KQAfUedNrYMCSITIF/n/TPjl3VjBbLuSZyA9XS5Ibj/rjrbBxtvXaLCbViQCSE8ot5F++fPJ0vP3BhYUO5lEiGT6HIG7uq8n9Gb9IqahIY4sQtTJ1qaRp1BOxhVVpvtVe589qksCBr2NCEB9oQjIXlODZjMQ0lru5ihIQw9NSeNBf7nlYbH5CYdUO59GJ5jg03pFqe9Q3GuNVQW1uuHJzJTDfkqWbhIojebvpQrEsBNauk9rDmUYskZhIRyTYLWgUSvs4RTxDxDWapxAv8+Z7EYtks5wNVHmAen2dDWc5PWpiex+RRL4Z0iP04ggZ2hN2SSg4zsSvwcIeH7ceO4C4nfhMfmnCDKXNMK0fGwGHkx6lt5qGGhBuK1Zp+1Qo8QWIBP+1B3e/4XI/LdYFRMh5mlvGpBUkFaWVUHLMWWRGFY0L83GYUvbPHojwMwO+riuAEk66AhY5xnceMSVWbt7ZUMy4qYKI8efIbD1WwT/HUrPZWpV89IwzrZjErk6aUuiEyvTx3PA9jq6JVSMMoYdKNJC0+vueqBWBPa8psoeNoRGC32ZFdZFIJGyy9lb53qh3yiEorgX6lbX33QoMm1e6NY8OY+afibY7G63QvDSAMXQ3rsWYZBo7q4YMmBjrQhaU1EmemwE1QHhXNVssdc9gDfdORKo9ce1yv0I9rx4m6F1o6pjdAQEV1G9Z3Gm4DukKlZ5NjctwjYBv8IxYzUO/tnnNtm5Servl5H4YAQ4zdQGOFMCwoXXP0S73KX+lsGdwWlaoy0VYkgeXx1G9AlHCLO9KHFn+I75Kal9ylCV8eABn5Dl0XBrYY7EyVVzZW0S+1NCwXELkFQIL4Z3ubhNK32ko7P2O3g3QherVrvJYWz9PXTos992jWhz+Bnh7Yu45VmiSnjNIix4lfAdzkkeUYJR0z8lvP9PCWMg/t7CZozmJ1iY0AAAfMSURBVJ+DONK7mivn2uVdZWnc0VlZCct1k6hjeG/g/Z8GIXUMF1sUuChCdGjM45EWrRMUQcBFhAD/vQeka0unqhKik/oHxz+dND3wGYAdo5OtlRaTILVJrCHhEFVS02veyj89DfgjCsAuQcfUHqmPImxgkboeiyxsjpua1cffe/zOVQmYpvBkLn2A+MMzFFmUZuWpKFLhp0PDwxT5usUF0hgnibur+ie2LbXj6PpeYcn/CJPG1m9IGmHuIY/86pMc6KlouiUq4K7Q/6cDcaqZNGwN7qhgGqxZZUaVnj7XNVNag8jKfTcMzZrUJjIkjtDjIsS/+zyLU8NA9RAqpeZeCXGrhz+ErKppkqYVTLFrCKw9OYp14puUEYJsjxYG9zqvq8yQhM/lS76LysVeSkPR6OUKgfF5WciyU7cDxQaE84IYrSFy6Unkfd08e5UGe16O+UAas0soZZy1sMXf1bfwOWqXbYPlMO9C6upn9xXMT2+ehQcCkArpUOUk6kkYRdTbPL8/IVOJ/0MywhAhLLiucbfOf7MF8mraH3qzDLJnRZEvVmVKIOgSMjT2kfkmznPDc7TwM1u4WoB1syTbQkjH/GhGoavzr8bUPkn0xW0las+eZTmbeQUbAHTeKkOZVVrz45w/5aYkQEtY18PRB3iLy6R9sQ/ty5Q9AxIeEZqD0uWyF3WUep2ZTQ1YDVwv+2TFSQncUCLYQM+kbg3T+qlA4HeStZil0sX4U1u043mkJzb0ANia9Cr1IgsD9mn1VoImKgy3gjaAndPWv/pYvDluML1Y8rjIenYa0TzUetmeLteWzQVFKEEVfMHUSSfMr9moa7Vg7McfR3dP2cm9LNn88EpAguGp7M9WbWmB/WlftvRM9hs8sHzQrOqVHa4UtIXDkRHSpPuBtvMfE7zqVpBlBWSj1YLmqVOjRX6Wt6Nq6aEVQey92I7V721iVtHI+fF3beVqcgZuP8hWpfmkPyOSJMHnEUtbsdFiiir/1SZ7HZPOSItx9+uPug7eb0PyWZLKJeQ0Ef7LGDirD8LXkvj3H30enXfWlML7fOH4DUnBgoWTv9A06UQBiGsk3F8F0RP5YKm4nMo4X0sDamwOn6vW+RpImi/s8dVAHvzk0xnfofa0vZyqWt3ny54uVCKVsJ1eBmob6/A1JU9A8tUqhRcoPG1M3gFtFojP2WtOJiFaUnMJ6NlXg2bD7/qVE5Wn3ni6XNDZpl99ymC3U8puxGfOqVLJr6YUvOS3IcMUfpsttA6adTu1fnr+JqZgZGVlQnfJLETZ8OUnCa4Pv88FlWxaTPwIyhRo2me6gE1PMjv0VzUvqqvFF30B/y88TFe7NHf00mzaBPqJ6kpvLn1KoGpFOwMuqXG/0BJDUl796LPXHlNz1blhXdph+LBd/btk6GIr7xrtwBAsNq7+0mMN7kpofom0u6Td+hV7ndGpi+x6nsX2a6DU/0oj/FfpHEdcbV8WRSERdLBySbPsEX2vye9TVLy4LeZLhAFYgq/Ry8BNdakI2KRVZk6+09PjKfqw0+WPETjtxN6opxRmLzy/JjgXR3botKi715+WXX5T9/dPkXN6uoylvCsKXmkGtjCBXZ35FXH4GwROviWR0zfN6+cBoIpXRXcuQPPig+7+DvETZlBtdNvpGcqfb+9T1m+rIeT1nmsm8o+gw3nSOlCp9VF+15PW8SuPmmwNXTcW/dLq8rXipFAv2oXOC69gSQJPEYGyVQdN9IpmQZfnTqndl3XWdl+uOT6R/3k1Mz3NemnMIKbX8XyhC83ITjRLx5N+VsTW1RH9pxmhovFn+66nSE3hV57udX/xz6qZmQ3htJjc6bWK5MTXbJicFXH1gamOxteHfDoGmtw/hCxNvjEYnHxaHNp5GMFy9hUb7ESRbydqCc+tqXyHT3KiohyKZ5WtqLuAl2dJMfUH1di6/6zRbC+zuQY3bLg5bAoMTQVKuloEqwmmnKBwCD6JYJUI/mhllfXZaN4CxFRhdHt5ad7N1nTU4naoaIcx+XInNmifZUP0LY8B/YDUUD4FjJWmO8wiQOYKO2MSqtvybSUCpw/WhVeUN9KAwdOFOtlakkq7f5dVeIfksOwIQvnfRGimaH4fqZfshk0qhKNNIqDGbs1cVMujQSKaTlXzvHurBS8KQYnKfWoggDekLjTdwEml/nhyzAF/opun6yg2lL0S6kz1j5jndX19+NKR6L4gSX0VYdd1p1jYvTdDPr6FB41AvpsEevzTxAdTynh3g8HVwdlGgQOJbq0P2HAfzbi59hvNYIGP6Iu7Nn+AlJiWKnYxdUE3LmxoCjeXZOVqDTVvh3ozrt8ptP9BahUb5D9DJs3e6koabjCd2tp4pxvUR3obrNZTIdYPa7wfJ6XfVLtqoFbHtBFyYcNNtW4KLp3izc1G7YiqwUlFKkPxr3LxH9AkDYtGM6/ZcCMNCvWdNGszv1Rs2J6/fD2J/M+gmQ3txAbnmg3JjWVQS2AGDgpxK5RxYUP7f8OGGUt612wAvTmTrVyrKTXSscxUo58qnC9sWP3fsGH2qlY3bDjTNETv8r6fwiW3bPiN/Xk/SQsblOPYrFaPcMOiJS58OO91O7FhB15tbfePocwxHOlErR1Dk8PbaoajoI3QDN040WIp1xMkik/hTm85VNLWMLR/HCD6f6T/AZpQ4Lsn0iKaAAAAAElFTkSuQmCC', -- Logo
		'1981' -- Founded
		),
	-- Women Work Together
	( 'Women Work Together', -- Charity Name
		'http://www.womenworktogether.org/', -- Charity Link
		'1060 35th Street', -- Address
		'Boulder', -- City
		'CO', -- State
		'80303', -- Zipcode
		NULL, -- Phone Number
		' info@womenworktogether.org', -- Email
		'Civic', -- Category Name
		'Women Work Together (WWT) partners with our Guatemalan sister organization to unlock the potential of girls in the rural communities of the Mayan highlands to stay in school, direct their own futures, and become leaders in their communities.\n\nOur Leadership Institute impacts over 1,000 girls throughout their middle school years with comprehensive, sequential programs that prepare them for financially viable lives and that change the community’s expectations for their daughters’ futures.\n\nWWT, a nonprofit organization based in Boulder CO, is staffed entirely by volunteers. We provide technical assistance and funding to support the work in Guatemala.', -- Charity Description
		'The shared mission of Women Work Together and ADIMTU is to unlock the potential of Mayan girls in Guatemala to stay in school, direct their own futures, and become leaders in their communities.', -- Charity Tag
		'http://womenworktogether.org/beta/wp-content/themes/wwt/img/logo-inverse-2.png', -- Logo
		'2010' -- Founded
		),
	-- Boulder County Medical Society
	( 'Boulder County Medical Society', -- Charity Name
		'https://bcms.net/', -- Charity Link
		'6650 Gunpark Dr Ste 100', -- Address
		'Boulder', -- City
		'CO', -- State
		'80301', -- Zipcode
		'303-527-3215', -- Phone Number
		'BCMedSoc@aol.com', -- Email
		'Health', -- Category Name
		'The Purpose of Boulder County Medical Society is to bring into one organization the reputable and legally qualified doctors of medicine of Boulder County, to promote the science and art of medicine, the betterment of public health, and the unity, harmony and welfare of the medical profession.', -- Charity Description
		'Betterment of public health through physician’s referral network.', -- Charity Tag
		'http://www.cms.org/uploads/2016-bcms-logo.jpg', -- Logo
		'1983' -- Founded
		);

insert into financial(
	assets, 
	income,
	expenses,
	irs_form
)
values
	-- The Humane Society of Boulder Valley Inc
	( '$10,204,696', -- Assets
		'$5,591,593', -- Income
		'$5,506,797', -- Expenses
		'https://www.guidestar.org/FinDocuments/2016/840/152/2016-840152768-0e59c3ec-9.pdf' -- IRS Form
		),
	-- Boulder Opera
	( '$18,894', -- Assets
		'$59,201', -- Income
		NULL, -- Expenses
		NULL, -- IRS Form
		),
	-- Attention Homes
	( '$1,619,333', -- Assets
		'$2,135,914', -- Income
		'$2,000,130', -- Expenses
		'https://www.guidestar.org/Profile/ProPdf/54-1774039' -- IRS Form
		),
	-- Montessori Education Center Of The Rockies Inc
	( '$1,239,226', -- Assets
		'$779,798', -- Income
		NULL, -- Expenses
		'https://www.guidestar.org/FinDocuments/2017/840/798/2017-840798089-0e779378-9.pdf' -- IRS Form
		),
	-- Women Work Together
	( '$57,355', -- Assets
		'$76,109', -- Income
		'$82,428', -- Expenses
		'https://www.guidestar.org/FinDocuments/2016/271/153/2016-271153328-0dc3f9ed-Z.pdf' -- IRS Form
		),
	-- Boulder County Medical Society
	( '$455,952', -- Assets
		'$220,145', -- Income
		NULL, -- Expenses
		'https://www.guidestar.org/FinDocuments/2016/846/031/2016-846031814-0ed2a027-9O.pdf' -- IRS Form
		);