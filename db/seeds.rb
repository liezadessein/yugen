# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CreativeEscape.create(length: "between 8 hours and 30 hours",skill: "embroidery", description: "Maison Lesage Lesage has been creating opulent embroidery requiring countless hours of work and exceptional skills for Haute Couture, Ready-to-Wear and accessories since its creation in 1924. The company founded an embroidery school in 1992 that welcomes those who are passionate about embroidery from all over the world.
Lesage became part of CHANEL’s Métiers d’art in 2002.", price: 1350 , currency: "euros" , streetnumber: 13, address: "rue de la Grange Batelière" , postcode: 75009, city:"Paris" , email: "contact@lesage.fr" , phone: 0471335125 , bookable: false, country: "France" )

CreativeEscape.create(length: "nine weeks", skill: "coding", description: "Le Wagon is rated 1st coding bootcamp in the world according to Coursereport and Switchup.We have taught more than 1430 student and our program has evolved each time to reach perfection. We believe building a great curriculum takes time and it took us nearly 3 years to design the FullStack program. It is our longstanding experience that makes our program so efficient. You will learn in 2 months what you would have learned in 2 years", price: 4900, currency: "euros" , streetnumber: 5 , address:"Sinter-Goedelevoorplein", postcode: 1000, city: "Brussels", email: "contact@lewagon.com", phone:  0471334202, bookable: false, country: "Belgium")

CreativeEscape.create(length: "between a week and 8 weeks", skill: "Vegan Cuisine", description: "Matthew Kenney Culinary offers students a special opportunity to complete a series of programs and receive seals that mark major accomplishments in their culinary education. In order for students to be awarded CORE and MASTER seal program recognition all courses must be successfully completed as listed below. Speak with our admissions team about special Master Seal Program pricing. Upon completion of required courses students will receive an electronic seal for placement on website or CV to honor their achievements.", price: 4000, currency: "euros", streetnumber: 51 , address: "Casa de Camp", postcode: 1200, city: "Barcelona", email: "plantlab@gmail.com", phone: 0532512012, bookable: false, country: "Spain")

CreativeEscape.create(length: "8 days",skill: "beer brewing", description: "Micro Malting in Practice is an 8-day full-time hands-on course providing up-to-date knowledge in the field of malting. It covers the basics of malting technology in theory and practice. The lectures will cover topics such as malting barley and other relevant cereals (botanics, quality, varieties, enzymes a.o.), malting technology (steeping, germination, kilning, special aspects of small-scale malting, equipment) and practical laboratory work (barley and malt analysis, interpretation and assessment of different quality parameters).
In addition, the participants will conduct and accompany a complete malting batch in our pilot malting.
The language is English. You can expect an intensive training with maximum benefit.", price: 1990, currency: "euros", streetnumber: 13, address: "Seestrasse", postcode: 13533, city: "Berlin", email: "beer@vlbberlin.org", phone: 0223526352 , bookable: true, country: "Germany" )

c = CreativeEscape.create(length: "2 days", skill: "silk screen printing", description: "Print Club London: Join one of our amazing designers who will guide you through all aspects of screen print design and teach you how to create a professional, 2 colour edition.
Over the course of 2 days you will be taught all the tricks and skills you need to start screen printing independently at a high level. Day 1 kicks off in the Print Club Gallery (next door to the Print Club studio) in Dalston. You will be taught the building blocks of artwork creation through the use of examples, learning step by step how all the different effects are achieved.
With the small class size, there will be lots of time for the tutor to discuss with you the best way to achieve an amazing print from the starting point of your design. Once all the artwork has been created and prepared for print, you will be taught how to coat, expose and wash out your screens ready for day 2!
Day 2 is all about the printing… In the morning you will be shown different types of ink, how to mix up your inks and print your first layer. In the afternoon everyone  will print their second layers. After all the printing is done, and you’ve had a chance to admire your newly taught printing prowess, you will be shown how to blast out your screen!", price: 160, currency: "pounds", streetnumber: 10, address: "Print Club London Millers Avenue", postcode:"D82DS", city: "London", email: "london@gmail.com", phone: 0212412541 , bookable: true, country: "United Kingdom")


#EscapePhoto.create(creative_escape: c, )
