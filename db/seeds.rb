# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


Category.destroy_all
Question.destroy_all
Test.destroy_all
sabbath_hol = Category.create({
  title: "Sabbath",
  photo: "http://houseofprayermessage.files.wordpress.com/2012/11/shabbat-d8b50b0ccbe7b3633d984114e2cafcb61d315c83-s6-c30.jpg",
  bible_quote: "Thus the heavens and the earth were completed in all their vast array.
                By the seventh day God had finished the work he had been doing; so on the seventh
                day he rested from all his work. Then God blessed the seventh day and made it holy,
                because on it he rested from all the work of creating that he had done.",
  bible_src:   "Genesis 2:1-3",
  plot:         "The purpose of the Sabbath is a day of rest.
                God finished creating the world in six day and rested on the seventh.
                We are thus commanded to observe the Sabbath. The source for this is in the Ten Commandments.
                Commandment four states: ‘Remember the Sabbath day, to keep it holy. Six days you shall labor,
                and do all your work, but the seventh day is a Sabbath to the LORD your God. On it you shall
                not do any work, you, or your son, or your daughter, your male servant, or your female servant,
                or your livestock, or the sojourner who is within your gates. For in six days the LORD made
                heaven and earth, the sea, and all that is in them, and rested on the seventh day. Therefore
                the LORD blessed the Sabbath day and made it holy.’(Exodus 20:8-11)",
  customs:     "Friday night the Sabbath begins. No work can be done at all. Work is defined as
                anything one does during the week that pertains to their normal life activity.
                So a person cannot deal in business, use electronics, turn on lights, etc.
                Lighting the Sabbath candles marks the formal initiation of the Sabbath.
                Ma’ariv, known as the evening service follows. In the core prayer of the Jewish worship,
                the central reference to creation is mentioned (Genesis 2:1-3). After prayer services,
                everyone goes home for the Friday night meal. Here we sing ‘Shalom Aleichem - Peace Be unto You’.
                This signifies the welcoming of the presence of the Sabbath. Then the husband sings another
                song called ‘Eshet Chayil – Woman of Valor’ to his wife. The song’s meaning shows the husband’s
                love and appreciation to his wife. After serenating the wife, the husband then recites Kiddush or
                Sanctification, a prayer that declares the day of Sabbath and is fulfilled over a cup of wine.
                Following Kiddush, everyone washes their hands and then two hallah breads are eaten. Hallah is eaten
                to signify the double portion of manna received by the Israelites in the wilderness. After eating
                the bread, people then begin to eat the cliché food such as: gefilte fish, chicken soup,
                and chicken and potato kugel. Every home is different but the average Jewish home partakes in such
                food. On Shabbat morning it is usual to go to Synagogue. The prayer service called Shachris,
                contains special prayers for the Sabbath. The service contains not only prayers and hymns,
                but also a few passages of study. These include a reading from the Torah (The first five books
                of the Bible) and a reading from the Nevi'im (prophetical books.) The latter is referred to as the
                Haftarah. After morning services, lunch is served. Kiddush must be recited again and two hallah
                breads eaten. Later in the day there is afternoon prayer services called Mincha that also has
                special prayers for the Sabbath. On Saturday night, there is one more prayer service again,
                which normal regular week day services. There is one last prayer that is done called ‘Havdalah’.
                This is another blessing over wine where we smell a nice fragrance by candlelight. This prayer is
                the prayer of goodbye to the Sabbath until next week.",
  date:         "Friday Evenings"
  })
rosh_hol = Category.create({
  title: "Rosh Hashanah",
  photo:"http://toriavey.com/images/2010/09/HappyRoshHashanah.jpg",
  bible_quote: "Speak to the people of Israel, saying, In the seventh month,
                on the first day of the month, you shall observe a day of solemn
                rest, a memorial proclaimed with blast of trumpets, a holy convocation.",
  bible_src:   "Leviticus 23:24",
  plot:        "The Biblical name for this holiday is called Yom Teruah, literally ‘day of
                shouting/raising a noise.’ It is first of the High Holy Days, or ‘Days of Awe’
                which usually occur in the early autumn of the Northern Hemisphere. Rosh Hashanah
                is a two-day celebration, which begins on the first day of Tishrei. The day is believed
                to be the anniversary of the creation of Adam and Eve, the first man and woman, and their
                first actions toward the realization of humanity's role in God’s world.",
  customs:     "Rosh Hashanah customs include sounding the shofar (a hollowed-out ram's horn) which is
                meant to remind everyone to repent for their sins. Another custom is eating symbolic foods
                such as apples dipped in honey to evoke a 'sweet new year'. Rosh Hashanah is also the day of 'Yom Hadin',
                known as Judgment day. On Yom Hadin, 3 books are opened, the book of life, for the righteous
                among the nations, the book of death, for the most evil who receive the seal of death,
                and the third book for the ones living in doubts with non-evil sins. The final judgment is
                not done from Yom Hadin before the start of Yom Kippur, it is sometimes possible to receive
                the seal of life by asking for forgiveness.",
  date:         "1st of Tishrei"
  })
kippur_hol = Category.create({
  title: "Yom Kippur",
  photo: "http://timesofrefreshingontheoldpaths.files.wordpress.com/2012/09/yomkippur.jpg",
  bible_quote: "On the tenth day of this seventh month you shall have a holy convocation
                and afflict yourselves. You shall do no work.",
  bible_src:   "Numbers 29:7",
  plot:        "Also known as Day of Atonement, is the holiest day of the year for the Jewish people.
                Its central themes are atonement and repentance. Jewish people traditionally observe
                this holy day with an approximate 25-hour period of fasting and intensive prayer,
                often spending most of the day in synagogue services. According to Jewish tradition,
                God inscribes each person's fate for the coming year into a book, the Book of Life,
                on Rosh Hashanah, and waits until Yom Kippur to 'seal' the verdict. During the Days of Awe,
                a Jew tries to amend his or her behavior and seek forgiveness for wrongs done against God
                (bein adam leMakom) and against other human beings (bein adam lechavero). The evening and
                day of Yom Kippur are set aside for public and private petitions and confessions of guilt (Vidui).
                At the end of Yom Kippur, one hopes that they have been forgiven by God.",
  customs:      "There are five prohibitions that are observed on Yom Kippur.
                1. No eating and drinking.
                2. No wearing of leather shoes.
                3. No bathing or washing.
                4. No anointing oneself with perfumes or lotions.
                5. No marital relations.
                A parallel has been drawn between these activities and the human condition according
                to the Biblical account of the expulsion from the Garden of Eden.
                Refraining from these symbolically represents a return to a pristine state,
                which is the theme of the day. By refraining from these activities, the body is uncomfortable
                but can still survive. The soul is considered to be the life force in a body. Therefore,
                by making one’s body uncomfortable, one’s soul is uncomfortable. By feeling pain one can feel
                how others feel when they are in pain. To sum up,  by fasting and obeying these prohibitions it
                cleanses our soul. This is the purpose of the prohibitions.",
  date:         "10th of Tishrei"
  })
sukkot_hol = Category.create({
  title: "Sukkot",
  photo: "http://upload.wikimedia.org/wikipedia/commons/thumb/6/62/EtrogC.jpg/300px-EtrogC.jpg",
  bible_quote: "After the ingathering from your threshing floor and your vat,
                you shall hold the Feast of Booths for seven days…You shall hold a festival…in the
                place that the Lord will choose, for the Lord your God will bless all your crops
                and all your undertakings, and you shall have nothing but joy.",
  bible_src:    "Deuteronomy 16:13-15",
  plot:         "Feast of Booths, Feast of Tabernacles is a biblical Jewish holiday celebrated on the
                15th day of the month of Tishrei (varies from late September to late October). It is
                one of the three biblically mandated festivals Shalosh regalim on which Hebrews were
                commanded to make a pilgrimage to the Temple in Jerusalem. The holiday lasts seven days
                (eight in the diaspora). The first day (and second in the diaspora) is a sabbath-like yom
                tov (holiday) when work is forbidden, followed by the intermediate Chol Hamoed and
                Shemini Atzeret. The Hebrew word sukkōt is the plural of sukkah, 'booth or tabernacle',
                which is a walled structure covered with schach (plant material such as leafy tree
                overgrowth or palm leaves). The sukkah is intended as a reminiscence of the type of fragile
                dwellings in which the Israelites dwelt during their 40 years of travel in the desert after
                the Exodus from slavery in Egypt. Another reason for dwelling in a sukkah is to symbolize
                the cloud of glory that accompanied the Jews in the desert. Just like the cloud of glory
                protected the Jews temporarily, so to should we leave our comfortable homes and dwell in
                a temporary environment. Throughout the holiday, meals are eaten inside the sukkah and some
                people sleep there as well.",
  customs:      "Sukkot is an eight-day holiday, with the first day celebrated as a full festival with special
                prayer services and holiday meals. The remaining days are known as Chol HaMoed ('festival weekdays').
                 The seventh day of Sukkot is called Hoshana Rabbah ('Great Hoshana', referring to the tradition
                 that worshippers in the synagogue walk around the perimeter of the sanctuary during morning services)
                 and has a special observance of its own. Outside Israel, the first two days are celebrated as full
                 festivals. Throughout the week of Sukkot, meals are eaten in the sukkah and the males sleep there,
                 although the requirement is waived in case of rain. Every day, a blessing is recited over the Lulav
                 and the Etrog. In total there are four species that together make up this positive commandment.
                 The citron is known as the Etrog, the date palm tree is known as the lulav, the myrtle tree is known
                 as the hadass, and the willow tree is known as the aravah. All four are shaken in a specific order
                 during morning prayer throughout the holiday.",
  date:          "15th of Tishrei"
  })
hannuka_hol = Category.create({
  title: 				"Hanukkah",
  photo:         "http://www.wallpapers-christmas.com/images/wmwallpapers/Happy-Hanukkah-Menorah-1.jpeg",
  bible_quote:   "Many people define major Jewish holidays as those that feature traditional holiday meals,
                  kiddush, holiday candle-lighting, etc., and when all forms of work are forbidden.
                  Only biblical holidays fit this criteria, and Hanukah was instituted some two centuries
                  after the Bible was completed and canonized. Nevertheless, though Hanukah is of rabbinic origin,
                  it is traditionally celebrated in a major and very public fashion. The requirement to position the
                  menorah, or Hanukiah, at the door or window symbolizes the desire to give the Hanukah miracle a high profile.",
  plot:           "Hanukkah, also known as the Festival of Lights, Feast of Dedication, is an eight-day holiday
                  commemorating the rededication of the Holy Temple (the Second Temple) in Jerusalem at the time of the
                  Maccabean Revolt against the Seleucid Empire of the 2nd century BCE. Hanukkah is observed for eight nights
                  and days, starting on the 25th day of Kislev according to the Hebrew calendar, which may occur at any time
                  from late November to late December in the Gregorian calendar. The festival is observed by
                  the kindling of the lights of a unique candelabrum, the nine-branched menorah or hanukiah,
                  one additional light on each night of the holiday, progressing to eight on the final night.
                  The typical menorah consists of eight branches with an additional raised branch.
                  The extra light is called a shamash (Hebrew: שמש‎, 'attendant') and is given a distinct location,
                  usually above or below the rest. The purpose of the shamash is to have a light available for
                  practical use, as using the Hanukkah lights themselves for purposes other than publicizing and
                  meditating upon Hanukkah is forbidden. The reason for the Hanukkah lights is not for the 'lighting
                  of the house within', but rather for the 'illumination of the house without,' so that passersby
                  should see it and be reminded of the holiday's miracle (i.e. the triumph of the few over the many and
                  of the pure over the impure). Accordingly, lamps are set up at a prominent window or near the door leading
                  to the street.",
  customs:        "Three Jewish prayers are chanted before the candles on the Menorah are lit. According to the Hanukkah
                  tradition, an extra candle is used to light the rest of the candles of the candelabrum.
                  The extra candle is called as the 'Shamash' or the 'servant candle', the single candle located at
                  the middle of the candelabrum. After all the lights are kindled, Hanukkah songs are sung as part of
                  the Hanukkah traditions. Traditional Hanukkah food is cooked during the festival with oil as the key
                  ingredient. Delicious Jelly donuts, potato/vegetable fried latkes, pancakes, deep fried puffs are some
                  of the most common foods served during the festival. Gift giving is another popular Hanukkah tradition.
                  The Jewish children receive small gifts from their elder family members on Hanukkah.",
  date:           "25th Day of Kislev to the 2nd Day of Tevet"
  })

purim_hol = Category.create({
  title:         "Purim",
  photo:         "http://www.kosherkingdom.co.uk/site/wp-content/uploads/purim.jpg",
  bible_quote:   "As the days wherein the Jews rested from their enemies, and the month which was turned unto
                  them from sorrow to joy, and from mourning into a good day: that they should make them days
                  of feasting and joy, and of sending portions one to another, and gifts to the poor.",
  bible_src:     "Scroll of Esther 9:22",
  plot:          "'Purim' is a Jewish holiday that commemorates the deliverance of the Jewish people
                  in the ancient Persian Empire where a plot had been formed to destroy them. The story
                  is recorded in the Biblical Book of Esther. According to the Book of Esther, Haman, royal vizier
                  to King Ahasuerus (presumed to be Xerxes I of Persia) planned to kill all the Jews in the empire,
                  but his plans were foiled by Mordecai and his cousin and adopted daughter Esther who had risen to
                  become Queen of Persia. The day of deliverance became a day of feasting and rejoicing.",
  customs:       "Based on the conclusions of the Scroll of Esther (Esther 9:22): '[...] that they should make
                  them days of feasting and gladness, and of sending portions one to another, and gifts to the poor'
                  Purim is therefore celebrated among Jews by: Exchanging reciprocal gifts of food and drink known
                  as mishloach manot. Donating charity to the poor known as mattanot la-evyonim. Eating a celebratory
                  meal known as a se'udat Purim. Public recitation ('reading of the megillah') of the Scroll of Esther,
                  known as kriat ha-megillah, usually in synagogue. Reciting additions, known as Al HaNissim, to
                  the daily prayers and the grace after meals. Other customs include drinking wine or any alcoholic beverage,
                  wearing of masks and costumes, and public celebration. Purim is celebrated annually according to the Hebrew
                  calendar on the 14th day of the Hebrew month of Adar (and on Adar II in Hebrew leap years that take place every
                  2 to 3 years), the day following the victory of the Jews over their enemies. In
                  cities that were protected by a surrounding wall at the time of the Biblical Joshua,
                  Purim is instead celebrated on the 15th of the month of Adar on what is known as Shushan Purim,
                  since fighting in the walled city of Shushan continued through the 14th day of Adar. Today,
                  only Jerusalem and a few other cities celebrate Purim on the 15th of Adar.",
  date:          "14th of Adar"
  })
tu_hol = Category.create({
  title: 			"Tu B’shvat",
  photo:       "http://www.loveisrael.com/wp-content/uploads/2014/01/tubshvat-400x1400.jpg",
  bible_quote: "There is no direct Biblical Source but Tu Bishvat appears in the Mishnah in Tractate
                Rosh Hashanah as one of the four new years in the Jewish calendar. The discussion of
                when the New Year occurs was a source of debate among the rabbis: 'And there are four new year dates:
                The first of Nisan - new year for kings and festivals - The first of Elul - new year for animal tithes.
                Rabbi Elazar and Rabbi Shimon say: the first of Tishrei. The first of Tishrei- new year for calculation
                of the calendar, sabbatical years and jubilees, for planting and sowing. The first of Shevat, according
                to the school of Shamai; The school of Hillel says: the fifteenth of Shevat (Rosh Hashana:2a).
                The rabbis of the Talmud ruled in favor of Hillel on this issue. Thus the 15th of Shevat became the date
                for calculating the beginning of the agricultural cycle for the purpose of biblical tithes.",
  plot:        "Tu Bishvat is a Jewish holiday occurring on the 15th day of the Hebrew month of Shevat It is also called
                'Rosh HaShanah La'Ilanot' meaning 'New Year of the Trees.'",
  customs:     "In contemporary Israel the day is celebrated as an ecological awareness day and trees are planted
                in celebration.",
  date:        "15th Day of Sh'vat"
  })
passover_hol = Category.create({
  title:       "Passover",
  photo:     "http://www.sunjournal.com/files/imagecache/story_large/2014/03/26/BSECeatsPassover2P040614.jpg",
  bible_quote: "In the first month, on the fourteenth day of the month between the two evenings is the Lord's Passover.
                And on the fifteenth day of the same month is the feast of unleavened bread unto the Lord;
                seven days ye shall eat unleavened bread. In the first day you shall have a holy convocation;
                you shall do no manner of servile work. And you shall bring an offering made by fire unto the Lord
                seven days; in the seventh day is a holy convocation; you shall do no manner of servile work.",
  bible_src:   "Leviticus 23:5",
  plot:        "Passover, or Pesach is an important biblically derived Jewish festival. The Jewish people celebrate Passover
                as a commemoration of their liberation over 3,300 years ago by God from slavery in ancient Egypt that was ruled
                by the Pharaohs, and their freedom as a nation under the leadership of Moses. It commemorates the story of the Exodus
                as described in the Hebrew Bible especially in the Book of Exodus, in which the Israelites were freed from slavery in Egypt.
                Passover commences on the 15th of the Hebrew month of Nisan and lasts for either seven days (in Israel) or eight days
                (in the diaspora). In Judaism, a day commences at dusk and lasts until the following dusk, thus the first day of Passover
                only begins afterdusk of the 14th of Nisan and ends at dusk of the 15th day of the month of Nisan. The rituals unique to the
                Passover celebrations commence with the Passover Seder when the 15th of Nisan has begun. In the Northern Hemisphere Passover
                takes place in springas the Torah prescribes it: 'in the month of [the] spring' (בחדש האביב Exodus 23:15). It is one of the
                most widely observed Jewish holidays. In the narrative of the Exodus, the Bible tells that God helped the Children of Israel
                escape from their slavery in Egypt by inflicting ten plagues upon the ancient Egyptians before the Pharaoh would release his
                Israelite slaves; the tenth and worst of the plagues was thedeath of the Egyptian first-born. The Israelites were instructed
                to mark the doorposts of their homes with the blood of a slaughtered spring lamb and, upon seeing this, the spirit of the
                Lord knew to pass over the first-born in these homes, hence the English name of the holiday. When the Pharaoh freed the
                Israelites, it is said that they left in such a hurry that they could not wait for bread dough to rise (leaven).
                In commemoration, for the duration of Passover no leavened bread is eaten, for which reason Passover was called the
                feast of unleavened bread in the Torah or Old Testament.Thus Matzo (flat unleavened bread) is eaten during Passover and
                it is a tradition of the holiday. Historically, together with Shavuot ('Pentecost') and Sukkot ('Tabernacles'),
                Passover is one of the three pilgrimage festivals(Shalosh Regalim) during which the entire population of the kingdom of
                Judah made a pilgrimage to the Temple in Jerusalem.[6]Samaritans still make this pilgrimage to Mount Gerizim, but only men
                participate in public worship.",
  customs:      "After sundown the night before the first official day of Passover, Jews conduct the Seder, a special ceremony during
                which they re-tell the story of their ancestor’s liberation. During the Seder, family members read from the Haggadah,
                Passover’s own story book, and sing traditional holiday songs. A Seder plate containing five items—each a fundamental
                part of the ceremony and symbolic of an element of Exodus—sits on the table. There’s a spring vegetable such as parsley,
                which is dipped in salt water and eaten to resemble the taste of their ancestors’ sweat and tears. “Maror,” usually
                horseradish or romaine lettuce, serves as a reminder of the bitter oppression of slavery and Pharoah’s difficult-to-swallow
                decree to drown Israelites’ male infants. “Charoset,” a mixture of chopped apples, nuts, wine, and honey, recalls the mortar
                Israelites used to build cities for Pharoah. And a roasted shank bone, which represents the Passover sacrificial offering,
                and a roasted egg, symbolizing rebirth and renewal, are always on the plate, though they aren’t actually eaten. In addition,
                four cups of wine are drunk throughout the Seder. The wine symbolizes the four stages of redemption that the Israelites experienced.
                A fifth cup is set aside for “Elijah” and not imbibed; this cup represents the hope for future redemption. Chametz
                ('leavening') is made from one of five types of grains combined with water and left to stand for more than eighteen minutes.
                The consumption, keeping, and owning of chametz is forbidden during Passover. The Torah commandments regarding chametz are:
                To remove all chametz from one's home, including things made with chametz, before the first day of Passover. (Exodus 12:15).
                It may be simply used up, thrown out (historically, destroyed by burning), or given or sold to non-Jews (or non-Samaritans,
                as the case may be). To refrain from eating chametz or mixtures containing chametz during Passover.
                (Exodus 13:3, Exodus 12:20, Deuteronomy 16:3). Not to possess chametz in one's domain (i.e. home, office, car, etc.)
                during Passover (Exodus 12:19, Deuteronomy 16:4). Observant Jews spend the weeks before Passover in a flurry of thorough
                housecleaning, to remove every morsel of chametz from every part of the home. Jewish law requires the elimination of olive-sized
                or larger quantities of leavening from one's possession, but most housekeeping goes beyond this. Even the cracks of kitchen
                counters are thoroughly scrubbed, for example, to remove any traces of flour and yeast, however small. Any item or implement that
                has handled chametz is generally put away and not used during Passover.",
  date:        "15th of Nisan"
    })
shavuot_hol = Category.create({
  title:       "Shavuot",
  photo:       "http://torahinmyheart.com/yahoo_site_admin/assets/images/Torah_Scroll_from_123rf.175212641.jpg",
  bible_quote: "'You shall celebrate the Feast of Weeks, that is, the first fruits of the wheat harvest, and the Feast of Ingathering at the turn of the year.'
                'Then you shall celebrate the Feast of Weeks to the Lord your God with a tribute of a freewill offering of your hand, which you shall give just as the Lord your God blesses you'",
  bible_src:   "Exodus 34:22, Deuteronomy 16:10",
  plot:        "Shavuot known as the “Festival of Weeks” in English commemorates the anniversary of the day God gave the Torah to
                the entire nation of Israel assembled at Mount Sinai, although the association between the giving of the Torah
                (Matan Torah) and Shavuot is not explicit in the Biblical text. The holiday is one of the Shalosh Regalim,
                the three Biblical pilgrimage festivals. It marks the conclusion of the Counting of the Omer, and its date is
                directly linked to that of Passover. The Torah mandates the seven-week Counting of the Omer, beginning on the second
                day of Passover, to be immediately followed by Shavuot. This counting of days and weeks is understood to express
                anticipation and desire for the giving of the Torah. On Passover, the people of Israel were freed from their
                enslavement to Pharaoh; on Shavuot they were given the Torah and became a nation committed to serving God. The word
                Shavuot means weeks, and the festival of Shavuot marks the completion of the seven-week counting period between Passover
                and Shavuot. Shavuot is one of the lesser-known Jewish holidays among secular Jews in the Jewish diaspora,
                while those in Israel are more aware of it. According to Jewish law, Shavuot is celebrated in Israel for one day
                and in the Diaspora (outside of Israel) for two days.Reform Judaism celebrates only one day, even in the Diaspora.",
  customs:     "The practice of staying up all Shavuot night to study Torah – known as Tikkun Leil Shavuot – has its source in the
                Midrash, which relates that the night before the Torah was given, the Israelites retired early to be well-rested for the momentous day ahead.
                They overslept and Moses had to wake them up because God was already waiting on the mountaintop. To rectify this perceived flaw
                in the national character, many religious Jews stay up all night to learn Torah.
                According to the Midrash, Mount Sinai suddenly blossomed with flowers in anticipation of the giving of the Torah
                on its summit. Greenery also figures in the story of the baby Moses being found among the bulrushes in a watertight
                cradle (Ex. 2:3) when he was three months old (Moses was born on 7 Adar and placed in the Nile River on 6 Sivan,
                the same day he later brought the Jewish nation to Mount Sinai to receive the Torah).
                For these reasons, many Jewish families traditionally decorate their homes and synagogues with plants, flowers
                and leafy branches in honor of Shavuot. Some synagogues decorate the bimah with a canopy of flowers and plants so that
                it resembles a chuppah, as Shavuot is mystically referred to as the day the matchmaker (Moses) brought the bride
                (the nation of Israel) to the chuppah (Mount Sinai) to marry the bridegroom (God); the ketubbah (marriage contract) was
                the Torah. There are five books in Tanakh that are known as Megillot ('scrolls') and are publicly read in the
                synagogues on different Jewish holidays. The Book of Lamentations, which details the destruction of the Holy Temple,
                is the reading for Tisha B'Av; the Book of Ecclesiastes, which touches on the ephemeralness of life, corresponds to Sukkot;
                the Book of Esther (Megillat Esther) retells the events of Purim; and the Song of Songs, which echoes the themes of springtime
                and God's love for the Jewish people, is the reading for Passover. The Book of Ruth (Megillat Ruth) is read on Shavuot because:
                1. King David, Ruth's descendant, was born and died on Shavuot; 2. Shavuot is harvest time [Exodus 23:16], and the events
                of Book of Ruth occur at harvest time; 3. The gematria (numerical value) of Ruth is 606, the number of commandments given
                at Sinai in addition to the 7 Noahide Laws already given, for a total of 613; 4. Ruth was a convert, and all Jews also
                entered the covenant on Shavuot, when the Torah was given; 5. The central theme of the book is loving-kindness, and the
                Torah is about loving-kindness; 6. Ruth was allowed to marry Boaz on the basis of the Oral Law's interpretation of the verse,
                'A Moabite may not marry into the Congregation of the Lord.' (Deut. 23:4), which is that this verse applies only to Moabite men.
                This points to the unity of the Written and Oral Torahs.",
  date:         "6th of Sivan"
  })
tish_hol = Category.create({
  title: 			"Tisha B’av",
  photo:	     "http://ohr.edu/special/9av/9av.jpg",
  bible_quote: "According to Rabbinic tradition (as seen in the Mishnah Taanit 4:6), the sin of the Ten Spies produced the annual
                fast day of Tisha B'Av. When the Israelites accepted the false report, they wept over the false belief that God
                was setting them up for defeat. The night that the people cried was the ninth of Av, which became a day of weeping
                and misfortune for all time.",
  bible_src:   "Not Applicable",
  plot:        "The fast commemorates the destruction of the First and Second Temples, which both occurred on Av 9, about 655 years apart.
                In connection with the fall of Jerusalem, three other fast-days were established at the same time as the Ninth Day of Av:
                these were the Tenth of Tevet, when the siege began; the Seventeenth of Tammuz, when the first breach was made in the wall;
                and the Third of Tishrei, known as the Fast of Gedaliah, the day when Gedaliah was assassinated. The three weeks leading up
                to Tisha B'Av are known as The Three Weeks, while the days leading up to Tisha B'Av are known as The Nine Days. According to
                the Mishnah (Taanit 4:6), five specific events occurred on the ninth of Av that warrant fasting: The twelve spies sent by
                Moses to observe the land of Canaan returned from their mission. Only two of the spies, Joshua and Caleb, brought a positive
                report, while the others spoke disparagingly about the land. The majority report caused the Children of Israel to cry, panic
                and despair of ever entering the 'Promised Land'. For this, they were punished by God that their generation would not enter
                the land. Because of the Israelites' lack of faith, God decreed that for all generations this date would become one of crying
                and misfortune for their descendants. (See Numbers 13; Numbers 14). The First Temple built by King Solomon and the Kingdom of
                Judah was destroyed by the Babylonians led by Nebuchadnezzar in 587 BCE (Anno Mundi [AM] 3175) after a two-year siege and the
                Judaeans were sent into the Babylonian exile. According to the Talmud in tractate Ta'anit, the destruction of the First Temple
                began on the Ninth of Av and the Temple continued to burn throughout the Tenth of Av. The Second Temple built by Ezra and
                Nehemiah was destroyed by the Romans in August 70 CE (AM 3830), scattering the people of Judea and commencing the Jewish
                exile from the Holy Land. The Romans crushed Bar Kokhba's revolt and destroyed the city of Betar, killing over 500,000 Jews,
                on July 8, 135 CE (Av 9, AM 3892). Following the Bar Kokhba revolt, Roman commander Turnus Rufus plowed the site of the Temple
                and the surrounding area, in 135 CE.",
  customs:     "Tisha B'Av falls in July or August in the Western calendar. When Tisha B'Av falls on the Shabbat (Saturday)
                observance of Tisha B'Av takes place on Sunday. No outward signs of mourning intrude upon the normal Sabbath,
                although normal Sabbath eating and drinking end at sunset, rather than nightfall. The fast lasts about 25 hours,
                beginning at sunset on the preceding evening lasting until nightfall the next day. In addition to fasting, other
                pleasurable activities are also forbidden. Tisha B'Av bears a similar stringent nature to that
                of Yom Kippur. In addition to the length of the fast which lasts about 25 hours, beginning at sunset on the eve of
                Tisha B'Av and ends at nightfall the following day, Tisha B'Av also shares the following five prohibitions: No eating or drinking;
                No washing or bathing; No application of creams or oils; No wearing of (leather) shoes; No marital relations. These restrictions
                are waived in the case of health issues. For example, those who are seriously ill may eat and drink. On other fast days almost
                any medical condition may justify breaking the fast; in practice, since many cases differ, consultation with a rabbi is often
                necessary. Ritual washing up to the knuckles is permitted. Washing to cleanse dirt or mud from one's body is also permitted.
                Torah study is forbidden on Tisha B'Av (as it is considered a spiritually enjoyable activity), except for the study of
                distressing texts such as the Book of Lamentations, the Book of Job, portions of Jeremiah and chapters of the Talmud that
                discuss the laws of mourning.",
  date:        "9th of Av"
  })
kosher = Category.create({title: "Kosher", photo: "http://cdn.journalism.cuny.edu/blogs.dir/604/files/2012/11/Kosher-Symbol.png"})
q1 = Question.create({
  question: "What is the purpose of the Sabbath?",
  option_1: "To eat food",
  option_2: "Day of Rest",
  option_3: "Catch up on TV shows",
  option_4: "Play sports",
  correct_answer: "Day of Rest",
  category_id: sabbath_hol.id
  })
q2 = Question.create({
  question: "When does the Sabbath begin?",
  option_1: "Friday morning",
  option_2: "Friday night",
  option_3: "Saturday morning",
  option_4: "Sunday morning",
  correct_answer: "Friday night",
  category_id: sabbath_hol.id
  })
q3 = Question.create({
  question: "What action marks the start of the Sabbath?",
  option_1: "Eating the hallah bread",
  option_2: "Blessing of the wine",
  option_3: "Lighting the Sabbath candles",
  option_4: "Going to synagogue for prayer services",
  correct_answer: "Lighting the Sabbath candles",
  category_id: sabbath_hol.id
  })
q4 = Question.create({
  question: "What song does the husband sing to his wife before the friday night meal?",
  option_1: "Eshet Chayil",
  option_2: "Woman of Valor",
  option_3: "I Love You Baby",
  option_4: "a and b",
  correct_answer: "a and b",
  category_id: sabbath_hol.id
  })
q5 = Question.create({
  question: "What prayer is recited over wine before the meal?",
  option_1: "Hamotzei",
  option_2: "Havdallah",
  option_3: "Kiddush",
  option_4: "Gracetify",
  correct_answer: "Kiddush",
  category_id: sabbath_hol.id
  })
q6 = Question.create({
  question: "How many hallah breads are eaten?",
  option_1: "1",
  option_2: "2",
  option_3: "3",
  option_4: "4",
  correct_answer: "2",
  category_id: sabbath_hol.id
  })
q7 = Question.create({
  question: "Saturday night, what is the name of the prayer that is recited when the Sabbath is leaving?",
  option_1: "Havdalah",
  option_2: "Hamotzei",
  option_3: "Hashem",
  option_4: "Hastah",
  correct_answer: "Havdalah",
  category_id: sabbath_hol.id
  })
sabbath = Test.create({title: "Sabbath Test"})
sabbath.questions = [q1,q2,q3,q4,q5,q6,q7]
