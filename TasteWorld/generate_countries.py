#!/usr/bin/env python3
countries = [
("turkey","Türkiye","🇹🇷",39.0,35.0,"kebap","Adana Kebap","Adana kebap, zırhla çekilmiş etin mangalda pişirilmesiyle yapılır.","Kıyma,Soğan,Pul biber,Kimyon,Tuz,Biber salçası,Lavaş","Kıymayı baharatlarla yoğurun|Şişe sarın|Mangalda pişirin|Lavaşla servis edin","adana-kebap"),
("italy","İtalya","🇮🇹",42.5,12.5,"pizza","Pizza Napoletana","Napoli usulü ince hamurlu pizza.","00 un,Maya,Su,Tuz,San Marzano domates,Mozzarella,Fesleğen,Zeytinyağı","Hamuru yoğurup mayalayın|İnce açın|Sos ve peynir koyun|Çok sıcak fırında pişirin","pizza-napoletana"),
("japan","Japonya","🇯🇵",36.2,138.2,"sushi","Nigiri Sushi","Sirkeli pirinç üzerine taze balık dilimi.","Sushi pirinci,Pirinç sirkesi,Şeker,Tuz,Ton balığı,Somon,Wasabi,Soya sosu","Pirinci pişirip sirke ile tatlandırın|Balığı dilimleyin|Pirinci oval şekillendirin|Balığı üstüne koyun","nigiri-sushi"),
("france","Fransa","🇫🇷",46.2,2.2,"croissant","Kruvasan","Kat kat tereyağlı hamurdan yapılan hilal şeklinde çörek.","Un,Tuz,Şeker,Maya,Süt,Tereyağı,Yumurta","Hamuru yoğurup dinlendirin|Tereyağı ile katlayın|Üçgen kesip sarın|Fırında pişirin","croissant"),
("mexico","Meksika","🇲🇽",23.6,-102.5,"tacos","Tacos al Pastor","Baharatlı etin döner gibi pişirilip tortillada sunulması.","Domuz eti,Guajillo biber,Ananas,Sarımsak,Kimyon,Tortilla,Kişniş,Soğan","Eti marine edin|Şişte veya tavada pişirin|Tortillaya sarın|Kişniş ve soğanla servis edin","tacos-al-pastor"),
("india","Hindistan","🇮🇳",20.6,78.9,"butter_chicken","Butter Chicken","Kremsi domates soslu tavuk.","Tavuk,Yoğurt,Garam masala,Zerdeçal,Tereyağı,Domates,Krema,Zencefil","Tavuğu marine edip kızartın|Soğan ve domates kavurun|Krema ekleyin|Tavuğu sosa atın","butter-chicken"),
("spain","İspanya","🇪🇸",40.4,-3.7,"paella","Paella","Safranlı pirinç ile et ve sebzelerin tavada pişirilmesi.","Pirinç,Tavuk,Fasulye,Domates,Zeytinyağı,Safran,Tavuk suyu","Eti kavurun|Sebze ve baharat ekleyin|Pirinç ve suyu ekleyin|Kısık ateşte pişirin","paella-valenciana"),
("greece","Yunanistan","🇬🇷",39.0,21.8,"moussaka","Musakka","Patlıcan, kıyma ve beşamel soslu fırın yemeği.","Patlıcan,Kuzu kıyma,Soğan,Domates,Tarçın,Beşamel sos,Yumurta,Peynir","Patlıcanları kızartın|Kıymayı kavurun|Katlar halinde dizin|Fırında pişirin","moussaka"),
("usa","ABD","🇺🇸",37.1,-95.7,"burger","Smash Burger","İnce çıtır kenarlı hamburger.","Dana kıyma,Amerikan peyniri,Brioche ekmeği,Marul,Domates,Turşu,Sos","Kıymayı tavaya bastırın|Tuz atın|Peynir koyun|Ekmeğe sarın","hamburger"),
("china","Çin","🇨🇳",35.8,104.2,"peking_duck","Pekin Ördeği","Çıtır derili fırın ördeği.","Ördek,Bal,Soya sosu,5 baharat,Çin krebi,Hoisin sos,Taze soğan","Ördeği marine edin|24 saat kurutun|Fırında pişirin|İnce dilimleyip krepte servis edin","peking-duck"),
("thailand","Tayland","🇹🇭",15.9,100.9,"pad_thai","Pad Thai","Wok'ta yapılan pirinç noodle yemeği.","Pirinç noodle,Karides,Yumurta,Balık sosu,Demirhindi,Şeker,Fasulye filizi,Fıstık","Noodle'ları ıslatın|Sosu hazırlayın|Wok'ta pişirin|Fıstık ve limonla servis edin","pad-thai"),
("brazil","Brezilya","🇧🇷",-10.0,-53.0,"feijoada","Feijoada","Siyah fasulye ve et güveci.","Siyah fasulye,Sosis,Pastırma,Kaburga,Soğan,Sarımsak,Defne yaprağı","Fasulyeleri ıslatın|Etleri kavurun|Hepsini birlikte pişirin|Pilavla servis edin","feijoada"),
("morocco","Fas","🇲🇦",31.8,-7.1,"tagine","Kuzu Tajin","Konik toprak kapta pişen et güveci.","Kuzu eti,Soğan,Sarımsak,Zerdeçal,Kimyon,Safran,Zeytin,Kişniş","Eti baharatlayın|Kavurup su ekleyin|Kısık ateşte pişirin|Kişnişle servis edin","lamb-tagine"),
("argentina","Arjantin","🇦🇷",-34.6,-64.0,"asado","Asado","Mangal ritüeli ile pişen etler.","Dana kaburga,Biftek,Sosis,Chimichurri,Kaya tuzu","Ateşi hazırlayın|Etlere tuz atın|Ağır ağır pişirin|Chimichurri ile servis edin","asado"),
("south_korea","Güney Kore","🇰🇷",35.9,127.8,"bibimbap","Bibimbap","Pirinç üzerine sebze, et ve yumurta.","Pirinç,Sığır eti,Ispanak,Havuç,Kabak,Mantarı,Yumurta,Gochujang","Sebzeleri ayrı ayrı soteleyin|Eti pişirin|Yumurtayı kızartın|Hepsini kasede karıştırın","bibimbap"),
("peru","Peru","🇵🇪",-9.2,-75.0,"ceviche","Ceviche","Limon suyunda pişen çiğ balık.","Beyaz balık,Misket limonu,Mor soğan,Acı biber,Kişniş,Tatlı patates","Balığı küp kesin|Limon suyuna yatırın|3-5 dk bekletin|Soğan ve kişnişle servis edin","ceviche"),
("germany","Almanya","🇩🇪",51.2,10.5,"bratwurst","Bratwurst","Izgarada pişen Alman sosisi.","Bratwurst,Ekmek,Hardal,Sauerkraut,Soğan,Bira","Sosisleri ızgaralayın|Soğanları karamelize edin|Ekmeğe koyun|Hardal sıkın","bratwurst"),
("portugal","Portekiz","🇵🇹",39.4,-8.2,"bacalhau","Bacalhau à Brás","Tuzlu morina, yumurta ve patates.","Morina balığı,Soğan,Sarımsak,Patates,Yumurta,Zeytin,Maydanoz","Balığı tuzdan arındırın|Patatesleri kızartın|Soğanla kavurun|Yumurta ekleyip karıştırın","bacalhau-a-bras"),
("vietnam","Vietnam","🇻🇳",14.1,108.3,"pho","Phở Bò","Uzun süre kaynatılan et suyuyla yapılan noodle çorbası.","Sığır kemiği,Döş eti,Pirinç noodle,Yıldız anason,Tarçın,Zencefil,Balık sosu","Kemikleri saatlerce kaynatın|Baharatları ekleyin|Noodle'ları haşlayın|Kaynar suyu kasenin üzerine dökün","pho"),
("lebanon","Lübnan","🇱🇧",33.9,35.5,"hummus","Humus","Nohut ve tahin ezmesi.","Nohut,Tahin,Limon,Sarımsak,Tuz,Zeytinyağı,Kırmızı biber","Nohutları haşlayın|Kabuklarını soyun|Robottan geçirin|Tahin ve limon ekleyin","hummus"),
("united_kingdom","Birleşik Krallık","🇬🇧",53.0,-2.0,"fish_chips","Fish and Chips","Bira hamuruyla kızartılmış balık ve patates.","Morina balığı,Un,Bira,Patates,Tuz,Sirke","Patatesleri kızartın|Hamuru hazırlayın|Balığı kaplama yapıp kızartın|Sirkeyle servis edin","fish-and-chips"),
("egypt","Mısır","🇪🇬",26.8,30.8,"koshary","Kuşari","Makarna, pirinç ve mercimek karışımı.","Mercimek,Pirinç,Makarna,Nohut,Domates sosu,Soğan","Malzemeleri ayrı ayrı pişirin|Domates sosu yapın|Soğanları kızartın|Üst üste koyup sos gezdirin","koshari"),
("canada","Kanada","🇨🇦",56.1,-106.3,"poutine","Poutine","Patates kızartması, peynir ve et sosu.","Patates,Peynir parçaları,Et sosu (gravy),Tuz","Patatesleri kızartın|Üzerine peynir koyun|Kaynar et sosunu dökün|Hemen yiyin","poutine"),
("russia","Rusya","🇷🇺",61.5,105.3,"borscht","Borş Çorbası","Pancarlı geleneksel çorba.","Pancar,Lahana,Patates,Havuç,Soğan,Et suyu,Ekşi krema","Sebzeleri doğrayın|Et suyunda pişirin|Pancarı rendeleyip ekleyin|Ekşi krema ile servis edin","borscht"),
("australia","Avustralya","🇦🇺",-25.3,133.8,"meat_pie","Meat Pie","Kıymalı börek tarzı turta.","Kıyma,Soğan,Et suyu,Un,Tereyağı,Yumurta","Kıymayı kavurun|Hamuru hazırlayın|İçini doldurun|Fırında pişirin","meat-pie"),
("sweden","İsveç","🇸🇪",60.1,18.6,"kottbullar","Köttbullar","İsveç usulü küçük köfteler.","Kıyma,Ekmek kırıntısı,Süt,Soğan,Yumurta,Krema,Lingonberry reçeli","Köfte harcını hazırlayın|Yuvarlayın|Tavada kızartın|Kremalı sos ve reçelle servis edin","kottbullar"),
("ethiopia","Etiyopya","🇪🇹",9.1,40.5,"injera","Injera ve Doro Wot","Ekşi lavaş üzerinde baharatlı tavuk yahnisi.","Teff unu,Su,Tavuk,Soğan,Berbere baharatı,Yumurta","Teff hamurundan injera pişirin|Soğanları kavurun|Berbere ile tavuğu pişirin|İnjera üzerinde servis edin","injera"),
("colombia","Kolombiya","🇨🇴",4.6,-74.3,"bandeja_paisa","Bandeja Paisa","Dev tabakta karışık öğün.","Kırmızı fasulye,Pirinç,Kıyma,Muz,Yumurta,Arepa,Avokado","Fasulyeleri pişirin|Kıymayı kavurun|Muzu kızartın|Hepsini tabağa dizin","bandeja-paisa"),
("nigeria","Nijerya","🇳🇬",9.1,8.7,"jollof","Jollof Pirinç","Domatesli baharatlı pilav.","Pirinç,Domates,Biber,Soğan,Tavuk suyu,Kekik,Defne","Domates sosunu hazırlayın|Pirinci ekleyin|Kısık ateşte pişirin|Kızarmış muzla servis edin","jollof-rice"),
("south_africa","Güney Afrika","🇿🇦",-30.6,22.9,"bobotie","Bobotie","Baharatlı kıyma üzerine yumurtalı krema.","Kıyma,Soğan,Sarımsak,Köri tozu,Kayısı reçeli,Süt,Yumurta,Defne","Kıymayı kavurup baharatlayın|Fırın kabına koyun|Yumurta-süt karışımını dökün|Fırında pişirin","bobotie"),
("indonesia","Endonezya","🇮🇩",-0.8,113.9,"nasi_goreng","Nasi Goreng","Endonezya usulü kızarmış pilav.","Pirinç,Tavuk,Karides,Soya sosu,Sarımsak,Acı biber,Yumurta,Krupuk","Pirinçi bir gece bekletin|Wok'ta baharatlarla kavurun|Soya sosu ekleyin|Sahanda yumurta ve krupukla servis edin","nasi-goreng"),
("malaysia","Malezya","🇲🇾",4.2,101.9,"nasi_lemak","Nasi Lemak","Hindistancevizi sütlü pilav.","Pirinç,Hindistancevizi sütü,Acı sambal,Ançüez,Fıstık,Yumurta,Salatalık","Pirinci hindistancevizi sütüyle pişirin|Sambal yapın|Ançüezleri kızartın|Hepsini muz yaprağında servis edin","nasi-lemak"),
("philippines","Filipinler","🇵🇭",12.9,121.8,"adobo","Adobo","Sirkeli soya soslu et yahnisi.","Tavuk veya domuz,Soya sosu,Sirke,Sarımsak,Defne yaprağı,Karabiber","Eti marine edin|Kavurun|Sos ve sirkeyle pişirin|Pilavla servis edin","adobo"),
("iran","İran","🇮🇷",32.4,53.7,"chelo_kebab","Çelo Kebap","Safranlı pirinç ile kuzu kebap.","Kuzu kıyma,Soğan,Safran,Tereyağı,Basmati pirinci,Sumak,Domates","Kıymayı şişe geçirin|Mangalda pişirin|Safranlı pilav yapın|Sumak ve domatesle servis edin","chelow-kabab"),
("pakistan","Pakistan","🇵🇰",30.4,69.3,"biryani","Biryani","Baharatlı katmanlı pilav.","Basmati pirinci,Kuzu eti,Yoğurt,Soğan,Safran,Garam masala,Yeşilbiber","Eti marine edin|Pirinci yarı pişirin|Katlar halinde tencereye dizin|Dum usulü ağır ateşte pişirin","biryani"),
("bangladesh","Bangladeş","🇧🇩",23.7,90.4,"hilsa","Hilsa Balığı","Hardal soslu pişmiş ılısa balığı.","Ilısa balığı,Hardal tohumu,Zerdeçal,Yeşilbiber,Hardal yağı","Balığı zerdeçallamarinedin|Hardal ezmesi yapın|Balığı sosla pişirin|Pilavla servis edin","shorshe-ilish"),
("nepal","Nepal","🇳🇵",28.4,84.1,"momo","Momo","Buharda pişen mantı.","Kıyma,Soğan,Sarımsak,Zencefil,Kişniş,Hamur,Soya sosu","Hamuru açıp daire kesin|İçini koyun|Kıvırarak kapatın|Buharda pişirin","momo"),
("sri_lanka","Sri Lanka","🇱🇰",7.9,80.8,"rice_curry","Rice and Curry","Pirinç ile çeşitli köriler.","Pirinç,Hindistancevizi sütü,Köri yaprakları,Zerdeçal,Mercimek,Sebzeler","Pirinçi pişirin|Dhal yapın|Sebze körileri hazırlayın|Hepsini tabağa dizin","rice-and-curry"),
("myanmar","Myanmar","🇲🇲",19.7,96.1,"mohinga","Mohinga","Balık suyuyla yapılan noodle çorbası.","Balık,Pirinç noodle,Soğan,Zencefil,Zerdeçal,Limon otu,Nohut unu","Balık suyunu kaynatın|Baharatları ekleyin|Nohut unuyla koyulaştırın|Noodle üzerine dökün","mohinga"),
("cuba","Küba","🇨🇺",21.5,-77.8,"ropa_vieja","Ropa Vieja","Didiklenmiş et yahnisi.","Flank biftek,Biber,Soğan,Domates,Sarımsak,Kimyon,Defne","Eti haşlayıp didikleyin|Sebzeleri kavurun|Eti ve sosu birleştirin|Pilavla servis edin","ropa-vieja"),
("jamaica","Jamaika","🇯🇲",18.1,-77.3,"jerk_chicken","Jerk Tavuk","Acı baharatlı ızgara tavuk.","Tavuk,Scotch bonnet biber,Yenibahar,Kekik,Sarımsak,Zencefil,Soya sosu","Jerk sosunu hazırlayın|Tavuğu marine edin|Izgarada yavaş pişirin|Pilavla servis edin","jerk-chicken"),
("dominican","Dominik Cumhuriyeti","🇩🇴",18.7,-70.2,"la_bandera","La Bandera","Pilav, fasulye ve et.","Pirinç,Kırmızı fasulye,Tavuk,Salata,Muz","Pilavı pişirin|Fasulye yahnisi yapın|Tavuğu pişirin|Tabağa dizin","la-bandera-dominicana"),
("venezuela","Venezuela","🇻🇪",6.4,-66.6,"arepa","Arepa","Mısır unundan yapılan sandviç.","Mısır unu,Su,Tuz,Peynir,Avokado,Siyah fasulye,Et","Hamuru yoğurup yassılaştırın|Tavada veya fırında pişirin|Ortadan kesin|İç malzeme ile doldurun","arepa"),
("chile","Şili","🇨🇱",-35.7,-71.5,"empanada","Empanada","Fırında pişen içi dolgulu hamur.","Un,Tereyağı,Kıyma,Soğan,Zeytin,Yumurta,Kimyon","Hamuru hazırlayın|İç harcı kavurun|Hamuru doldurup kapatın|Fırında pişirin","empanada"),
("ecuador","Ekvador","🇪🇨",-1.8,-78.2,"encebollado","Encebollado","Ton balıklı soğanlı çorba.","Ton balığı,Soğan,Domates,Manyok,Limon,Kişniş,Kimyon","Balık suyunu kaynatın|Manyoku ekleyin|Soğan ve domatesi kavurun|Limonla servis edin","encebollado"),
("bolivia","Bolivya","🇧🇴",-16.3,-63.6,"saltenya","Salteña","Jöleli sulu börek.","Un,Tereyağı,Kıyma,Patates,Bezelye,Yumurta,Jelatin","Hamuru hazırlayın|Soslu iç harcı yapın|Doldurup şekil verin|Fırında pişirin","saltena"),
("uruguay","Uruguay","🇺🇾",-32.5,-55.8,"chivito","Chivito","Dev biftek sandviçi.","Biftek,Jambon,Peynir,Yumurta,Marul,Domates,Zeytin,Mayonez","Bifteği ızgaralayın|Ekmeği ısıtın|Malzemeleri katlar halinde dizin|Mayonezle servis edin","chivito"),
("paraguay","Paraguay","🇵🇾",-23.4,-58.4,"sopa_paraguaya","Sopa Paraguaya","Misir unu ve peynirli kek.","Mısır unu,Peynir,Soğan,Yumurta,Süt,Tereyağı","Soğanları kavurun|Tüm malzemeleri karıştırın|Kalıba dökün|Fırında pişirin","sopa-paraguaya"),
("costa_rica","Kosta Rika","🇨🇷",10.0,-84.0,"gallo_pinto","Gallo Pinto","Pirinç ve fasulye karışımı.","Pirinç,Siyah fasulye,Soğan,Biber,Kişniş,Salsa Lizano","Pirinç ve fasulyeleri önceden pişirin|Soğan ve biberi kavurun|Hepsini karıştırın|Salsa ile servis edin","gallo-pinto"),
("panama","Panama","🇵🇦",8.5,-80.8,"sancocho","Sancocho","Tavuklu sebze çorbası.","Tavuk,Manyok,Mısır,Soğan,Sarımsak,Kişniş,Oregano","Tavuğu haşlayın|Sebzeleri ekleyin|Baharatları atın|Uzun süre pişirip servis edin","sancocho"),
("iceland","İzlanda","🇮🇸",64.9,-19.0,"plokkfiskur","Plokkfiskur","Balık ve patates püresi.","Morina balığı,Patates,Soğan,Tereyağı,Süt,Karabiber","Balık ve patatesi haşlayın|Soğanı kavurun|Hepsini ezin|Çavdar ekmeğiyle servis edin","plokkfiskur"),
("ireland","İrlanda","🇮🇪",53.1,-7.7,"irish_stew","İrlanda Yahni","Kuzu eti ve patates yahnisi.","Kuzu eti,Patates,Havuç,Soğan,Et suyu,Kekik,Maydanoz","Eti mühürleyin|Sebzeleri ekleyin|Et suyunu dökün|2 saat pişirin","irish-stew"),
("netherlands","Hollanda","🇳🇱",52.1,5.3,"stamppot","Stamppot","Patates-lahana püresi.","Patates,Lahana,Sosis (Rookworst),Tereyağı,Süt,Hardal","Patates ve lahanayı haşlayın|Ezin|Tereyağı ve sütü ekleyin|Sosis ile servis edin","stamppot"),
("belgium","Belçika","🇧🇪",50.5,4.5,"moules_frites","Moules-Frites","Midye ve patates kızartması.","Midye,Beyaz şarap,Soğan,Sarımsak,Krema,Patates,Maydanoz","Midyeleri temizleyin|Şarap ve kremada pişirin|Patatesleri kızartın|Birlikte servis edin","moules-frites"),
("switzerland","İsviçre","🇨🇭",46.8,8.2,"fondue","Peynir Fondü","Erimiş peynirde ekmek daldırma.","Gruyère peyniri,Emmental peyniri,Beyaz şarap,Sarımsak,Kiraz likörü,Ekmek","Peyniri rendeleyin|Şarapla eritin|Sarımsak ve likör ekleyin|Ekmek daldırarak yiyin","cheese-fondue"),
("austria","Avusturya","🇦🇹",47.5,14.6,"schnitzel","Wiener Schnitzel","İnce döğülmüş paneli dana eti.","Dana eti,Un,Yumurta,Galeta unu,Tereyağı,Limon","Eti çok ince dövün|Unlayıp yumurtaya batırın|Galeta ununa bulayın|Tereyağında kızartın","wiener-schnitzel"),
("poland","Polonya","🇵🇱",51.9,19.1,"pierogi","Pierogi","Haşlanmış veya kızartılmış mantı.","Un,Yumurta,Patates,Peynir,Soğan,Tereyağı,Ekşi krema","Hamuru açıp daire kesin|Patates-peynir harcı koyun|Kapatıp haşlayın|Tereyağında kızartıp servis edin","pierogi"),
("czech","Çekya","🇨🇿",49.8,15.5,"svickova","Svíčková","Kremalı soslu biftek.","Biftek,Havuç,Kereviz,Soğan,Krema,Brusnika,Knödel","Sebzeleri kavurup sos yapın|Eti fırında pişirin|Sosu süzüp krema ekleyin|Knödel ile servis edin","svickova"),
("hungary","Macaristan","🇭🇺",47.2,19.5,"goulash","Gulaş","Kırmızı biberli et yahnisi.","Dana eti,Soğan,Kırmızı biber,Domates,Patates,Kimyon,Et suyu","Soğanları kavurun|Kırmızı biberi ekleyin|Eti atıp mühürleyin|Et suyu ile uzun uzun pişirin","goulash"),
("romania","Romanya","🇷🇴",45.9,24.9,"sarmale","Sarma","Lahana yaprağında kıymalı pirinç sarması.","Lahana,Kıyma,Pirinç,Soğan,Domates,Kekik,Demirhindi","Lahanaları turşu yapın|İç harcı hazırlayın|Sarın|Fırında uzun süre pişirin","sarmale"),
("bulgaria","Bulgaristan","🇧🇬",42.7,25.5,"shopska","Shopska Salatası","Domates, biber ve beyaz peynir salatası.","Domates,Salatalık,Biber,Soğan,Beyaz peynir,Zeytinyağı,Sirke","Sebzeleri doğrayın|Tabağa dizin|Peyniri rendeleyip serpin|Zeytinyağı gezdirin","shopska-salad"),
("serbia","Sırbistan","🇷🇸",44.0,21.0,"cevapi","Çevapi","Izgara köfte.","Kıyma (karışık),Soğan,Sarımsak,Tuz,Karabiber,Somun ekmek,Kajmak","Kıymayı baharatlayıp yoğurun|Parmak şekli verin|Izgarada pişirin|Somun ve kajmakla servis edin","cevapi"),
("croatia","Hırvatistan","🇭🇷",45.1,15.2,"crni_rizot","Siyah Risotto","Mürekkep balıklı risotto.","Arborio pirinci,Mürekkep balığı,Soğan,Beyaz şarap,Balık suyu,Parmesan","Mürekkep torbasını ayırın|Pirinci kavurun|Şarap ve suyu ekleyin|Mürekkebi sona ekleyin","crni-rizot"),
("bosnia","Bosna-Hersek","🇧🇦",43.9,17.7,"burek","Börek","Yufka arası et veya peynir.","Yufka,Kıyma veya peynir,Soğan,Yağ,Yoğurt","Yufkayı açın|İç harcı yayın|Sarıp tepside dizin|Fırında pişirin","burek"),
("albania","Arnavutluk","🇦🇱",41.2,20.2,"tavekosi","Tavë Kosi","Yoğurtlu fırın tavuk.","Tavuk,Yoğurt,Yumurta,Un,Tereyağı,Pirinç,Sarımsak","Tavuğu kızartın|Pirinci pişirin|Yoğurt-yumurta sosunu hazırlayın|Fırında pişirin","tave-kosi"),
("georgia_country","Gürcistan","🇬🇪",42.3,43.4,"khachapuri","Haçapuri","Peynirli kayık şeklinde pide.","Un,Yoğurt,Yumurta,Sülügüni peyniri,Tereyağı,Tuz","Hamuru yoğurun|Kayık şeklinde açın|Peyniri doldurun|Fırında pişirip yumurta ve tereyağı ekleyin","khachapuri"),
("armenia","Ermenistan","🇦🇲",40.1,45.0,"lahmacun","Lahmacun","İnce hamur üzeri kıymalı pide.","İnce hamur,Kıyma,Soğan,Domates,Biber,Maydanoz,Pul biber","Hamuru ince açın|Kıyma harcını yayın|Fırında pişirin|Limon sıkıp sararak yiyin","lahmajun"),
("azerbaijan","Azerbaycan","🇦🇿",40.1,47.6,"plov","Pilav (Plov)","Safranlı etli pilav.","Basmati pirinci,Kuzu eti,Safran,Soğan,Kuru meyve,Tereyağı,Kestane","Pirinci ıslatın|Eti kavurun|Pirinci safranlı suda pişirin|Kuru meyve ile servis edin","azerbaijani-plov"),
("uzbekistan","Özbekistan","🇺🇿",41.4,64.6,"plov_uz","Özbek Pilavı","Büyük kazanda yapılan etli pilav.","Pirinç,Kuzu eti,Havuç,Soğan,Kimyon,Sarımsak,Nohut","Eti kavurun|Havuç ve soğanı ekleyin|Pirinci üstüne dökün|Kapalı kazanda pişirin","uzbek-plov"),
("kazakhstan","Kazakistan","🇰🇿",48.0,68.0,"beshbarmak","Beşbarmak","Haşlama et ve yufka.","Kuzu veya at eti,Yufka,Soğan,Et suyu,Tuz,Karabiber","Eti haşlayın|Yufkaları kesin ve haşlayın|Soğanları et suyunda soteleyin|Yufka üzerinde etle servis edin","beshbarmak"),
("mongolia","Moğolistan","🇲🇳",46.9,103.8,"buuz","Buuz","Buharda pişen et mantısı.","Kıyma (koyun),Soğan,Sarımsak,Kimyon,Un,Su","Hamuru açın|Kıyma harcını koyun|Üstü açık şekilde kıvırın|Buharda pişirin","buuz"),
("saudi","Suudi Arabistan","🇸🇦",23.9,45.1,"kabsa","Kabsa","Baharatlı etli pilav.","Pirinç,Tavuk veya kuzu,Domates,Soğan,Sarımsak,Kabsa baharatı,Limon","Eti kavurun|Domates ve soğanla pişirin|Pirinci ekleyin|Kısık ateşte pişirin","kabsa"),
("uae","BAE","🇦🇪",23.4,53.8,"machboos","Machboos","Körfez usulü baharatlı pilav.","Pirinç,Tavuk,Soğan,Domates,Limon,Bezar baharatı,Gül suyu","Tavuğu baharatlı suda haşlayın|Soğan ve domatesi kavurun|Pirinci ekleyin|Tavukla servis edin","machboos"),
("jordan","Ürdün","🇯🇴",30.6,36.2,"mansaf","Mansaf","Yoğurtlu kuzu pilavı.","Kuzu eti,Jameed yoğurdu,Pirinç,Badem,Çam fıstığı,Baharat","Kuzu etini jameed sosunda pişirin|Pirinci pişirin|Pilavı tabağa yayın|Eti ve sosu dökün","mansaf"),
("iraq","Irak","🇮🇶",33.2,43.7,"masgouf","Masgouf","Açık ateşte pişen balık.","Sazan balığı,Domates,Soğan,Limon,Zerdeçal,Tamarind","Balığı ikiye ayırın|Şişlere takın|Odun ateşinde pişirin|Domates ve soğanla servis edin","masgouf"),
("syria","Suriye","🇸🇾",34.8,38.9,"kibbeh","Kibbe","İçli köfte.","Bulgur,Kıyma,Soğan,Çam fıstığı,Baharat,Kızartma yağı","Dış harcı hazırlayın|İç harcı kavurun|Şekil verip doldurun|Kızgın yağda kızartın","kibbeh"),
("israel","İsrail","🇮🇱",31.0,34.9,"falafel","Falafel","Nohut köftesi.","Nohut,Maydanoz,Kişniş,Soğan,Sarımsak,Kimyon,Un","Nohutları ıslatın|Robottan geçirin|Baharatları ekleyin|Yuvarlayıp kızartın","falafel"),
("tunisia","Tunus","🇹🇳",33.9,9.5,"couscous_tn","Kuskus","Buharda pişen irmik ile et ve sebze.","Kuskus,Kuzu eti,Kabak,Havuç,Nohut,Harissa,Domates","Eti ve sebzeleri pişirin|Kuskusu buharda kabartin|Harissa sosu hazırlayın|Üzerine et suyunu dökün","couscous"),
("algeria","Cezayir","🇩🇿",28.0,1.7,"chakhchoukha","Chakhchoukha","Parçalanmış ekmek ve et sosu.","Ekmek,Kuzu eti,Soğan,Nohut,Domates,Baharat,Tereyağı","Ekmeği parçalayın|Et yahnisi yapın|Ekmek parçalarını buharda ısıtın|Yahninin suyunu dökün","chakhchoukha"),
("ghana","Gana","🇬🇭",7.9,-1.0,"fufu","Fufu","Dövülmüş manyok ile çorba.","Manyok,Muz,Keçi eti,Domates,Biber,Soğan","Manyok ve muzu haşlayıp dövün|Et çorbasını yapın|Fufu topları şekillendirin|Çorbaya daldırarak yiyin","fufu"),
("senegal","Senegal","🇸🇳",14.5,-14.5,"thieboudienne","Thiéboudienne","Balıklı sebzeli pilav.","Pirinç,Balık,Domates,Patlıcan,Lahana,Havuç,Tamarind","Balığı marine edin|Sebzeleri pişirin|Pirinci et suyunda pişirin|Balık ve sebzelerle servis edin","thieboudienne"),
("kenya","Kenya","🇰🇪",-0.0,37.9,"nyama_choma","Nyama Choma","Izgara et.","Keçi eti,Tuz,Limon,Biber,Kachumbari salatası","Eti tuzlayın|Kömür ateşinde yavaş pişirin|Kachumbari salatası yapın|Ugali ile servis edin","nyama-choma"),
("tanzania","Tanzanya","🇹🇿",-6.4,34.9,"ugali","Ugali ve Nyama","Mısır unu lapası ile et.","Mısır unu,Su,Et,Domates,Soğan,Biber","Suyu kaynatın|Mısır ununu ekleyip karıştırın|Koyulaşana kadar pişirin|Yahni ile servis edin","ugali"),
("morocco2","Madagaskar","🇲🇬",-18.8,46.9,"romazava","Romazava","Yeşil yapraklı et çorbası.","Dana eti,Ispanak,Domates,Soğan,Zencefil,Sarımsak","Eti kavurun|Domates ve soğanı ekleyin|Ispanağı atın|Pilavla servis edin","romazava"),
("new_zealand","Yeni Zelanda","🇳🇿",-40.9,174.9,"hangi","Hangi","Toprak altında pişen et ve sebze.","Kuzu, tavuk,Patates,Kabak,Lahana,Kumara","Taşları ısıtın|Çukura koyun|Et ve sebzeleri yerleştirin|Toprakla örtüp saatlerce pişirin","hangi"),
("fiji","Fiji","🇫🇯",-17.7,178.0,"kokoda","Kokoda","Hindistancevizi sütünde marine balık.","Beyaz balık,Limon,Hindistancevizi sütü,Domates,Soğan,Biber","Balığı küp kesin|Limon suyuna yatırın|Hindistancevizi sütünü ekleyin|Sebzelerle karıştırıp servis edin","kokoda"),
("jamaica2","Haiti","🇭🇹",19.0,-72.4,"griot","Griot","Kızarmış domuz eti.","Domuz eti,Portakal suyu,Limon,Biber,Sarımsak,Soğan","Eti marine edin|Haşlayın|Kızgın yağda çıtır kızartın|Pikliz ve pilavla servis edin","griot"),
("denmark","Danimarka","🇩🇰",56.3,9.5,"smorrebrod","Smørrebrød","Üstü açık sandviç.","Çavdar ekmeği,Tereyağı,Ringa balığı,Karides,Yumurta,Dereotu","Ekmeği tereyağlayın|Üzerine balık veya karides dizin|Garnitür ekleyin|Dereotu ile süsleyin","smorrebrod"),
("norway","Norveç","🇳🇴",60.5,8.5,"lutefisk","Rakfisk","Fermente alabalık.","Alabalık,Tuz,Ekşi krema,Soğan,Lefse (patates ekmeği),Tereyağı","Balığı aylarca fermente edin|İnce dilimleyin|Lefse üzerine koyun|Ekşi krema ve soğanla yiyin","rakfisk"),
("finland","Finlandiya","🇫🇮",61.9,25.7,"kalakukko","Kalakukko","Balık dolgulu ekmek.","Çavdar unu,Muikku balığı,Domuz pastırması,Tereyağı,Tuz","Çavdar hamuru yapın|Balık ve pastırmayı doldurun|Kapatın|Düşük ısıda saatlerce fırınlayın","kalakukko"),
("singapore","Singapur","🇸🇬",1.4,103.8,"laksa","Laksa","Hindistancevizi sütlü baharatlı noodle çorbası.","Pirinç noodle,Karides,Hindistancevizi sütü,Laksa macunu,Tofu,Fasulye filizi","Laksa macununu kavurun|Hindistancevizi sütünü ekleyin|Noodle ve karidesleri koyun|Garnish ile servis edin","laksa"),
("taiwan","Tayvan","🇹🇼",23.7,121.0,"beef_noodle","Dana Etli Noodle Çorbası","Uzun haşlanmış dana etli noodle.","Dana but,Domates,Soya sosu,Yıldız anason,Biber,Noodle,Bok choy","Dana etini mühürleyin|Baharat ve soya sosuyla kaynatın|2-3 saat pişirin|Noodle ile servis edin","taiwanese-beef-noodle-soup"),
("hong_kong","Hong Kong","🇭🇰",22.3,114.2,"dim_sum","Dim Sum","Bambu sepette buharda pişen atıştırmalıklar.","Un,Karides,Domuz kıyma,Soya sosu,Susam yağı,Zencefil","Hamurları açıp doldurun|Çeşitli şekiller verin|Bambu sepette buharda pişirin|Soya sosuyla servis edin","dim-sum"),
("cambodia","Kamboçya","🇰🇭",12.6,104.9,"amok","Fish Amok","Hindistancevizi sütlü buharda balık.","Beyaz balık,Hindistancevizi sütü,Kroeung macunu,Yumurta,Balık sosu","Kroeung macununu hazırlayın|Balık ve hindistancevizi sütüyle karıştırın|Muz yaprağına koyun|Buharda pişirin","fish-amok"),
("laos","Laos","🇱🇦",19.9,102.5,"larb","Larb","Kıymalı baharatlı salata.","Kıyma (tavuk),Limon suyu,Balık sosu,Nane,Kişniş,Acı biber,Pirinç tozu","Kıymayı pişirin|Limon ve balık sosu ekleyin|Nane ve kişniş atın|Marul yapraklarıyla servis edin","larb"),
("portugal2","Portekiz","🇵🇹",38.7,-9.1,"pastel_nata","Pastel de Nata","Kremali milföy tart.","Milföy,Yumurta sarısı,Şeker,Süt,Un,Vanilya,Tarçın","Kremasını pişirin|Milföyü tart kalıplarına yerleştirin|Kremayı doldurun|Çok sıcak fırında pişirin","pastel-de-nata"),
("scotland","İskoçya","🏴󠁧󠁢󠁳󠁣󠁴󠁿",56.5,-4.2,"haggis","Haggis","Kuzu iç organları ile yulaf.","Kuzu ciğeri,Kuzu yüreği,Yulaf,Soğan,İç yağı,Baharat","İç organları haşlayın|Yulaf ve baharatlarla karıştırın|İşkembeye doldurun|2 saat haşlayın","haggis"),
("wales","Galler","🏴󠁧󠁢󠁷󠁬󠁳󠁿",52.1,-3.8,"cawl","Cawl","Kuzu ve sebze çorbası.","Kuzu boyun,Patates,Havuç,Pırasa,Şalgam,Maydanoz","Kuzu etini haşlayın|Sebzeleri ekleyin|Saatlerce pişirin|Peynirli ekmekle servis edin","cawl"),
("trinidad","Trinidad ve Tobago","🇹🇹",10.7,-61.2,"doubles","Doubles","Nohutlu sandviç.","Nohut,Un,Maya,Zerdeçal,Kimyon,Acı sos","Nohut körisini pişirin|Bara hamurlarını kızartın|İki bara arasına nohut koyun|Acı sosla servis edin","doubles"),
("Cuba2","Guatemala","🇬🇹",15.8,-90.2,"pepian","Pepián","Baharatlı et güveci.","Tavuk,Kabak tohumu,Susam,Domates,Biber,Tortilla","Tohumları kavurun|Sos için robottan geçirin|Tavuğu sosla pişirin|Pilavla servis edin","pepian"),
("honduras","Honduras","🇭🇳",15.2,-86.2,"baleada","Baleada","Un tortillası ile fasulye.","Un tortillası,Kızarmış fasulye,Peynir,Ekşi krema,Avokado","Tortillayı ısıtın|Fasulye yayın|Peynir ve krema ekleyin|İkiye katlayıp servis edin","baleadas"),
]

header = "import Foundation\n\nlet allCountries: [Country] = [\n"
footer = "\n]\n"

def gen(c):
    cid,name,flag,lat,lon,did,dname,desc,ing_str,steps_str,url = c
    ings = ing_str.split(",")
    steps = steps_str.split("|")
    ing_lines = ', '.join(f'"{i.strip()}"' for i in ings)
    step_lines = ',\n                '.join(f'"{s.strip()}"' for s in steps)
    return f'''    Country(
        id: "{cid}",
        name: "{name}",
        flag: "{flag}",
        latitude: {lat},
        longitude: {lon},
        famousDish: Dish(
            id: "{did}",
            name: "{dname}",
            imageURL: "https://www.tasteatlas.com/images/dishes/{did}.jpg",
            description: "{desc}",
            ingredients: [{ing_lines}],
            steps: [
                {step_lines}
            ],
            tasteAtlasURL: "https://www.tasteatlas.com/{url}"
        )
    )'''

with open("Models/CountryData.swift", "w") as f:
    f.write(header)
    entries = []
    for c in countries:
        entries.append(gen(c))
    f.write(",\n".join(entries))
    f.write(footer)

print(f"Generated {len(countries)} countries")
