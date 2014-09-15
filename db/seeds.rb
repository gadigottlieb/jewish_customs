# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

User.create(email: 'gadigottlieb@gmail.com', password: 'hello123', password_confirmation: 'hello123', name: 'Gadi Gottlieb', role: 2)



Category.destroy_all
Question.destroy_all
Test.destroy_all
sabbath_hol = Category.create({
  title: "Sabbath",
  photo: "sabbath.jpg",
  bible_quote: "Thus the heavens and the earth were completed in all their vast array.
                By the seventh day God had finished the work he had been doing; so on the seventh
                day he rested from all his work. Then God blessed the seventh day and made it holy,
                because on it he rested from all the work of creating that he had done.",
  bible_src:   "Genesis 2:1-3",
  plot:         "The Sabbath (or Shabbat, as it is called in Hebrew) is one of the best known and least understood of all
                Jewish observances. People who do not observe Shabbat think of it as a day filled with stifling restrictions,
                or as a day of prayer like the Christian Sabbath. But to those who observe Shabbat, it is a precious gift from God,
                a day of great joy eagerly awaited throughout the week, a time when we can set aside all of our weekday concerns and
                devote ourselves to higher pursuits. The purpose of the Sabbath is a day of rest. It is the most important ritual
                observance in Judaism and is the only ritual observance instituted in the Ten Commandments.  God finished creating
                the world in six day and rested on the seventh. We are thus commanded to observe the Sabbath. The source for this is
                in the Ten Commandments. Commandment four states: ‘Remember the Sabbath day, to keep it holy. Six days you shall labor,
                and do all your work, but the seventh day is a Sabbath to the Lord your God. On it you shall not do any work, you, or
                your son, or your daughter, your male servant, or your female servant, or your livestock, or the sojourner who is within
                your gates. For in six days the Lord made heaven and earth, the sea, and all that is in them, and rested on the seventh day.
                Therefore the Lord blessed the Sabbath day and made it holy.‘(Exodus 20:8-11)",
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
  photo:"roshhashanah.jpg",
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
  photo: "yomkippur.jpg",
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
  photo: "sukkot.jpg",
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
  photo:         "hannukah.jpg",
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
  photo:         "purim.jpg",
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
  photo:       "tubshvatfruit.jpg",
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
  photo:       "shavuot.jpg",
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
  photo:	     "tishabav.jpg",
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
kosher_cat = Category.create({title: "Kosher", photo: "kosher.jpg"})

####################
# Sabbath Questions#
####################

sab_q1 = Question.create({
  question: "What is the purpose of the Sabbath?",
  option_1: "To eat food",
  option_2: "Day of Rest",
  option_3: "Catch up on TV shows",
  option_4: "Play sports",
  correct_answer: "Day of Rest",
  category_id: sabbath_hol.id
  })
sab_q2 = Question.create({
  question: "When does the Sabbath begin?",
  option_1: "Friday morning",
  option_2: "Friday night",
  option_3: "Saturday morning",
  option_4: "Sunday morning",
  correct_answer: "Friday night",
  category_id: sabbath_hol.id
  })
sab_q3 = Question.create({
  question: "What action marks the start of the Sabbath?",
  option_1: "Eating the hallah bread",
  option_2: "Blessing of the wine",
  option_3: "Lighting the Sabbath candles",
  option_4: "Going to synagogue for prayer services",
  correct_answer: "Lighting the Sabbath candles",
  category_id: sabbath_hol.id
  })
sab_q4 = Question.create({
  question: "What song does the husband sing to his wife before the friday night meal?",
  option_1: "Eshet Chayil",
  option_2: "Woman of Valor",
  option_3: "I Love You Baby",
  option_4: "A and B",
  correct_answer: "A and B",
  category_id: sabbath_hol.id
  })
sab_q5 = Question.create({
  question: "What prayer is recited over wine before the meal?",
  option_1: "Hamotzei",
  option_2: "Havdallah",
  option_3: "Kiddush",
  option_4: "Gracetify",
  correct_answer: "Kiddush",
  category_id: sabbath_hol.id
  })
sab_q6 = Question.create({
  question: "How many hallah breads are eaten?",
  option_1: "1",
  option_2: "2",
  option_3: "3",
  option_4: "4",
  correct_answer: "2",
  category_id: sabbath_hol.id
  })
sab_q7 = Question.create({
  question: "Saturday night, what is the name of the prayer that is recited when the Sabbath is leaving?",
  option_1: "Havdalah",
  option_2: "Hamotzei",
  option_3: "Hashem",
  option_4: "Hastah",
  correct_answer: "Havdalah",
  category_id: sabbath_hol.id
  })
sab_q8 = Question.create({
  question: "What is the Hebrew word for Sabbath?",
  option_1: "Sababah",
  option_2: "Shabbat",
  option_3: "Sabbah",
  option_4: "Shoppah",
  correct_answer: "Shabbat",
  category_id: sabbath_hol.id
  })
sab_q9 = Question.create({
  question: "How many days did it take God to create the world?",
  option_1: "4",
  option_2: "5",
  option_3: "6",
  option_4: "7",
  correct_answer: "6",
  category_id: sabbath_hol.id
  })
sab_q10 = Question.create({
  question: "How many hallah breads and meals are eaten over the Sabbath?",
  option_1: "1 meal and 2 hallah breads",
  option_2: "2 meals and 4 hallah breads",
  option_3: "3 meals and 6 hallah breads",
  option_4: "4 meals and 8 hallah breads",
  correct_answer: "3 meals and 6 hallah breads",
  category_id: sabbath_hol.id
  })

#############################
#  Rosh Hashanah Questions  #
#############################

rosh_q1 = Question.create({
  question: "What is another name for Rosh Hashanah?",
  option_1: "Independence Day",
  option_2: "Judgement Day",
  option_3: "Atonement Day",
  option_4: "Marking Day",
  correct_answer: "Judgement Day",
  category_id: rosh_hol.id
  })
rosh_q2 = Question.create({
  question: "What Hebrew date does Rosh Hashanah fall out on?",
  option_1: "1 Tishrei",
  option_2: "1 Kislev",
  option_3: "1 Elul",
  option_4: "1 Adar",
  correct_answer: "1 Tishrei",
  category_id: rosh_hol.id
  })
rosh_q3 = Question.create({
  question: "What fruit is dipped in honey?",
  option_1: "Pear",
  option_2: "Peach",
  option_3: "Mango",
  option_4: "Apple",
  correct_answer: "Apple",
  category_id: rosh_hol.id
  })
rosh_q4 = Question.create({
  question: "Why do we dip apples in honey?",
  option_1: "Apples are bitter in September",
  option_2: "Honey has ability to clear the head",
  option_3: "For a sweet new year",
  option_4: "To remember the bees",
  correct_answer: "For a sweet new year",
  category_id: rosh_hol.id
  })
rosh_q5 = Question.create({
  question: "Why is a shofar blasted on Rosh Hashanah?",
  option_1: "For repentance",
  option_2: "To disrupt prayer service",
  option_3: "So kids will ask questions",
  option_4: "To scare people",
  correct_answer: "For repentance",
  category_id: rosh_hol.id
  })

########################
# Yom Kippur Questions #
########################

kip_q1 = Question.create({
  question: "What is another name for Yom Kippur?",
  option_1: "Day of Fasting",
  option_2: "Day of Atonement",
  option_3: "Day of Awakening",
  option_4: "Day of Eating",
  correct_answer: "Day of Atonement",
  category_id: kippur_hol.id
  })
kip_q2 = Question.create({
  question: "According to Jewish tradition, what does God do on Yom Kippur?",
  option_1: "Judge each person",
  option_2: "Seal every persons fate for the upcoming year",
  option_3: "Protect every persons fate for the upcoming year",
  option_4: "Nothing, therer is no God",
  correct_answer: "Seal every persons fate for the upcoming year",
  category_id: kippur_hol.id
  })
kip_q3 = Question.create({
  question: "What can a person do on Yom Kippur?",
  option_1: "Eat, Drink, or wear leather",
  option_2: "Bath, wash, or annoint oneself with perfume or lotion",
  option_3: "Have sexual relations",
  option_4: "None of the Above",
  correct_answer: "None of the Above",
  category_id: kippur_hol.id
  })
kip_q4 = Question.create({
  question: "What is the purpose of the prohibitions?",
  option_1: "Cleanse our souls",
  option_2: "No reason what so ever",
  option_3: "For fun",
  option_4: "To make us stronger",
  correct_answer: "Cleanse our souls",
  category_id: kippur_hol.id
  })
kip_q5 = Question.create({
  question: "What is the Hebrew date Yom Kippur falls out on?",
  option_1: "7 Tishrei",
  option_2: "8 Tishrei",
  option_3: "9 Tishrei",
  option_4: "10 Tishrei",
  correct_answer: "10 Tishrei",
  category_id: kippur_hol.id
  })

####################
# Sukkot Questions #
####################

sukkot_q1 = Question.create({
  question: "What is the Hebrew date Sukkot falls out on?",
  option_1: "13 Tishrei",
  option_2: "14 Tishrei",
  option_3: "15 Tishrei",
  option_4: "16 Tishrei",
  correct_answer: "15 Tishrei",
  category_id: sukkot_hol.id
  })
sukkot_q2 = Question.create({
  question: "What is another name for Sukkot?",
  option_1: "Feast of Booths",
  option_2: "Feast of Feasts",
  option_3: "Feast of Tabernacles",
  option_4: "A and C",
  correct_answer: "A and C",
  category_id: sukkot_hol.id
  })
sukkot_q3 = Question.create({
  question: "What was the Cloud of Glory?",
  option_1: "Cloud that produced water in the desert",
  option_2: "Cloud that protected the Jews from harm in the desert",
  option_3: "Cloud that fogged up the desert",
  option_4: "Cloud that served the Jews",
  correct_answer: "Cloud that protected the Jews from harm in the desert",
  category_id: sukkot_hol.id
  })
sukkot_q4 = Question.create({
  question: "What is the name of the citron fruit that is part of the four species?",
  option_1: "Eltag",
  option_2: "Ebrew",
  option_3: "Ebron",
  option_4: "Etrog",
  correct_answer: "Etrog",
  category_id: sukkot_hol.id
  })
sukkot_q5 = Question.create({
  question: "How many years did the Jews wonder the desert after they were freed from Egypt?",
  option_1: "10",
  option_2: "20",
  option_3: "30",
  option_4: "40",
  correct_answer: "40",
  category_id: sukkot_hol.id
  })

#####################
# Hanukah Questions #
#####################

hannuka_q1 = Question.create({
  question: "What is the Hebrew date Hanukkah falls out on?",
  option_1: "25 Kislev",
  option_2: "26 Kislev",
  option_3: "1 Tevet",
  option_4: "2 Tevet",
  correct_answer: "25 Kislev",
  category_id: hannuka_hol.id
  })
hannuka_q2 = Question.create({
  question: "How many nights are there during the holiday of Hanukkah?",
  option_1: "6",
  option_2: "7",
  option_3: "8",
  option_4: "9",
  correct_answer: "8",
  category_id: hannuka_hol.id
  })
hannuka_q3 = Question.create({
  question: "What is the extra candle used to light all other candles called?",
  option_1: "Samah",
  option_2: "Shamash",
  option_3: "Shamoo",
  option_4: "Samson",
  correct_answer: "Shamash",
  category_id: hannuka_hol.id
  })
hannuka_q4 = Question.create({
  question: "Why do we light 8 candles over 8 nights?",
  option_1: "8 is an important number in the Jewish religion",
  option_2: "After the revolution, the Priests lit the Menorah and it burned for 8 days",
  option_3: "To get 8 gifts from our parents",
  option_4: "So children will ask questions",
  correct_answer: "After the revolution, the Priests lit the Menorah and it burned for 8 days",
  category_id: hannuka_hol.id
  })
hannuka_q5 = Question.create({
  question: "Why do Jews light the menorah by a window or front door?",
  option_1: "To publicize the miracle that God performed for the Jews",
  option_2: "To decorate their house similar to christmas lights",
  option_3: "To show off to their neighbors",
  option_4: "None of the Above",
  correct_answer: "To publicize the miracle that God performed for the Jews",
  category_id: hannuka_hol.id
  })

###################
# Purim Questions #
###################

pur_q1 = Question.create({
  question: "What is the Hebrew date that Purim falls out on?",
  option_1: "13th of Adar",
  option_2: "14th of Adar",
  option_3: "21st of Adar",
  option_4: "22nd of Adar",
  correct_answer: "14th of Adar",
  category_id: purim_hol.id
  })
pur_q2 = Question.create({
  question: "Which wicked man wanted to kill all the Jews in the story of Purim?",
  option_1: "Adolf Hitler",
  option_2: "Haman",
  option_3: "King Ahasuerus",
  option_4: "Osama bin Laden",
  correct_answer: "Haman",
  category_id: purim_hol.id
  })
pur_q3 = Question.create({
  question: "Who foiled the plans of the wicked person?",
  option_1: "Moses",
  option_2: "Abraham",
  option_3: "Isaac",
  option_4: "Mordecai",
  correct_answer: "Mordecai",
  category_id: purim_hol.id
  })
pur_q4 = Question.create({
  question: "On Purim, Jews are supposed to partake in which activity?",
  option_1: "Donating charity to poor people",
  option_2: "Exchange gifts and food with friends",
  option_3: "Eat a celebratory meal",
  option_4: "All of the Above",
  correct_answer: "All of the Above",
  category_id: purim_hol.id
  })
pur_q5 = Question.create({
  question: "Purim has one custom that most resembles another custom from which Christian/Catholic holiday?",
  option_1: "Easter",
  option_2: "New Years",
  option_3: "Saint Patricks Day",
  option_4: "Christmas",
  correct_answer: "Saint Patricks Day",
  category_id: purim_hol.id
  })

######################
# Passover Questions #
######################

pass_q1 = Question.create({
  question: "What is the Hebrew date that Passover falls out on?",
  option_1: "10th of Nisan",
  option_2: "15th of Nisan",
  option_3: "20th of Nisan",
  option_4: "25th of Nisan",
  correct_answer: "15th of Nisan",
  category_id: passover_hol.id
  })
pass_q2 = Question.create({
  question: "What is the Hebrew word for Passover?",
  option_1: "Packyderm",
  option_2: "Pesterchik",
  option_3: "Pesach",
  option_4: "Partech",
  correct_answer: "Pesach",
  category_id: passover_hol.id
  })
pass_q3 = Question.create({
  question: "What is the overall theme of the Passover holiday?",
  option_1: "Remembering not to eat pig",
  option_2: "Freedom",
  option_3: "Torah",
  option_4: "Sacrificing animals to God",
  correct_answer: "Freedom",
  category_id: passover_hol.id
  })
pass_q4 = Question.create({
  question: "How many plagues did God inflict upon the Egyptians?",
  option_1: "5",
  option_2: "7",
  option_3: "10",
  option_4: "15",
  correct_answer: "10",
  category_id: passover_hol.id
  })
pass_q5 = Question.create({
  question: "The final plague, the death of the first-born, we get why the holiday is called Passover. What is the reason?",
  option_1: "God passed over the homes that had the correct sign",
  option_2: "Jews passed over and died",
  option_3: "Egyptians passed the ball over to the Jews",
  option_4: "None of the Above",
  correct_answer: "God passed over the homes that had the correct sign",
  category_id: passover_hol.id
  })
pass_q6 = Question.create({
  question: "On the first night of Passover, the Jews have a special meal. What is it called?",
  option_1: "The Sefer",
  option_2: "The Sailor",
  option_3: "The Seder",
  option_4: "The Butler",
  correct_answer: "The Seder",
  category_id: passover_hol.id
  })
pass_q7 = Question.create({
  question: "During the special meal, Maror is eaten. What is it and why is it eaten?",
  option_1: "Bitter vegetable to remind us of the bitter oppression of slavery",
  option_2: "Sweet fruit to remind us of the sweet freedom we have",
  option_3: "Fatty skin of an animal which reminds us to exercise",
  option_4: "None of the Above",
  correct_answer: "Bitter vegetable to remind us of the bitter oppression of slavery",
  category_id: passover_hol.id
  })
pass_q8 = Question.create({
  question: "Passover is one of the three pilgrimage festivals. What are the other two?",
  option_1: "Rosh Hashana and Yom Kippur",
  option_2: "Sukkot and Hanukkah",
  option_3: "Shavuot and Purim",
  option_4: "Sukkot and Shavuot",
  correct_answer: "Sukkot and Shavuot",
  category_id: passover_hol.id
  })
pass_q9 = Question.create({
  question: "How many cups of wine do Jews drink at the special meal?",
  option_1: "1",
  option_2: "2",
  option_3: "3",
  option_4: "4",
  correct_answer: "4",
  category_id: passover_hol.id
  })
pass_q10 = Question.create({
  question: "What is Chametz?",
  option_1: "Bread",
  option_2: "One of five grains mixed with water left to rise for more than 18 minutes",
  option_3: "Not allowed to be eaten on Passover",
  option_4: "All of the Above",
  correct_answer: "All of the Above",
  category_id: passover_hol.id
  })

#####################
# Shavuot Questions #
#####################

shavuot_q1 = Question.create({
  question: "What is the Hebrew date that Shavuot falls out on?",
  option_1: "3rd of Sivan",
  option_2: "6th of Sivan",
  option_3: "9th of Sivan",
  option_4: "12th of Sivan",
  correct_answer: "6th of Sivan",
  category_id: shavuot_hol.id
  })
shavuot_q2 = Question.create({
  question: "What is another name Shavuot is referred as?",
  option_1: "Festival of Days",
  option_2: "Festival of Years",
  option_3: "Festival of Galaxies",
  option_4: "Festival of Weeks",
  correct_answer: "Festival of Weeks",
  category_id: shavuot_hol.id
  })
shavuot_q3 = Question.create({
  question: "What is the gift God gave the Jewish people?",
  option_1: "Torah",
  option_2: "Freedom",
  option_3: "Life",
  option_4: "Wealth",
  correct_answer: "Torah",
  category_id: shavuot_hol.id
  })
shavuot_q4 = Question.create({
  question: "According to the Midrash, why do the Jewish people stay up the night before learning Torah?",
  option_1: "All nighters are awesome",
  option_2: "Jewish people enjoy drinking coffee",
  option_3: "They overslept the day they received the special gift from God",
  option_4: "None of the Above",
  correct_answer: "They overslept the day they received the special gift from God",
  category_id: shavuot_hol.id
  })
shavuot_q5 = Question.create({
  question: "Which scroll is read during prayer services on Shavuot?",
  option_1: "Book of Lamentations",
  option_2: "Book of Ecclesiastes",
  option_3: "Book of Esther",
  option_4: "Book of Ruth",
  correct_answer: "Book of Ruth",
  category_id: shavuot_hol.id
  })

###################
# Kosher Questions#
###################
kosh_q1 = Question.create({
  question: "What is kosher?",
  option_1: "Blessed food by a Rabbi",
  option_2: "Rules to restrict Jews from eating at all restaurants",
  option_3: "Set of religious dietary laws",
  option_4: "Jewish witchcraft",
  correct_answer: "Set of religious dietary laws",
  category_id: kosher_cat.id
  })
kosh_q2 = Question.create({
  question: "Which bird is kosher?",
  option_1: "Owl",
  option_2: "Chicken",
  option_3: "Hawk",
  option_4: "Raven",
  correct_answer: "Chicken",
  category_id: kosher_cat.id
  })
kosh_q3 = Question.create({
  question: "What sea animal is not kosher?",
  option_1: "Carp",
  option_2: "Salmon",
  option_3: "Shrimp",
  option_4: "Tuna",
  correct_answer: "Shrimp",
  category_id: kosher_cat.id
  })
kosh_q4 = Question.create({
  question: "Which animal is kosher?",
  option_1: "Pig",
  option_2: "Tiger",
  option_3: "Cow",
  option_4: "Dog",
  correct_answer: "Cow",
  category_id: kosher_cat.id
  })
kosh_q5 = Question.create({
  question: "How does one make a kosher animal, permissible to eat?",
  option_1: "Slaughterer shoots the animal in the head",
  option_2: "Slaughterer must sever the jugular vein with a sharp knife",
  option_3: "Slaughterer must bless the animal and put it to sleep",
  option_4: "Slaughterer must torture the animal to prepare it for death",
  correct_answer: "Slaughterer must sever the jugular vein with a sharp knife",
  category_id: kosher_cat.id
  })
kosh_q6 = Question.create({
  question: "Which of the following meals can a Jewish person eat?",
  option_1: "Cheeseburger from McDonalds",
  option_2: "Pepperoni Pizza from Papa John's",
  option_3: "Tuna sandwich from Subway",
  option_4: "None of the Above",
  correct_answer: "None of the Above",
  category_id: kosher_cat.id
  })
kosh_q7 = Question.create({
  question: "If one had a non-kosher grill and wanted to make it kosher, how would they do that?",
  option_1: "Grill cannot be made kosher, go buy a new one",
  option_2: "Blow torch the grates",
  option_3: "Flip the grates over and let the fire clean the grill",
  option_4: "Scrub down the entire grill with soap",
  correct_answer: "Blow torch the grates",
  category_id: kosher_cat.id
  })

# creating tests
sabbath = Test.create({title: "Sabbath", category_id: sabbath_hol.id})
rosh_hashana = Test.create({title: "Rosh Hashanah", category_id: rosh_hol.id})
yom_kippur = Test.create({title: "Yom Kippur", category_id: kippur_hol.id})
sukkot = Test.create({title: "Sukkot", category_id: sukkot_hol.id})
hanukkah = Test.create({title: "Hanukkah", category_id: hannuka_hol.id})
purim = Test.create({title: "Purim", category_id: purim_hol.id})
tubishvat = Test.create({title: "Tu B'shvat", category_id: tu_hol.id})
passover = Test.create({title: "Passover", category_id: passover_hol.id})
shavuot = Test.create({title: "Shavuot", category_id: shavuot_hol.id})
kosher = Test.create({title: "Kosher", category_id: kosher_cat.id})

# Assigning questions to tests
sabbath.questions = [sab_q1,sab_q2,sab_q3,sab_q4,sab_q5,sab_q6,sab_q7,sab_q8,sab_q9,sab_q10]
rosh_hashana.questions = [rosh_q1,rosh_q2,rosh_q3,rosh_q4,rosh_q5]
yom_kippur.questions = [kip_q1,kip_q2,kip_q3,kip_q4,kip_q5]
sukkot.questions = [sukkot_q1,sukkot_q2,sukkot_q3,sukkot_q4,sukkot_q5]
hanukkah.questions = [hannuka_q1,hannuka_q2,hannuka_q3,hannuka_q4,hannuka_q5]
purim.questions = [pur_q1,pur_q2,pur_q3,pur_q4,pur_q5]
passover.questions = [pass_q1,pass_q2,pass_q3,pass_q4,pass_q5,pass_q6,pass_q7,pass_q8,pass_q9,pass_q10]
shavuot.questions = [shavuot_q1,shavuot_q2,shavuot_q3,shavuot_q4,shavuot_q5]
kosher.questions = [kosh_q1,kosh_q2,kosh_q3,kosh_q4,kosh_q5,kosh_q6,kosh_q7]
