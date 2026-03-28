import Foundation

let allCountries: [Country] = [
    Country(
        id: "turkey",
        name: "Türkiye",
        flag: "🇹🇷",
        latitude: 39.0,
        longitude: 35.0,
        famousDish: Dish(
            id: "iskender_kebap",
            name: "İskender Kebap",
            imageURL: "",
            description: "Bursa yöresinin tereyağlı, domates soslu ince döner kebabı.",
            ingredients: ["500 g İnce dilimlenmiş dana eti (Dönerlik)", "2 adet Tırnak pidesi", "100 g Tereyağı", "200 g Süzme yoğurt", "2 yemek kaşığı Domates salçası", "1 yemek kaşığı Sıvı yağ", "1 su bardağı Sıcak su", "Közlenmiş sivri biber ve domates", "Tuz ve karabiber"],
            steps: ["Tırnak pidelerini küçük küpler halinde doğrayın ve geniş servis tabağının tabanına düzgünce yayarak dizin.", "Domates salçasını küçük bir tencereye alıp içine 1 su bardağı sıcak su ve bir tutam tuz ekleyin, kısık ateşte 5 dakika kaynatarak kıvamlı bir sos elde edin.", "İnce dilimlenmiş dana etlerini (dönerlik) geniş bir tavada 1 yemek kaşığı sıvı yağ ile yüksek ateşte, her iki tarafını 2 dakika süreyle çevirerek hızlıca kavurun. Tuz ve karabiber ekleyin.", "Hazırladığınız sıcak domates sosunun yarısını pide küplerinin üzerine eşit şekilde gezdirin, etleri soslanmış pidelerin üzerine düzgünce yerleştirin.", "Kalan domates sosunu etlerin üzerine gezdirdikten sonra tabağın bir kenarına 2-3 kaşık süzme yoğurt ekleyin.", "Küçük bir cezvede 100 g tereyağını eriterek köpürüp kızarana dek ısıtın ve bu kızgın yağı 'cız' sesi çıkaracak şekilde doğrudan etlerin ve pidenin üzerine gezdirin. Yanında közlenmiş sivri biber ve domates ile servis edin."]
        )
    ),
    Country(
        id: "italy",
        name: "İtalya",
        flag: "🇮🇹",
        latitude: 42.5,
        longitude: 12.5,
        famousDish: Dish(
            id: "pizza",
            name: "Pizza Napoletana",
            imageURL: "",
            description: "Napoli usulü ince hamurlu pizza.",
            ingredients: ["300 g 00 tipi pizza unu","200 ml ılık su","7 g kuru maya","10 g tuz","200 g San Marzano domates (ezilmiş)","200 g taze manda mozzarellası","6-8 yaprak taze fesleğen","2 yemek kaşığı sızma zeytinyağı"],
            steps: [
                "Un, su, maya ve tuzu geniş bir kapta birleştirip pürüzsüz ve elastik olana kadar 10 dakika boyunca yoğurun. Hamur nemli ve hafif yapışkan olmalıdır.","Hamuru nemli bir bezle örtüp oda sıcaklığında (22-24°C) en az 8 saat, ideal olarak 24 saat mayalanmaya bırakın.","Mayalanan hamuru unlü tezgâhta 250 g'lık bezelere ayırın. Her bezeyi alt tarafını katlayarak gergin bir top haline getirin ve üstü kapalı 2 saat daha dinlendirin.","Hamuru sadece parmaklarınızla, ortadan dışa doğru iterek 25-30 cm çapında açın. Kenarları biraz kalın bırakarak cornicione (kenar) oluşturun. Oklava kesinlikle kullanmayın.","Ezilmiş San Marzano domateslerini bir tutam tuzla hamur tabanına spiral şekilde kaşıkla yayın. Mozzarellayı elle parçalayarak üzerine dağıtın.","Fırını en yüksek dereceye (250°C+) önceden ısıtın. Pizzayı kürekle fırına sürün ve kenarları kabarana ve tabanda kahverengi lekeler oluşana kadar 5-7 dakika pişirin. Çıkarınca taze fesleğen yapın ve bir iplik zeytinyağı gezdirin."
            ],
        )
    ),
    Country(
        id: "japan",
        name: "Japonya",
        flag: "🇯🇵",
        latitude: 36.2,
        longitude: 138.2,
        famousDish: Dish(
            id: "sushi",
            name: "Nigiri Sushi",
            imageURL: "",
            description: "Sirkeli pirinç üzerine taze balık dilimi.",
            ingredients: ["300 g kısa taneli sushi pirinci","60 ml pirinç sirkesi","2 yemek kaşığı toz şeker","1 çay kaşığı tuz","150 g sashimi kalitesinde taze ton balığı","150 g sashimi kalitesinde taze somon","1 çay kaşığı wasabi","Soya sosu ve turşu zencefil (servis için)"],
            steps: [
                "Sushi pirincini soğuk suda berraklaşana kadar 4-5 kez yıkayın. Süzüp 30 dakika dinlendirin. Eşit miktarda su ile tencerede kaynatıp 12 dakika kısık ateşte, ardından 10 dakika kapak kapalı dinlendirin.","Pirinç sirkesi, şeker ve tuzu küçük tencerede ılıtıp karıştırarak eritin. Bu karışımı sıcak pirinç üzerine yelpaze ile serinleterek nazikçe karıştırın. Pirinç parlak ve yapışkan olmalıdır.","Sashimi bıçağıyla balığı liflerine 45 derecelik açıyla, tek hamleyle kesin. Her dilim yaklaşık 7 cm uzunluğunda, 3 cm genişliğinde ve 5mm kalınlığında olmalıdır.","Ellerinizi sirke-su karışımıyla (tezu) ıslatın. 20-25 g pirinci avucunuzda hafif sıkarak oval bir yastık şekli verin.","Pirinç yastığın üstüne bıçak ucuyla çok az wasabi sürün. Balık dilimini sol elinize alıp pirinci üzerine yerleştirin ve iki parmağınızla hafifçe bastırarak birleştirin.","Soya sosunu küçük bir tabağa dökün. Nigiriyi balık tarafı aşağıya gelecek şekilde soya sosuna hafifçe değdirip hemen yiyin. Turşu zencefil parçalarını arada damak temizleyici olarak tüketin."
            ],
        )
    ),
    Country(
        id: "france",
        name: "Fransa",
        flag: "🇫🇷",
        latitude: 46.2,
        longitude: 2.2,
        famousDish: Dish(
            id: "croissant",
            name: "Kruvasan",
            imageURL: "",
            description: "Kat kat tereyağlı hamurdan yapılan hilal şeklinde çörek.",
            ingredients: ["500 g güçlü ekmek unu","10 g tuz","75 g toz şeker","10 g kuru maya","300 ml soğuk süt","280 g kaliteli tereyağı (katlama için)","1 adet yumurta (üzeri için)"],
            steps: [
                "Un, tuz, şeker, maya ve soğuk sütü bir kapta birleştirip kısa süre (5 dk) yoğurun — hamur kaba olabilir. Dikdörtgen şekil verip streç filmle sararak buzdolabında bir gece (12 saat) dinlendirin.","Soğuk tereyağını fırın kâğıdı arasında oklavayla 15x15 cm kare bir tabaka haline dövün. Tereyağı katı ama bükülebilir kıvamda olmalıdır.","Hamuru dikdörtgen açıp tereyağını ortasına yerleştirin, hamuru zarf gibi dört kenardan katlayarak tereyağını tamamen sarın.","İlk tur: Hamuru 50 cm uzunlukta dikdörtgen açın, üçe katlayın (mektup katlaması). Streç filmle sarıp buzdolabında 1 saat dinlendirin. Bu işlemi toplam 3 kez tekrarlayın.","Son dinlendirmeden sonra hamuru 5mm kalınlığında açın. Tabanı 10 cm olan üçgenler kesin. Her üçgeni tabandan uca doğru sıkıca sararak kruvasan şekli verin.","Fırın tepsisine dizin. Oda sıcaklığında (sıcak yerde) hamurlar 1.5-2 katına çıkana kadar 2-3 saat mayalanmaya bırakın. Üzerlerine yumurta sarısı sürüp önceden ısıtılmış 200°C fırında altın sarısı olana ve tabana vurduğunuzda boş ses gelene kadar 15-18 dakika pişirin."
            ],
        )
    ),
    Country(
        id: "mexico",
        name: "Meksika",
        flag: "🇲🇽",
        latitude: 23.6,
        longitude: -102.5,
        famousDish: Dish(
            id: "tacos",
            name: "Tacos al Pastor",
            imageURL: "",
            description: "Baharatlı etin döner gibi pişirilip tortillada sunulması.",
            ingredients: ["1 kg kemikli domuz eti (ince dilimlenmiş)","3 adet kuru guajillo biberi","2 adet kuru ancho biberi","1/4 adet taze ananas (halka dilimlenmiş)","4 diş sarımsak","1 çay kaşığı kimyon","3 yemek kaşığı elma sirkesi","12 adet mısır tortillası","1 demet taze kişniş","1 adet orta boy soğan (doğranmış)","2 adet misket limonu"],
            steps: [
                "Kurutulmuş biberleri saplarını koparıp sıcak suda 20 dakika yumuşayana kadar ıslatın. Suyunu süzün.","Yumuşayan biberleri sarımsak, kimyon, kekik, sirke ve 100 ml ananas suyu ile blendere koyup pürüzsüz bir marine sosu oluşturun.","İnce dilimlenmiş etleri derin bir kaba alıp marine sosuyla iyice kaplayın. Üstünü streç filmle kapatıp buzdolabında en az 4 saat, ideal olarak bir gece marine edin.","Marine edilmiş eti buzdolabından çıkarıp 20 dakika oda sıcaklığına gelmesini bekleyin. Döküm tavayı veya ızgarayı çok yüksek ateşte kızdırın. Etleri kenarları karamelize olup hafif kömürleşene kadar her tarafta 2-3 dakika pişirin.","Pişen eti tahtada 3 dakika dinlendirip çok ince ince doğrayın. Ananas dilimlerini de aynı tavada her tarafı 1 dakika olmak üzere kızartın.","Mısır tortillalarını kuru tavada her iki tarafta 15 saniye ısıtın. Tortillaların üzerine doğranmış et, küp ananas, ince doğranmış soğan, kişniş yapın ve üzerine taze misket limonu sıkarak hemen servis edin."
            ],
        )
    ),
    Country(
        id: "india",
        name: "Hindistan",
        flag: "🇮🇳",
        latitude: 20.6,
        longitude: 78.9,
        famousDish: Dish(
            id: "butter_chicken",
            name: "Butter Chicken",
            imageURL: "",
            description: "Kremsi domates soslu tavuk.",
            ingredients: ["800 g kemiksiz tavuk but (küp doğranmış)","200 ml tam yağlı yoğurt","2 çay kaşığı garam masala","1 çay kaşığı zerdeçal","1 çay kaşığı kırmızı toz biber","60 g tereyağı","1 büyük soğan (ince doğranmış)","400 g konserve domates püresi","200 ml krema","2 yemek kaşığı zencefil-sarımsak ezmesi"],
            steps: [
                "Tavuk parçalarını yoğurt, garam masala, zerdeçal ve kırmızı biber ile geniş bir kasede karıştırın. Streç filmle kapatıp buzdolabında en az 2 saat, ideal olarak 6 saat marine edin.","Marine edilmiş tavukları yüksek ateşteki döküm tavada (veya fırın ızgarasında) her tarafı hafifçe yanıp karamelize olana kadar 3-4 dakika çevirerek mühürleyin. İçi çiğ kalabilir. Kenara ayırın.","Ayrı geniş bir tencerede tereyağını eritin. Soğanı yumuşayıp pembeleşene kadar orta ateşte 8 dakika kavurun. Zencefil-sarımsak ezmesini ekleyip kokusu çıkana kadar 2 dakika daha karıştırın.","Domates püresini ekleyin, kısık ateşte ara sıra karıştırarak 15-20 dakika pişirin. Domates acılığı gidip sos koyulaşmalıdır.","Sosu ateşten alıp el blenderiyle veya blenderda tamamen pürüzsüz olana kadar çekin. Tencereye geri dökün.","Pürüzsüz sosa kremayı ve 2 yemek kaşığı tereyağı daha ekleyin. Mühürlenmiş tavukları sosun içine yerleştirin. Kısık ateşte kapağı hafif aralık bırakarak 15 dakika, tavuklar tamamen pişene ve sos kıvam alana kadar pişirin. Sıcak naan ekmeği veya basmati pirinci ile servis edin."
            ],
        )
    ),
    Country(
        id: "spain",
        name: "İspanya",
        flag: "🇪🇸",
        latitude: 40.4,
        longitude: -3.7,
        famousDish: Dish(
            id: "paella",
            name: "Paella",
            imageURL: "",
            description: "Safranlı pirincin deniz ürünleri veya tavukla buluştuğu İspanyol klasiği.",
            ingredients: ["300 g Bomba veya Calasparra pirinci", "200 g Karides (kabuğuyla)", "200 g Midye (temizlenmiş)", "150 g Kalamar (halka doğranmış)", "1 çay kaşığı Safran", "1 adet Soğan", "2 diş Sarımsak", "1 adet Kırmızı biber", "100 g Bezelye", "800 ml Balık veya tavuk suyu", "2 yemek kaşığı Zeytinyağı"],
            steps: ["Geniş ve sığ bir paella tavasında zeytinyağını kızdırıp soğan ve sarımsağı 3 dakika kavurun. Kırmızı biberleri ekleyip 2 dakika daha soteleyin.", "Kalamar halkalarını tavaya ekleyip 2 dakika çevirin. Ardından pirinçleri ilave edip yağla kaplanana dek 1 dakika karıştırın.", "Safranı ılık et suyunda 5 dakika demlendirip tüm suyu tencereye dökün. Tuz ekleyip kaynatın, ateşi kısıp pirinci 15 dakika asla karıştırmadan pişirin.", "Bezelye, karides ve midyeleri pirinçlerin üzerine hafifçe bastırarak yerleştirin. 5-8 dakika daha, midyeler açılana ve pirinçler suyunu çekene dek pişirin.", "Alttan hafif bir tahta kokusu gelirse (socarrat oluşmuşsa) mükemmeldir. Ocağı kapatıp 5 dakika örtüyle dinlendirin, limon dilimleriyle servis edin."],
        )
    ),
    Country(
        id: "greece",
        name: "Yunanistan",
        flag: "🇬🇷",
        latitude: 39.0,
        longitude: 21.8,
        famousDish: Dish(
            id: "moussaka",
            name: "Moussaka",
            imageURL: "",
            description: "Kat kat patlıcan, kıyma ve beşamel sosun fırınlanmış lezzeti.",
            ingredients: ["3 adet büyük patlıcan (1 cm kalınlığında dilimlenmiş)", "500 g Dana kıyma", "1 adet Soğan (ince doğranmış)", "400 g Domates püresi", "1 çay kaşığı Tarçın", "50 g Tereyağı", "50 g Un", "500 ml Süt", "100 g Gravyer peyniri rendesi", "Zeytinyağı, tuz ve karabiber"],
            steps: ["Patlıcan dilimlerini tuzlayıp 30 dakika sulandırın, kurulayıp zeytinyağında her iki tarafı altın rengi alana dek kızartın.", "Ayrı bir tavada soğanı kavurup kıymayı ekleyin. Suyu çekene dek pişirip domates püresi, tarçın, tuz ve karabiber ilave edin. 15 dakika koyulaşana dek kaynatın.", "Beşamel sos için tereyağını eritip unu ekleyerek 2 dakika kavurun. Sütü azar azar ilave edip kıvamlı bir sos elde edene dek çırpın. Ateşten alıp peynir rendesinin yarısını karıştırın.", "Fırın kabına önce bir kat patlıcan, üzerine kıymalı harcın tamamını yayın, ardından ikinci kat patlıcanı dizin.", "En üste beşamel sosu dökün, kalan peynir rendesini serpin. Önceden ısıtılmış 180°C fırında üstü altın sarısı ve kabarcıklı olana dek 40-45 dakika pişirin. 15 dakika dinlendirdikten sonra dilimleyerek servis edin."],
        )
    ),
    Country(
        id: "usa",
        name: "ABD",
        flag: "🇺🇸",
        latitude: 37.1,
        longitude: -95.7,
        famousDish: Dish(
            id: "burger",
            name: "Smash Burger",
            imageURL: "",
            description: "Sulu dana köftesi ve erimiş peynirli Amerikan sandviçi.",
            ingredients: ["400 g %20 yağlı dana kıyma (2x200 g)","4 dilim Amerikan cheddar peyniri","2 adet brioche hamburger ekmeği","4 yaprak göbek marul","2 dilim domates","4 dilim turşu","2 yemek kaşığı mayonez","1 yemek kaşığı ketçap","1 çay kaşığı hardal","Tuz ve karabiber"],
            steps: [
                "200 g'lık kıyma toplarını çok gevşek şekilde yuvarlayın — kesinlikle sıkıştırmayın. Sadece bir top şeklinde kalması yeterli.","Döküm tavayı veya griddle'ı dumanı çıkana kadar (yaklaşık 230°C) çok kızdırın. Kıyma topunu tavaya koyup üzerine spatulayla tüm gücünüzle bastırın — et dümdüz ve çok ince olmalı.","Üzerine sadece bol tuz ve karabiber serpin, başka bir şey eklemeyin. Kenarları kahverengileşip çıtır bir kabuk oluşana kadar tam 90 saniye hiç dokunmadan pişirin.","Spatulayla altından kazıyarak çevirin. Hemen üzerine bir dilim Amerikan peyniri koyun. 60 saniye daha pişirin — peynir erimeye başlamalı.","Bu arada ekmeğin iç yüzlerine ince bir kat tereyağı sürüp ayrı bir tavada altın rengini alana kadar kızartın (yaklaşık 1 dakika).","Alt ekmeğe sos (mayonez+ketçap+hardal karışımı) sürün, marul ve domates koyun. Üzerine peynirli köfteleri yerleştirin, turşu ve soğan ekleyin. Üst ekmeği kapatıp hemen sıcak sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "china",
        name: "Çin",
        flag: "🇨🇳",
        latitude: 35.8,
        longitude: 104.2,
        famousDish: Dish(
            id: "peking_duck",
            name: "Pekin Ördeği",
            imageURL: "",
            description: "Dışı çıtır fırınlanmış ördek.",
            ingredients: ["1 bütün ördek (yaklaşık 2 kg)","3 yemek kaşığı bal","3 yemek kaşığı soya sosu","1 yemek kaşığı beş baharat tozu","12 adet ince Çin krebi (Mandarin pankek)","100 ml hoisin sos","4 dal taze yeşil soğan (jülyen)","1 adet salatalık (jülyen doğranmış)"],
            steps: [
                "Ördeği soğuk su altında iyice yıkayın. Kaynar bir tencere su hazırlayıp ördeğin üzerine kepçeyle 4-5 kez kaynar su dökün — deri gerginleşecek ve gözenekler kapanacaktır.","Bal, soya sosu ve beş baharat karışımını küçük bir kapta iyice karıştırın. Bu karışımı fırçayla ördeğin derisine her yerine eşit şekilde 2-3 kat sürün.","Ördeği bir askıya asarak veya buzdolabında ızgaranın üzerine koyarak deriyi üstü açık şekilde 24 saat tamamen kurutun. Bu adım çıtır derinin sırrıdır — atlamayın.","Fırını 200°C'ye ısıtın. Ördeği göğsü yukarı bakacak şekilde bir ızgaraya yerleştirin, altına su dolu bir tepsi koyun. İlk 30 dakika 200°C'de, ardından ısıyı 170°C'ye düşürüp 60 dakika daha, deri koyu kahverengi ve çıtır olana kadar pişirin.","Fırından çıkarıp 15 dakika dinlendirin. Çok keskin bir bıçakla önce deriyi, sonra et kısımlarını ayrı ayrı, pürüzsüz ince dilimler halinde kesin.","Çin kreplerini buharda veya mikrodalgada 30 saniye ısıtın. Her krebin ortasına bir fırça dolusu hoisin sos sürün, 2-3 dilim ördek eti, birkaç jülyen soğan ve salatalık yerleştirip sıkıca sararak hemen yiyin."
            ],
        )
    ),
    Country(
        id: "thailand",
        name: "Tayland",
        flag: "🇹🇭",
        latitude: 15.9,
        longitude: 100.9,
        famousDish: Dish(
            id: "pad_thai",
            name: "Pad Thai",
            imageURL: "",
            description: "Tayland'ın tatlı, ekşi ve tuzlu dengeli meşhur wok eriştesi.",
            ingredients: ["200 g Kuru pirinç eriştesi (şehriye)", "200 g Karides (soyulmuş)", "2 adet Yumurta", "100 g Soya filizi", "2 dal Yeşil soğan", "50 g Kıyılmış yer fıstığı", "2 yemek kaşığı Tamarind ezmesi", "2 yemek kaşığı Balık sosu", "1 yemek kaşığı Palmiye şekeri", "1 adet Misket limonu", "Kırmızı pul biber"],
            steps: ["Pirinç eriştelerini ılık suda 30 dakika ıslatıp yumuşatın, süzüp kenara alın.", "Tamarind ezmesi, balık sosu ve palmiye şekerini küçük bir kasede karıştırarak Pad Thai sosunu hazırlayın.", "Wok tavayı çok yüksek ateşte kızdırıp 1 yemek kaşığı yağ gezdirin. Karidesleri 1-2 dakika çevirip çıkarın. Yumurtaları kırıp hızla çırparak scramble yapın.", "Süzülmüş erişteleri ve hazırladığınız sosu wok'a ekleyin. Maşayla 2 dakika boyunca erişteleri havaya kaldırıp bırakarak sosu eşit emdir.", "Karidesleri geri ekleyip soya filizi ve yeşil soğanı atın. 30 saniye daha karıştırıp hemen ateşten alın.", "Tabağa alıp üzerine kıyılmış yer fıstığı, misket limonu dilimi ve isteğe göre pul biber ile servis edin."],
        )
    ),
    Country(
        id: "brazil",
        name: "Brezilya",
        flag: "🇧🇷",
        latitude: -10.0,
        longitude: -53.0,
        famousDish: Dish(
            id: "feijoada",
            name: "Feijoada",
            imageURL: "",
            description: "Siyah fasulye ve çeşitli tütsülenmiş etlerin ağır ateşte pişen doyurucu yahnisi.",
            ingredients: ["500 g Kuru siyah fasulye (bir gece ıslatılmış)", "300 g Pastırma veya kurutulmuş et", "200 g Sucuk veya sosis", "200 g Domuz veya dana kaburga", "4 diş Sarımsak", "2 adet Defne yaprağı", "1 adet Soğan", "Portakal dilimleri (servis için)", "Pirinç ve farofa (kızarmış manyok unu)"],
            steps: ["Siyah fasulyeleri bir gece bol suda ıslatın. Ertesi gün suyunu döküp taze suyla tencerenin içinde kaynatmaya alın.", "Pastırma, sosis ve kaburga parçalarını fasulyelerin içine ekleyin. Defne yaprağı ve sarımsağı da atıp kısık ateşte fasulye ve etler iyice yumuşayana dek 2-3 saat pişirin.", "Ayrı tavada ince doğranmış soğanı sarımsakla kavurup tencereye ekleyin. Tuz ve karabiberle tatlandırın.", "Geniş tabaklara pirinç pilavı ve fasulye yahnisini yan yana koyun. Üzerine farofa (kızarmış manyok unu) serpin ve portakal dilimleriyle süsleyerek servis edin."],
        )
    ),
    Country(
        id: "morocco",
        name: "Fas",
        flag: "🇲🇦",
        latitude: 31.8,
        longitude: -7.1,
        famousDish: Dish(
            id: "tagine",
            name: "Kuzu Tajin",
            imageURL: "",
            description: "Konik toprak kapta pişen et güveci.",
            ingredients: ["1 kg kuzu omuz eti (kuşbaşı)","2 büyük soğan (ince doğranmış)","4 diş sarımsak (ezilmiş)","1 çay kaşığı zerdeçal","1 çay kaşığı toz kimyon","1 çay kaşığı toz zencefil","1/2 çay kaşığı safran","2 adet tuzlu limon turşusu (dilimlenmiş)","100 g yeşil zeytin (çekirdeksiz)","1 demet taze kişniş","3 yemek kaşığı zeytinyağı"],
            steps: [
                "Kuzu parçalarını geniş bir kasede zerdeçal, kimyon, zencefil, tuz ve zeytinyağı ile iyice ovun. Üstünü kapatıp en az 1 saat oda sıcaklığında veya buzdolabında 4 saat marine edin.","Tajin kabında veya kalın tabanlı döküm tencerede zeytinyağını kızdırın. Marine edilmiş kuzu parçalarının dış yüzeylerini yüksek ateşte her tarafı kahverengileşene kadar 2-3 dakika mühürleyin.","Doğranmış soğan ve sarımsağı ekleyin, soğanlar camlaşana kadar 5 dakika kavurun.","Etlerin sadece yarısını kaplayacak kadar sıcak su ekleyin. Kaynayınca ateşi en kısığa getirip kapağı kapatın. Etler çatalla kolayca ayrılacak kadar yumuşayana dek 1.5-2 saat pişirin.","İnce dilimlenmiş limon turşusu kabuklarını ve çekirdeksiz yeşil zeytinleri ekleyin. Kapağı kapatıp 15-20 dakika daha kısık ateşte tıngırdatın.","Bol taze kişniş yaprakları serperek sıcak sıcak, yanında çıtır ekmek veya kuskus ile servis edin."
            ],
        )
    ),
    Country(
        id: "argentina",
        name: "Arjantin",
        flag: "🇦🇷",
        latitude: -34.6,
        longitude: -64.0,
        famousDish: Dish(
            id: "asado",
            name: "Asado",
            imageURL: "",
            description: "Arjantin'in meşhur mangal şöleni.",
            ingredients: ["1 kg Dana pirzola veya kaburga", "Kaba deniz tuzu", "Chimichurri sosu: 1 demet maydanoz, 4 diş sarımsak, zeytinyağı, kırmızı şarap sirkesi, kırmızı pul biber, kekik"],
            steps: ["Etleri buzdolabından en az 1 saat önce çıkarıp oda sıcaklığına gelmesini bekleyin. Sadece kaba deniz tuzu ile ovun — başka baharat eklemeyin.", "Odun kömürü ateşini hazırlayıp közler beyazlaşana dek bekleyin. Etleri ızgaraya yerleştirip her tarafta 8-10 dakika olmak üzere çok yavaş ve düşük ateşte pişirin.", "Chimichurri için maydanozu çok ince kıyın, ezilmiş sarımsak, zeytinyağı, sirke ve pul biberi karıştırarak en az 30 dakika dinlendirin.", "Etleri ızgaradan alıp 10 dakika dinlendirin, kalın dilimleyip üzerine chimichurri gezdirerek servis edin."],
        )
    ),
    Country(
        id: "south_korea",
        name: "Güney Kore",
        flag: "🇰🇷",
        latitude: 35.9,
        longitude: 127.8,
        famousDish: Dish(
            id: "bibimbap",
            name: "Bibimbap",
            imageURL: "",
            description: "Pirinç üzerine sebze, et ve yumurta.",
            ingredients: ["2 su bardağı kısa taneli pirinç (pişirilmiş)","150 g ince dilim sığır eti","100 g taze ıspanak","100 g soya filizi","1 adet havuç (jülyen)","1 adet kabak (jülyen)","4 adet shiitake mantarı (dilimlenmiş)","1 adet yumurta","3 yemek kaşığı gochujang (acı biber salçası)","2 yemek kaşığı susam yağı","1 yemek kaşığı soya sosu"],
            steps: [
                "Her sebzeyi (ıspanak, soya filizi, havuç, kabak, mantarı) ayrı ayrı küçük tavalarda 1 çay kaşığı susam yağı ve bir tutam tuzla 2-3 dakika soteleyin. Sebzeler diri ve canlı renklerini korumalıdır.","İnce dilim sığır etini soya sosu, ezilmiş sarımsak, şeker ve susam yağından oluşan marinasyonda 10 dakika bekletin. Kızgın tavada 2-3 dakika pişirin.","Ayrı bir tavada az yağ ile yumurtayı sarısı patlamadan, kenarları çıtır olacak şekilde sahanda kızartın.","Sıcak bir taş kaseyi (dolsot) veya normal derin kaseyi kızdırıp tabanına 1 çay kaşığı susam yağı gezdirin. Sıcak pilav bastırarak koyun.","Pişirilen sebzeleri ve eti renk uyumuna göre (koyu-açık dönüşümlü) pilavın etrafına yanyana sırayla dizin. Sahanda yumurtayı en tepeye yerleştirin.","Ortaya 1-2 yemek kaşığı gochujang koyun, susam serpin. Yemeden hemen önce tüm malzemeleri kaşıkla iyice karıştırın — taş kasede ise taban pirinçleri çıtırlaşmış olacaktır."
            ],
        )
    ),
    Country(
        id: "peru",
        name: "Peru",
        flag: "🇵🇪",
        latitude: -9.2,
        longitude: -75.0,
        famousDish: Dish(
            id: "ceviche",
            name: "Ceviche",
            imageURL: "",
            description: "Limon suyunda asitle pişen taze balık salatası.",
            ingredients: ["500 g Çok taze levrek veya çipura filetosu", "8 adet Misket limonu (suyu sıkılmış)", "1 adet Kırmızı soğan (ince jülyen)", "1 adet Aji amarillo veya acı yeşil biber (ince doğranmış)", "1 demet Taze kişniş", "1 adet Tatlı patates (haşlanmış, dilimlenmiş)", "Mısır cipsi (servis için)", "Tuz"],
            steps: ["Balık filetolarını 2 cm küpler halinde kesin. Cam bir kaseye alıp üzerine taze sıkılmış misket limonu suyunu dökün.", "Kırmızı soğan jülyenlerini, doğranmış acı biberi ve tuzu ekleyip hafifçe karıştırın.", "Buzdolabında 15-20 dakika bekletin — balığın dışı limon asitiyle beyazlaşmalı ama ortası hâlâ yarı saydam kalmalıdır.", "Taze kişniş yapraklarını ekleyip son bir kez nazikçe karıştırın. Yanında haşlanmış tatlı patates dilimleri ve çıtır mısır cipsleriyle soğuk servis yapın."],
        )
    ),
    Country(
        id: "germany",
        name: "Almanya",
        flag: "🇩🇪",
        latitude: 51.2,
        longitude: 10.5,
        famousDish: Dish(
            id: "bratwurst",
            name: "Bratwurst & Sauerkraut",
            imageURL: "",
            description: "Alman usulü ızgara sosis ve fermente lahana turşusu.",
            ingredients: ["4 adet Bratwurst sosis", "400 g Lahana turşusu (Sauerkraut)", "2 yemek kaşığı Alman hardalı", "4 adet Orta boy patates", "1 adet Soğan (ince doğranmış)", "1 yemek kaşığı Tereyağı", "Tuz ve karabiber"],
            steps: ["Sosisleri çok yüksek ateşteki ızgarada veya döküm tavada yüzeylerinde güzel ızgara çizgileri oluşana ve kabuğu çıtırlaşana dek her tarafta 3-4 dakika pişirin.", "Ayrı bir tencerede tereyağını eritip soğanları 5 dakika kavurun. Lahana turşusunu ekleyip kısık ateşte 15 dakika, turşu yumuşayıp aromaları harmanlana dek ısıtın.", "Patatesleri kabuklu olarak tuzlu suda yumuşayana dek 20 dakika haşlayın, süzüp kabuklarını soyun.", "Tabağa sosisleri, yanına ılık sauerkraut ve haşlanmış patatesleri yerleştirin. Üzerine bol Alman hardalı koyarak servis edin."],
        )
    ),
    Country(
        id: "portugal",
        name: "Portekiz",
        flag: "🇵🇹",
        latitude: 39.4,
        longitude: -8.2,
        famousDish: Dish(
            id: "bacalhau",
            name: "Pastel de Nata",
            imageURL: "",
            description: "Portekiz'in dünyaca ünlü dışı çıtır, içi kremsi fırın tartı.",
            ingredients: ["250 g Milföy hamuru", "250 ml Tam yağlı süt", "4 adet Yumurta sarısı", "150 g Toz şeker", "1 yemek kaşığı Un", "1 adet Limon kabuğu rendesi", "1 çubuk Tarçın", "Toz tarçın ve pudra şekeri (servis için)"],
            steps: ["Süt, şeker, tarçın çubuğu ve limon kabuğu rendesini küçük tencerede karıştırıp orta ateşte şeker eriyene dek ısıtın — kaynatmayın. Tarçın ve limon kabuğunu süzün.", "Ayrı bir kasede yumurta sarılarını ve unu çırpın. Ilık sütü azar azar ekleyerek pürüzsüz bir krema kıvamına getirin.", "Milföy hamurunu sıkıca rulo yapın. 1 cm kalınlığında dilimler kesin, yağlanmış muffin kalıplarına bastırarak ince bir tabaka oluşturun.", "Hazırladığınız kremayı kalıpların 3/4'üne kadar doldurun.", "Fırını 250°C'ye (mümkünse en yüksek dereceye) ısıtıp tarletleri 12-15 dakika, üzerleri karakteristik siyahımsı yanık lekeler alana ve hamur kat kat kabarana dek pişirin.", "Fırından çıkarıp 5 dakika soğuttuktan sonra kalıptan çıkarın ve toz tarçın serperek sıcak veya ılık servis edin."],
        )
    ),
    Country(
        id: "vietnam",
        name: "Vietnam",
        flag: "🇻🇳",
        latitude: 14.1,
        longitude: 108.3,
        famousDish: Dish(
            id: "pho",
            name: "Pho",
            imageURL: "",
            description: "Vietnam'ın şifalı ve aromatik et suyu çorbası.",
            ingredients: ["200 g Pirinç eriştesi (Banh Pho)", "200 g Çok ince dilimlenmiş dana eti (göz fileto)", "1 kg Kemikli dana kemiği", "2 adet Yıldız anason", "1 çubuk Tarçın", "3 adet Karanfil", "5 cm Taze zencefil (yarıya kesilmiş)", "2 yemek kaşığı Balık sosu", "Taze nane, reyhan, soya filizi, limon (garnitür)"],
            steps: ["Kemikleri kaynar suda 5 dakika haşlayıp suyunu dökün (kirini alır). Temiz suyla tekrar tencereye alıp 6-8 saat kısık ateşte kaynatın.", "Yıldız anason, tarçın, karanfil ve zencefili kuru tavada kokuları çıkana dek kavurup demlenmekte olan et suyuna ekleyin.", "Et suyunu süzüp balık sosu ve tuzla tatlandırın. Berrak ve aromatik bir suyu elde edin.", "Pirinç eriştelerini kaynar suda 30 saniye haşlayıp kaselere paylaştırın.", "Çiğ dana dilimlerini eriştelerin üzerine yerleştirin. Fokur fokur kaynayan et suyunu doğrudan üzerine dökün — et anında pişecektir.", "Üzerine taze nane, Tay reyhanı, soya filizi ve misket limonu dilimleriyle sıcak sıcak servis edin."],
        )
    ),
    Country(
        id: "lebanon",
        name: "Lübnan",
        flag: "🇱🇧",
        latitude: 33.9,
        longitude: 35.5,
        famousDish: Dish(
            id: "hummus",
            name: "Humus",
            imageURL: "",
            description: "Nohut ve tahin ezmesi.",
            ingredients: ["400 g kuru nohut (bir gece ıslatılmış)","100 ml kaliteli tahin","4 adet sulu limon (suyu sıkılmış)","3 diş sarımsak","1 çay kaşığı tuz","1/2 çay kaşığı toz kimyon","3-4 buz küpü","50 ml sızma zeytinyağı (servis için)","1 çay kaşığı kırmızı toz biber (servis için)","Sıcak pide ekmek"],
            steps: [
                "Nohutları büyük bir kapta bol soğuk su ve 1 çay kaşığı karbonatla bir gece (12 saat) ıslatın. Ertesi gün suyu dökün, taze su ile parmaklar arasında kolayca ezilebilecek kadar yumuşak olana dek 1.5-2 saat haşlayın.","Meşakkatli ama çok kritik adım: Haşlanan sıcak nohutları avuçlarınızın arasında ovuşturarak kabuklarını tek tek soyun. Bu işlem humusun ipeksi pürüzsüz yapısının sırrıdır.","Sıcak nohutları (birkaçını süs için ayırın) mutfak robotuna alın. Kendi haşlama suyundan 3-4 yemek kaşığı ekleyerek 2-3 dakika çekin.","Robotun içine tahini, taze sıkılmış limon suyunu, ezilmiş sarımsağı, tuzu ve kimyonu ekleyin. Robot çalışırken kapaktan 3-4 buz küpü atın — bu humusu havalandırıp kreması gibi bembeyaz yapacaktır.","5 dakika kesintisiz çekin. Tadına bakıp tahin/limon oranını damağınıza göre ince ayar yapın. Kıvam yoğurt gibi akıcı ve ipeksi olmalıdır.","Geniş düz bir tabağa kaşıkla yayın, kaşığın tersiyle ortasına dairesel bir çukur açın. Çukura bol sızma zeytinyağı gezdirin, kenara ayırdığınız nohutları, kırmızı toz biber ve birkaç maydanoz yaprağı koyup sıcak pide ile servis edin."
            ],
        )
    ),
    Country(
        id: "united_kingdom",
        name: "Birleşik Krallık",
        flag: "🇬🇧",
        latitude: 53.0,
        longitude: -2.0,
        famousDish: Dish(
            id: "fish_chips",
            name: "Fish and Chips",
            imageURL: "",
            description: "Bira hamuruyla kızartılmış balık ve patates.",
            ingredients: ["2 büyük fileto morina balığı (200 g her biri)","4 büyük boy patates (kalın dilimlenmiş)","150 g un","250 ml soğuk bira veya soda","1 çay kaşığı tuz","Malt sirkesi (servis için)","1 L kızartma yağı"],
            steps: [
                "Patatesleri kalın kalın (1.5 cm genişliğinde chip şeklinde) kesin ve nişastasını salması için soğuk suda 30 dakika bekletin. Süzüp kağıt havluyla tamamen kurulayın.","İlk kızartma: 140°C yağda patatesleri 6-8 dakika haşlar gibi yumuşak olana dek pişirin — renk almamalılar. Çıkarıp tepsiye dizin. İkinci kızartma: Yağı 190°C'ye çıkarıp patatesleri 2-3 dakika altın sarısı ve çıtır olana dek tekrar kızartın.","Kaplama hamurunu hazırlayın: Unu bir kaseye eleyip ortasına çukur açın. Soğuk birayı yavaş yavaş ekleyerek çırpın — hamur koyu krema kıvamında, topaksız ve pürüzsüz olmalıdır.","Balık filetolarını kağıt havluyla iyice kurulayın — nemli balık hamuru tutmaz. Önce hafifçe unlayın, sonra kuyruğundan tutup tamamen sıvı hamura batırın.","Hamurlanan balığı dikkatlice 180°C kızgın yağa bırakın. Her iki tarafı altın sarısı ve çıtır olana kadar 5-6 dakika kızartın. Kağıt havluda süzün.","Tabağa çıtır patatesleri ve balığı koyun. Üzerine tuz ve malt sirkesi serpin. İsteğe bağlı olarak ezilmiş bezelye veya tartar sos ile servis edin."
            ],
        )
    ),
    Country(
        id: "egypt",
        name: "Mısır",
        flag: "🇪🇬",
        latitude: 26.8,
        longitude: 30.8,
        famousDish: Dish(
            id: "koshary",
            name: "Koshary",
            imageURL: "",
            description: "Mısır'ın sevilen sokak lezzeti; pirinç, makarna ve mercimek karışımı.",
            ingredients: ["200 g Pirinç", "200 g Kahverengi mercimek", "200 g Dirsek makarna", "200 g Haşlanmış nohut", "3 adet Büyük soğan (halka doğranmış)", "500 g Domates püresi", "6 diş Sarımsak", "2 yemek kaşığı Sirke", "Kızartma yağı ve tuz"],
            steps: ["Pirinç, mercimek ve makarnayı ayrı ayrı tuzlu suda haşlayıp süzün.", "Soğan halkalarını bol yağda koyu kahverengi ve çıtır olana dek kızartın, kağıt havluda süzün.", "Domates sosunu hazırlamak için ayrı bir tencerede ezilmiş saımsakları yağda kavurun, domates püresini ekleyip sirke ve tuzla tatlandırarak 10 dakika kaynatın.", "Geniş bir kaseye önce pirinci, üzerine mercimeği ve makarnayı kat kat yerleştirin. Haşlanmış nohutları serpin.", "Üzerine bol sıcak sarımsaklı domates sosunu gezdirin ve çıtır kızarmış soğanları tepesine yığarak servis edin."],
        )
    ),
    Country(
        id: "canada",
        name: "Kanada",
        flag: "🇨🇦",
        latitude: 56.1,
        longitude: -106.3,
        famousDish: Dish(
            id: "poutine",
            name: "Poutine",
            imageURL: "",
            description: "Erimiş peynir ve sıcak kahverengi soslu patates kızartması.",
            ingredients: ["4 büyük boy patates (kalın chip şeklinde kesilmiş)","200 g taze peynir parçaları (cheese curd)","500 ml kahverengi et sosu (gravy)","1 çay kaşığı tuz","1 L kızartma yağı"],
            steps: [
                "Patatesleri 1.5 cm kalınlığında eşit çubuklar halinde kesin. Soğuk suda 30 dakika ıslatıp nişastasını alın, tamamen kurulayın.","Birinci kızartma: 150°C yağda 6-7 dakika, patateslerin içi yumuşayana ama renk almayacak şekilde pişirin. Çıkarıp 10 dakika dinlendirin.","İkinci kızartma: Yağı 190°C'ye yükseltip patatesleri tekrar atın. Dışı altın sarısı ve çıtır olana kadar 2-3 dakika kızartın. Bol tuz serpin.","Bu arada et sosu (gravy) kasesini ocağa koyup hafifçe tıngırdayacak şekilde ısıtın — kaynar halde olmalı.","Geniş bir kaseye sımsıcak patatesleri alın. Hemen üzerine oda sıcaklığındaki taze peynir parçalarını (curd) bolca dağıtın.","Kaynar haldeki gravy sosunu doğrudan patateslerin ve peynirin üzerine dökün. Peynirler sıcakla hafifçe esneyip bükülmeye başlamalı ama tam erimemelidir. Hemen tüketin — poutine soğuyunca büyüsünü kaybeder."
            ],
        )
    ),
    Country(
        id: "russia",
        name: "Rusya",
        flag: "🇷🇺",
        latitude: 61.5,
        longitude: 105.3,
        famousDish: Dish(
            id: "borscht",
            name: "Borş Çorbası",
            imageURL: "",
            description: "Pancar ve sebzeli karakteristik kırmızı çorba.",
            ingredients: ["3 orta boy pancar (rendelenmiş)","200 g beyaz lahana (ince kıyılmış)","2 orta boy patates (küp doğranmış)","1 havuç (rendelenmiş)","1 soğan (doğranmış)","1 L sığır eti suyu","200 ml ekşi krema (servis için)","2 yemek kaşığı zeytinyağı","1 demet dereotu"],
            steps: [
                "Bütün sebzeleri (pancar, lahana, patates, havuç, soğan) ayrı ayrı ince doğrayın veya rendeleyin. Pancarı en sona saklamak rengi korur.","Geniş bir tencerede 2 yemek kaşığı zeytinyağını kızdırın. Soğanı 5 dakika kavurun, havucu ekleyip 3 dakika daha soteleyin.","Et suyunu ekleyip kaynattıktan sonra patates ve lahana parçalarını atın. Orta ateşte 15 dakika, patatese bıçak rahatça girene kadar pişirin.","Ayrı tavada rendelenmiş pancarı 1 yemek kaşığı sirke ile 10 dakika kavurun — sirke parlak kırmızı rengi korur.","Kavrulmuş pancarı tencereye ekleyin, 5 dakika daha birlikte pişirin. Tuz ve karabiberle tadını ayarlayın.","Kaselere bölüp her birinin üzerine 1 yemek kaşığı ekşi krema ve taze dereotu koyarak sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "australia",
        name: "Avustralya",
        flag: "🇦🇺",
        latitude: -25.3,
        longitude: 133.8,
        famousDish: Dish(
            id: "meat_pie",
            name: "Meat Pie",
            imageURL: "",
            description: "Çıtır hamur içinde sulu et harcı.",
            ingredients: ["500 g %10 yağlı dana kıyma","1 soğan (ince doğranmış)","250 ml koyu et suyu","2 yemek kaşığı domates salçası","500 g hazır milföy hamuru","1 yumurta (üzeri için)","1 çay kaşığı tuz","1/2 çay kaşığı karabiber"],
            steps: [
                "Geniş tavada 1 yemek kaşığı zeytinyağını kızdırın. Soğanı 5 dakika kavurun, kıymayı ekleyip parçalayarak 8-10 dakika pişirin.","Domates salçası ve et suyunu ekleyin. Kısık ateşte 15 dakika, sos koyulaşana kadar pişirin. Tuz ve karabiberle tatlandırın.","Milföy hamurunu 3mm kalınlığında açın. Yuvarlak kalıplarla alt ve üst kapak olarak kesin.","Yağlanmış turta kalıplarına alt hamuru yerleştirin. Soğumuş et harcını doldurun, kenarları yumurtayla fırçalayın.","Üst kapağı kapatın, kenarları çatalla bastırarak mühürleyin. Üstüne yumurta sarısı sürün ve bıçakla buhar deliği açın.","200°C önceden ısıtılmış fırında 25-30 dakika, üstü altın sarısı olana kadar pişirin. 5 dakika dinlendirip domates sosuyla servis edin."
            ],
        )
    ),
    Country(
        id: "sweden",
        name: "İsveç",
        flag: "🇸🇪",
        latitude: 60.1,
        longitude: 18.6,
        famousDish: Dish(
            id: "kottbullar",
            name: "Köttbullar",
            imageURL: "",
            description: "İsveç usulü küçük köfteler.",
            ingredients: ["500 g karışık kıyma (dana+domuz)","50 g ekmek kırıntısı","100 ml süt","1 küçük soğan (rendelenmiş)","1 yumurta","200 ml krema","2 yemek kaşığı tereyağı","100 g lingonberry reçeli","Tuz ve karabiber"],
            steps: [
                "Ekmek kırıntılarını sütte 5 dakika ıslatın. Kıymayı rendelenmiş soğan, ıslatılmış ekmek kırıntısı, yumurta, tuz ve karabiberle iyice yoğurun.","Ellerinizi ıslatarak harçtan ceviz büyüklüğünde (yaklaşık 3 cm) toplar yuvarlayın. Tepsiye dizin.","Geniş tavada tereyağını orta-yüksek ateşte eritin. Köfteleri tek sıra halinde yerleştirip her tarafı altın kahverengisi olana kadar 8-10 dakika çevirerek kızartın.","Köfteleri çıkarıp aynı tavaya 2 yemek kaşığı un serpin, 1 dakika kavurun. Kremayı yavaş yavaş ekleyerek koyulaşana kadar 5 dakika pişirin.","Köfteleri sosa geri koyup 5 dakika daha kısık ateşte sos ile birlikte pişirin. Tuz ayarını yapın.","Tabağa köfteleri kremalı sosla birlikte alın. Yanına lingonberry reçeli, haşlanmış patates ve turşu koyarak servis edin."
            ],
        )
    ),
    Country(
        id: "ethiopia",
        name: "Etiyopya",
        flag: "🇪🇹",
        latitude: 9.1,
        longitude: 40.5,
        famousDish: Dish(
            id: "injera",
            name: "Doro Wot & Injera",
            imageURL: "",
            description: "Etiyopya'nın meşhur süngerimsi ekmeği ve acılı tavuk yahnisi.",
            ingredients: ["Tef unu (ekmek için)", "Tavuk parçaları", "Berbere baharatı", "Haşlanmış yumurta"],
            steps: ["Mayalı tef hamurunu sacda pişirerek Injera ekmeğini yapın.", "Tavuğu bol baharatlı sosla pişirip ekmeğin üzerinde servis edin."],
        )
    ),
    Country(
        id: "colombia",
        name: "Kolombiya",
        flag: "🇨🇴",
        latitude: 4.6,
        longitude: -74.3,
        famousDish: Dish(
            id: "bandeja_paisa",
            name: "Bandeja Paisa",
            imageURL: "",
            description: "Dev tabakta karışık öğün.",
            ingredients: ["250 g kırmızı fasulye (pişirilmiş)","2 su bardağı pirinç (pişirilmiş)","300 g kıyma (kavrulmuş)","2 adet olgun muz (kızartılmış)","2 adet yumurta (sahanda)","2 adet arepa","1 adet avokado (dilimlenmiş)","Tuz"],
            steps: [
                "Kırmızı fasulyeleri bir gece ıslatıp ertesi gün 1 saat haşlayın veya konserve kullanın. Süzün.","Ayrı tencerede pirinci 2 kat su ile tuzlu olarak kısık ateşte 18 dakika, suyunu çekene kadar pişirin.","Geniş tavada kıymayı soğan ve sarımsakla 10 dakika kavurun. Kimyon ve tuz ekleyip karıştırın.","Olgun muzları boyuna ikiye kesip tereyağlı tavada her iki tarafı altın rengine gelene kadar 2-3 dakika kızartın.","Yumurtaları ayrı tavada sahanda kızartın — kenarları çıtır, sarısı akıcı olmalı.","Büyük bir tabağa pilav, fasulye, kıyma, kızarmış muz, sahanda yumurta, arepa ve avokado dilimlerini yan yana düzenleyerek servis edin."
            ],
        )
    ),
    Country(
        id: "nigeria",
        name: "Nijerya",
        flag: "🇳🇬",
        latitude: 9.1,
        longitude: 8.7,
        famousDish: Dish(
            id: "jollof",
            name: "Jollof Pirinç",
            imageURL: "",
            description: "Domatesli baharatlı pilav.",
            ingredients: ["2 su bardağı uzun taneli pirinç","400 g domates püresi","2 adet kırmızı biber","1 adet scotch bonnet biber","2 büyük soğan","500 ml tavuk suyu","1 çay kaşığı kekik","2 adet defne yaprağı","3 yemek kaşığı bitkisel yağ"],
            steps: [
                "Biberleri ve soğanları kabaca doğrayıp blenderda pürüzsüz bir sos haline getirin. Pirinci yıkayıp 30 dakika ıslatın, süzün.","Geniş tencerede bitkisel yağı kızdırıp kalan soğanı 5 dakika kavurun. Biber-domates püresini ekleyip 15 dakika, su salıp çekene kadar pişirin.","Domates salçasını ekleyip 5 dakika daha kavurun. Kekik, defne ve tuz atın.","Tavuk suyunu ve yıkanmış pirinci ekleyin. Kaynayınca ateşi en kısığa getirin.","Kapağı sıkıca kapatıp (araya folyo koyabilirsiniz) 30 dakika hiç kapak açmadan pişirin.","Kapağı açıp pirinci çatalla kabartın. Kızarmış muz ve ızgara tavuk ile servis edin."
            ],
        )
    ),
    Country(
        id: "south_africa",
        name: "Güney Afrika",
        flag: "🇿🇦",
        latitude: -30.6,
        longitude: 22.9,
        famousDish: Dish(
            id: "bobotie",
            name: "Bobotie",
            imageURL: "",
            description: "Baharatlı kıyma ve üzerine dökülen fırınlanmış yumurtalı katman.",
            ingredients: ["Dana kıyma", "Kuru üzüm", "Körili sos", "Yumurta", "Süt"],
            steps: ["Kıymayı baharatlarla kavurup fırın kabına alın.", "Üzerine sütlü yumurta döküp üstü kızarana dek fırınlayın."],
        )
    ),
    Country(
        id: "indonesia",
        name: "Endonezya",
        flag: "🇮🇩",
        latitude: -0.8,
        longitude: 113.9,
        famousDish: Dish(
            id: "nasi_goreng",
            name: "Rendang",
            imageURL: "",
            description: "Hindistan cevizi sütünde saatlerce pişen karamelize sığır eti.",
            ingredients: ["Dana eti", "Hindistan cevizi sütü", "Limon otu", "Zencefil", "Acı biber"],
            steps: ["Etleri tüm malzemelerle beraber suyunu çekip yağını salana dek 4 saat pişirin.", "Koyu renkli ve yoğun aromalı eti pirinçle servis edin."],
        )
    ),
    Country(
        id: "malaysia",
        name: "Malezya",
        flag: "🇲🇾",
        latitude: 4.2,
        longitude: 101.9,
        famousDish: Dish(
            id: "nasi_lemak",
            name: "Nasi Lemak",
            imageURL: "",
            description: "Hindistan cevizi sütlü pirinç, sambal sosu ve yer fıstığı.",
            ingredients: ["Pirinç", "Hindistan cevizi sütü", "Sambal (acı sos)", "Hamsi kurusu", "Haşlanmış yumurta"],
            steps: ["Pirinci hindistan cevizi sütünde pişirin.", "Yanına acı sos, kızarmış fıstık ve yumurta koyarak sunun."],
        )
    ),
    Country(
        id: "philippines",
        name: "Filipinler",
        flag: "🇵🇭",
        latitude: 12.9,
        longitude: 121.8,
        famousDish: Dish(
            id: "adobo",
            name: "Chicken Adobo",
            imageURL: "",
            description: "Soya sosu ve sirkede ağır ateşte pişen yumuşacık tavuk.",
            ingredients: ["Tavuk parçaları", "Soya sosu", "Sirke", "Sarımsak", "Tane karabiber"],
            steps: ["Tavuğu soslarla beraber tencereye alın.", "Sos yoğunlaşana ve tavuklar parlayana dek pişirin."],
        )
    ),
    Country(
        id: "iran",
        name: "İran",
        flag: "🇮🇷",
        latitude: 32.4,
        longitude: 53.7,
        famousDish: Dish(
            id: "chelo_kebab",
            name: "Çelo Kebap",
            imageURL: "",
            description: "Safranlı pirinç ile kuzu kebap.",
            ingredients: ["500 g yağsız kuzu kıyma","1 büyük soğan (rendelenmiş)","1/2 çay kaşığı safran (ılık suda)","50 g tereyağı","2 su bardağı basmati pirinci","2 yemek kaşığı sumak","2 adet domates (ızgara)","Tuz ve karabiber"],
            steps: [
                "Kuzu kıymayı rendelenmiş soğan, tuz ve karabiberle 5 dakika yoğurun. Yassı metal şişlere 15 cm uzunluğunda, 2 cm genişliğinde sıkıca sarın.","Basmati pirincini bol soğuk suda 3 kez yıkayıp 1 saat ıslatın. Süzün.","Kaynar tuzlu suda pirinci 6-7 dakika, tam al dente olana kadar haşlayın. Süzün.","Tencerenin dibine 2 yemek kaşığı yağ ve 1 yemek kaşığı su koyun. Pirinci üst üste gevşekçe yığın. Safranı sıcak suyla karıştırıp tepesine dökün. Kapağı havluyla sarıp kısık ateşte 45 dakika pişirin — altta çıtır tahdig oluşacak.","Şişleri kömür ateşinde veya çok kızgın ızgarada sık çevirerek 10-12 dakika pişirin.","Pilav tepesini bir tabağa ters çevirin — altın sarısı tahdig üstte kalmalı. Kebapları yanına koyun, üzerine sumak serpin ve ızgara domates ile servis edin."
            ],
        )
    ),
    Country(
        id: "pakistan",
        name: "Pakistan",
        flag: "🇵🇰",
        latitude: 30.4,
        longitude: 69.3,
        famousDish: Dish(
            id: "biryani",
            name: "Sindhi Biryani",
            imageURL: "",
            description: "Baharatlı et ve safranlı uzun taneli pirinç şöleni.",
            ingredients: ["Basmati pirinci", "Kuzu eti", "Yoğurt", "Sarı patates", "Garam masala"],
            steps: ["Eti patates ve baharatla pişirin.", "Yarı haşlanmış pirinçle kat kat dizip demlenmeye bırakın."],
        )
    ),
    Country(
        id: "bangladesh",
        name: "Bangladeş",
        flag: "🇧🇩",
        latitude: 23.7,
        longitude: 90.4,
        famousDish: Dish(
            id: "hilsa",
            name: "Hilsa Balığı",
            imageURL: "",
            description: "Hardal soslu pişmiş ılısa balığı.",
            ingredients: ["500 g ılısa balığı (dilimlenmiş)","3 yemek kaşığı hardal tohumu (ezilmiş)","1 çay kaşığı zerdeçal","4 adet yeşilbiber","3 yemek kaşığı hardal yağı","1 çay kaşığı tuz"],
            steps: [
                "Ilısa balığı dilimlerini zerdeçal ve tuzla ovup 15 dakika bekletin.","Hardal tohumlarını 2 yemek kaşığı su ile blenderda pürüzsüz bir macun haline getirin.","Tavada hardal yağını orta ateşte kızdırın. Balık dilimlerini her iki tarafı 2 dakika olmak üzere hafifçe kızartıp çıkarın.","Aynı tavada yeşilbiberleri 1 dakika kavurun. Hardal macununu, 1/2 çay kaşığı zerdeçal ve 100 ml su ekleyin.","Sos kaynamaya başlayınca balık dilimlerini nazikçe yerleştirin. Kısık ateşte 8-10 dakika, sos koyulaşana kadar pişirin.","Sıcak beyaz pirinç pilavı üzerine balıkları sosla birlikte düzgünce yerleştirerek servis edin."
            ],
        )
    ),
    Country(
        id: "nepal",
        name: "Nepal",
        flag: "🇳🇵",
        latitude: 28.4,
        longitude: 84.1,
        famousDish: Dish(
            id: "momo",
            name: "Momo",
            imageURL: "",
            description: "Buharda pişen mantı.",
            ingredients: ["300 g dana veya tavuk kıyma","1 küçük soğan (ince kıyılmış)","2 diş sarımsak (ezilmiş)","1 çay kaşığı rendelenmiş zencefil","1 demet kişniş (ince kıyılmış)","2 su bardağı un","100 ml su (hamur için)","Soya sosu (dip sos için)"],
            steps: [
                "Hamur için unu, suyu ve tuzu karıştırıp 10 dakika pürüzsüz olana kadar yoğurun. Islak bezle örtüp 30 dakika dinlendirin.","Kıymayı ince kıyılmış soğan, sarımsak, zencefil, kişniş, tuz ve karabiberle yoğurun.","Hamuru küçük toplar yapıp oklavayla 8 cm çapında ince daireler açın.","Her dairenin ortasına 1 tatlı kaşığı harç koyun. Kenarlarını yukarı kaldırıp kıvırarak üstü kapalı kesecik şekli verin — en üstte küçük bir açıklık bırakın.","Buharlı tencereye (bambu sepet veya metal süzgeç) yağlanmış kağıt serin. Momoları aralarında boşluk bırakarak dizin. Kapağı kapatıp 12-15 dakika buharda pişirin.","Soya sosu, sirke ve acı biberden yapılan dip sosla sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "sri_lanka",
        name: "Sri Lanka",
        flag: "🇱🇰",
        latitude: 7.9,
        longitude: 80.8,
        famousDish: Dish(
            id: "rice_curry",
            name: "Rice and Curry",
            imageURL: "",
            description: "Pirinç ile çeşitli köriler.",
            ingredients: ["2 su bardağı basmati pirinci","400 ml hindistancevizi sütü","10 adet köri yaprağı","1 çay kaşığı zerdeçal","200 g kırmızı mercimek (dhal için)","2 adet patates","200 g taze fasulye","2 yemek kaşığı köri tozu"],
            steps: [
                "Pirinci yıkayıp hindistancevizi sütü ve 1 su bardağı su ile tencereye koyun. Köri yaprağı ve zerdeçali ekleyin. Kaynayınca kısık ateşte 18 dakika pişirin.","Dhal: Mercimeği 400 ml su ile 20 dakika yumuşayana kadar haşlayın. Hindistancevizi sütü, zerdeçal ve tuz ekleyip 5 dakika daha pişirin.","Ayrı tavada soğan, sarımsak ve köri yapraklarını 5 dakika kavurun. Köri tozu ekleyip 1 dakika karıştırın.","Sebzeleri (patates, fasulye) bu karışıma ekleyip 200 ml su ile yumuşayana kadar 15-20 dakika pişirin.","Pol sambol: Rendelenmiş hindistancevizini soğan, biber, limon suyu ve tuzla karıştırın.","Geniş tabağa pirinçi ortaya koyun. Etrafına dhal, sebze körisi, pol sambol ve pappadam dizin."
            ],
        )
    ),
    Country(
        id: "myanmar",
        name: "Myanmar",
        flag: "🇲🇲",
        latitude: 19.7,
        longitude: 96.1,
        famousDish: Dish(
            id: "mohinga",
            name: "Mohinga",
            imageURL: "",
            description: "Balık suyuyla yapılan noodle çorbası.",
            ingredients: ["500 g beyaz etli balık (parçalanmış)","200 g kuru pirinç noodle","2 büyük soğan (ince dilimlenmiş)","2 cm taze zencefil (rendelenmiş)","1 çay kaşığı zerdeçal","2 dal limon otu","3 yemek kaşığı nohut unu","Balık sosu ve limon (servis için)"],
            steps: [
                "Balığı temizleyip parçalara ayırın. Tencerede 1 L su ile 15 dakika haşlayın. Balığı çıkarıp didikleyin, suyu saklayın.","Soğan, sarımsak, zencefil ve zerdeçali yağda 8 dakika, soğanlar yumuşayana kadar kavurun.","Limon otunu ezip macunla birlikte kavurmaya ekleyin. 2 dakika karıştırın.","Balık suyunu ekleyip kaynattın. Nohut ununu soğuk suyla açıp çorbanın içine yavaş yavaş dökerek koyulaştırın.","Didiklenmiş balığı ekleyip 10 dakika kısık ateşte pişirin. Balık sosu ve tuzla tadını ayarlayın.","Pirinç noodle'ları haşlayıp kaselere bölün. Çorbayı üzerine dökün. Kızarmış soğan, kişniş, limon dilimi ve acı biber yağı ile servis edin."
            ],
        )
    ),
    Country(
        id: "cuba",
        name: "Küba",
        flag: "🇨🇺",
        latitude: 21.5,
        longitude: -77.8,
        famousDish: Dish(
            id: "ropa_vieja",
            name: "Ropa Vieja",
            imageURL: "",
            description: "Didiklenmiş et yahnisi.",
            ingredients: ["700 g flank biftek","2 adet yeşil biber (ince dilimlenmiş)","1 büyük soğan (jülyen)","400 g domates püresi","4 diş sarımsak (ezilmiş)","1 çay kaşığı kimyon","2 adet defne yaprağı","Beyaz pirinç pilavı (servis için)"],
            steps: [
                "Bifteği 1.5 L su ile tencereye koyun. Kaynayınca köpüğü alıp kısık ateşte 1.5-2 saat, çatalla kolayca ayrılacak kadar yumuşayana dek haşlayın.","Eti çıkarıp 10 dakika soğumaya bırakın. İki çatalla lifleri boyunca ince ince didikleyin.","Geniş tavada zeytinyağını kızdırın. Soğan ve biber jülyenlerini 8 dakika, yumuşayana dek kavurun. Sarımsağı ekleyip 1 dakika daha.","Domates püresi, kimyon ve defne yaprağını ekleyip 10 dakika kaynatın. Sos koyulaşmalı.","Didiklenmiş eti sosa katıp 15 dakika kısık ateşte, et tüm sosları emene kadar karıştırarak pişirin. Tuz ayarı yapın.","Beyaz pirinç pilavı, kızarmış muz dilimleri ve siyah fasulye eşliğinde servis edin."
            ],
        )
    ),
    Country(
        id: "jamaica",
        name: "Jamaika",
        flag: "🇯🇲",
        latitude: 18.1,
        longitude: -77.3,
        famousDish: Dish(
            id: "jerk_chicken",
            name: "Jerk Chicken",
            imageURL: "",
            description: "Karayipler'in acı ve aromatik ızgara tavuğu.",
            ingredients: ["Tavuk", "Allspice baharatı", "Acı biber (Scotch Bonnet)", "Kekik", "Esmer şeker"],
            steps: ["Tavuğu baharatlarla 24 saat marine edin.", "Odun ateşinde veya ızgarada deri çıtırlaşana dek pişirin."],
        )
    ),
    Country(
        id: "dominican",
        name: "Dominik Cumhuriyeti",
        flag: "🇩🇴",
        latitude: 18.7,
        longitude: -70.2,
        famousDish: Dish(
            id: "la_bandera",
            name: "La Bandera",
            imageURL: "",
            description: "Pilav, fasulye ve et.",
            ingredients: ["2 su bardağı pirinç","250 g kırmızı fasulye (pişirilmiş)","500 g tavuk (parçalanmış)","Yeşil salata (servis için)","2 adet olgun muz (kızartma için)","2 yemek kaşığı zeytinyağı"],
            steps: [
                "Pirinci yıkayıp 2 yemek kaşığı yağda 2 dakika kavurun. 2 kat su ve tuz ekleyip kısık ateşte 20 dakika pişirin.","Fasulyeleri soğan, sarımsak, biber ve zeytinyağıyla 20 dakika, sos koyulaşana kadar pişirin.","Tavuğu tuz, limon, sarımsak ve oregano ile marine edip tavada her tarafı 5 dakika çevirerek kızartın. 200 ml su ekleyip kapağı kapatarak 25 dakika daha pişirin.","Olgun muzları boyuna ikiye kesin, tereyağlı tavada her iki tarafı altın rengine gelene kadar 2 dakika kızartın.","Yeşil salatayı domates, soğan ve limon-zeytinyağı sosuyla hazırlayın.","Büyük tabağa pirinç, fasulye, tavuk, kızarmış muz ve salata yan yana dizin — Dominik bayrağı gibi renkli bir tabak oluşturun."
            ],
        )
    ),
    Country(
        id: "venezuela",
        name: "Venezuela",
        flag: "🇻🇪",
        latitude: 6.4,
        longitude: -66.6,
        famousDish: Dish(
            id: "arepa",
            name: "Arepa",
            imageURL: "",
            description: "Mısır unundan yapılan sandviç.",
            ingredients: ["2 su bardağı beyaz mısır unu (P.A.N.)","2.5 su bardağı ılık su","1 çay kaşığı tuz","200 g beyaz peynir","1 adet avokado","200 g siyah fasulye (pişirilmiş)","200 g çekilmiş et"],
            steps: [
                "Mısır ununu ılık tuzlu suyla karıştırın. 3 dakika yoğurup hamur toparlanana kadar dinlendirin.","Hamurdan avuç içinden büyük toplar alıp 1.5 cm kalınlığında, 10 cm çapında diskler şekillendirin. Kenarları pürüzsüz olsun.","Yapışmaz tavada veya ızgarada orta ateşte her iki tarafı 5-6 dakika, dışı çıtır kabuk bağlayana kadar pişirin.","Fırını 190°C'ye ısıtıp arepaları 15 dakika daha fırınlayın — şişip hafifleşecekler. Yanlarına vurduğunuzda boş ses gelmeli.","Arepaları ortadan yatay olarak kesin (tamamen ayırmayın). İç kısmını kaşıkla biraz oyun.","İçine ufalanmış beyaz peynir, avokado dilimleri, siyah fasulye veya çekilmiş et doldurun. Sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "chile",
        name: "Şili",
        flag: "🇨🇱",
        latitude: -35.7,
        longitude: -71.5,
        famousDish: Dish(
            id: "empanada",
            name: "Empanada",
            imageURL: "",
            description: "Fırında pişen içi dolgulu hamur.",
            ingredients: ["500 g un","100 g soğuk tereyağı","400 g dana kıyma","1 büyük soğan (doğranmış)","50 g yeşil zeytin (çekirdeksiz)","2 adet haşlanmış yumurta (dilimlenmiş)","1 çay kaşığı kimyon","1 yumurta (üzeri için)"],
            steps: [
                "Hamur: Unu tereyağıyla ovalayarak kum gibi bir kıvam alana kadar karıştırın. Yumurta ve soğuk su ekleyip hamuru toplayın. Streç filmle sarıp 30 dakika buzdolabında dinlendirin.","İç harç: Soğanları küp doğrayıp 8 dakika kavurun. Kıymayı ekleyip 10 dakika parçalayarak pişirin. Kimyon, tuz ve biber ekleyin.","Harcı ateşten alıp soğumaya bırakın. Zeytin ve haşlanmış yumurta dilimlerini karıştırın.","Hamuru 3mm kalınlığında açıp 15 cm çapında daireler kesin. Ortaya 2 yemek kaşığı harç koyun.","Kenarları katlayıp çatalla bastırarak mühürleyin. Üstüne yumurta sarısı sürün.","200°C fırında 25-30 dakika, altın sarısı olana kadar pişirin. Sıcak veya oda sıcaklığında servis edin."
            ],
        )
    ),
    Country(
        id: "ecuador",
        name: "Ekvador",
        flag: "🇪🇨",
        latitude: -1.8,
        longitude: -78.2,
        famousDish: Dish(
            id: "encebollado",
            name: "Encebollado",
            imageURL: "",
            description: "Ton balıklı soğanlı çorba.",
            ingredients: ["500 g taze ton balığı (büyük parçalar)","2 büyük soğan (halka dilimlenmiş)","3 adet domates (doğranmış)","300 g manyok (küp doğranmış)","4 adet misket limonu","1 demet kişniş","1 çay kaşığı kimyon","1 L su"],
            steps: [
                "Ton balığını büyük parçalar halinde kesin. Tuzlu kaynayan suda 15 dakika haşlayın. Çıkarıp büyük parçalara ayırın.","Manyoku soyup 3 cm küpler halinde kesin. Kaynar tuzlu suda 15-20 dakika, çatala kolayca girene kadar haşlayın.","Tencerede soğan halkalarını zeytinyağında 5 dakika kavurun. Domatesleri ve kimyonu ekleyip 5 dakika pişirin.","1 L su veya balık suyunu ekleyip kaynattın. Haşlanmış manyoku ve balığı nazikçe yerleştirin.","Kısık ateşte 10 dakika birlikte pişirin. Limon suyu, tuz ve karabiber ile tadını ayarlayın.","Derin kaselere paylaştırın. Üzerine kıyılmış kişniş serpin, yanında ekstra limon dilimleri ve patacones (kızarmış yeşil muz) ile servis edin."
            ],
        )
    ),
    Country(
        id: "bolivia",
        name: "Bolivya",
        flag: "🇧🇴",
        latitude: -16.3,
        longitude: -63.6,
        famousDish: Dish(
            id: "saltenya",
            name: "Salteña",
            imageURL: "",
            description: "Jöleli sulu börek.",
            ingredients: ["500 g un (hamur için)","80 g tereyağı","300 g dana kıyma","2 adet patates (küçük küp)","100 g bezelye","1 adet haşlanmış yumurta","1 yemek kaşığı jelatin (sulu iç için)","1 yumurta (üzeri için)"],
            steps: [
                "Hamuru un, tereyağı, yumurta ve tuzla yoğurun. 30 dakika buzdolabında dinlendirin.","İç harç: Kıymayı soğan, patates küpleri ve bezelyeyle 15 dakika kavurun. Jelatin, et suyu ve baharat ekleyip soğutun — karışım jöle gibi katılaşmalı.","Hamuru ince açıp 12 cm daireler kesin. Ortaya 2 yemek kaşığı soğuk harç ve haşlanmış yumurta dilimi koyun.","Kenarlarını repulgue (örgü) tekniğiyle kapatın — bu hem süsler hem sızıntıyı önler.","Üstüne yumurta sürün. 200°C fırında 25-30 dakika, altın sarısı olana kadar pişirin.","Dikkatli yiyin — içindeki jöleli sos sıcakken sıvıdır ve ağzınızı yakabilir. Yanında acı sos ile servis edin."
            ],
        )
    ),
    Country(
        id: "uruguay",
        name: "Uruguay",
        flag: "🇺🇾",
        latitude: -32.5,
        longitude: -55.8,
        famousDish: Dish(
            id: "chivito",
            name: "Chivito",
            imageURL: "",
            description: "Dev biftek sandviçi.",
            ingredients: ["2 adet büyük biftek (150 g her biri)","4 dilim jambon","4 dilim mozzarella","2 adet yumurta (sahanda)","Göbek marul","2 dilim domates","50 g yeşil zeytin","2 yemek kaşığı mayonez","2 adet sandviç ekmeği"],
            steps: [
                "Bifteği parmaklar arasında ince hissedilene kadar et tokmağıyla dövün. Tuz ve karabiber serpin.","Kızgın ızgarada veya döküm tavada her iki tarafı 3 dakika pişirin — içi pembemsi kalmalı.","Sandviç ekmeğini ortadan kesip iç yüzlerini 30 saniye ızgarada kızartın.","Alt ekmeğe mayonez sürün, marul, domates dilimleri koyun. Üzerine sıcak bifteği yerleştirin.","Bifteğin üstüne jambon, mozzarella ve sahanda yumurta koyun. Zeytinleri yerleştirin.","Üst ekmeği kapatıp köşeden köşeye kesip çıtır patates kızartmasıyla birlikte servis edin."
            ],
        )
    ),
    Country(
        id: "paraguay",
        name: "Paraguay",
        flag: "🇵🇾",
        latitude: -23.4,
        longitude: -58.4,
        famousDish: Dish(
            id: "sopa_paraguaya",
            name: "Sopa Paraguaya",
            imageURL: "",
            description: "Misir unu ve peynirli kek.",
            ingredients: ["2 su bardağı mısır unu","300 g rendelenmiş peynir","2 büyük soğan (kavrulmuş)","4 adet yumurta","200 ml süt","50 g tereyağı (eritilmiş)"],
            steps: [
                "Soğanları küp doğrayıp tereyağında 8 dakika, yumuşayıp pembeleşene kadar kavurun. Soğumaya bırakın.","Geniş kapta yumurtaları süt ve eritilmiş tereyağıyla çırpın. Mısır ununu ve tuzu ekleyerek pürüzsüz bir hamur haline getirin.","Kavrulmuş soğanları ve rendelenmiş peynirin 3/4'ünü hamura katıp karıştırın.","Yağlanmış ve unlanmış fırın kalıbına hamuru dökün. Yüzeyi düzleştirip kalan peyniri üzerine serpin.","180°C önceden ısıtılmış fırında 40-45 dakika, üstü altın sarısı olana ve bıçağa hamur yapışmayacak kadar pişirin.","10 dakika kalıpta dinlendirip dilimleyin. Sıcak veya oda sıcaklığında, yanında et yemeği ile servis edin."
            ],
        )
    ),
    Country(
        id: "costa_rica",
        name: "Kosta Rika",
        flag: "🇨🇷",
        latitude: 10.0,
        longitude: -84.0,
        famousDish: Dish(
            id: "gallo_pinto",
            name: "Gallo Pinto",
            imageURL: "",
            description: "Pirinç ve fasulye karışımı.",
            ingredients: ["2 su bardağı pişmiş pirinç","250 g pişmiş siyah fasulye","1 soğan (doğranmış)","1 yeşil biber (doğranmış)","1 demet kişniş","2 yemek kaşığı Salsa Lizano","2 yemek kaşığı bitkisel yağ"],
            steps: [
                "Önceki günden pişirilmiş pirinç ve siyah fasulyeleri buzdolabından çıkarıp oda sıcaklığına getirin.","Geniş tavada yağı kızdırıp soğan ve biberi 5 dakika kavurun. Fasulyeleri ekleyip çatalla hafifçe ezerek 3 dakika pişirin.","Soğuk pirinci ekleyin. Salsa Lizano'yu gezdirin. Orta ateşte sürekli karıştırarak 5-7 dakika, pirinç ısınıp baharatları emene kadar pişirin.","İsteğe göre pirincin bir kısmının tavada çıtır kabuk bağlamasını sağlayın — karıştırmadan 2 dakika bırakın.","Taze kişnişi ince kıyıp pilavın üzerine serpin. Tuz ve biber ayarını yapın.","Tabağa sahanda yumurta, olgun muz dilimleri, ekşi krema ve taze avokado eşliğinde servis edin."
            ],
        )
    ),
    Country(
        id: "panama",
        name: "Panama",
        flag: "🇵🇦",
        latitude: 8.5,
        longitude: -80.8,
        famousDish: Dish(
            id: "sancocho",
            name: "Sancocho",
            imageURL: "",
            description: "Tavuklu sebze çorbası.",
            ingredients: ["1 bütün tavuk (parçalanmış)","300 g manyok (büyük parçalar)","2 adet mısır (halka kesilmiş)","1 büyük soğan (doğranmış)","4 diş sarımsak","1 demet kişniş","1 çay kaşığı kuru kekik","2 L su"],
            steps: [
                "Tavuğu soğuk su ile yıkayıp geniş ve derin tencereye koyun. Üzerini geçecek kadar su ekleyin. Kaynayınca köpüğü alın.","Soğan, sarımsak ve oreganoyu ekleyin. Kısık ateşte 30 dakika pişirin.","Manyok ve mısır parçalarını ekleyip 20 dakika daha, manyok yumuşayana kadar pişirin.","Taze kişnişi saplarıyla birlikte tencereye atıp son 5 dakika kaynatın. Tuz ve biber ile tadını ayarlayın.","Tavuğu çıkarıp parçalara ayırın. Kemikleri çıkarın.","Derin kaselere çorba suyunu, sebzeleri ve tavuk parçalarını paylaştırın. Taze kışniş serpin ve limon dilimiyle servis edin."
            ],
        )
    ),
    Country(
        id: "iceland",
        name: "İzlanda",
        flag: "🇮🇸",
        latitude: 64.9,
        longitude: -19.0,
        famousDish: Dish(
            id: "plokkfiskur",
            name: "Plokkfiskur",
            imageURL: "",
            description: "Balık ve patates püresi.",
            ingredients: ["400 g tuzlu morina balığı (ıslatılmış)","4 orta boy patates (haşlanmış)","1 büyük soğan (ince doğranmış)","30 g tereyağı","150 ml süt","1/2 çay kaşığı karabiber","Çavdar ekmeği (servis için)"],
            steps: [
                "Tuzlu balığı 24 saat soğuk suda ıslatıp tuzunu giderin. Her 8 saatte suyu değiştirin.","Patatesleri soyup küçük parçalar halinde kesin. Kaynar tuzlu suda 15-18 dakika, çatala kolayca girene kadar haşlayın.","Tuzdan arınmış balığı kaynar suya atıp 10 dakika haşlayın. Çıkarıp derisi ve kılçığını temizleyip parçalara ayırın.","Geniş tavada tereyağını eritip soğanı 5 dakika, yumuşayana kadar kavurun.","Haşlanmış patatesleri, balığı ve kavrulmuş soğanı tencereye alın. Sütü ekleyip çatalla kabaca ezin — tamamen pürüzsüz değil, parçacıklı olmalı. Karabiber serpin.","Sıcak olarak çavdar ekmeği dilimleri ve turşu ile servis edin."
            ],
        )
    ),
    Country(
        id: "ireland",
        name: "İrlanda",
        flag: "🇮🇪",
        latitude: 53.1,
        longitude: -7.7,
        famousDish: Dish(
            id: "irish_stew",
            name: "İrlanda Yahni",
            imageURL: "",
            description: "Kuzu eti ve patates yahnisi.",
            ingredients: ["700 g kuzu boyun eti (kuşbaşı)","4 orta boy patates (kalın dilimlenmiş)","2 havuç (dilimlenmiş)","2 soğan (doğranmış)","500 ml et suyu","1 çay kaşığı kuru kekik","1 demet taze maydanoz","Tuz ve karabiber"],
            steps: [
                "Kuzu etini geniş tencerede 2 yemek kaşığı yağda yüksek ateşte her tarafı kahverengileşene kadar 5-6 dakika mühürleyin. Çıkarın.","Aynı tencerede soğanları 5 dakika kavurun. Et suyunu ekleyip tencere dibindeki lezzetleri çözün.","Eti tencereye geri koyun. Havuç ve kekik ekleyin. Kaynayınca kısık ateşe getirin.","Patates dilimlerini en üste tek sıra dizin — buhar alarak piştirirken yahninin kapağı görevini görürler.","Kapağı kapatıp 1.5-2 saat, et çatalla ayrılacak kadar yumuşayana dek kısık ateşte pişirin.","Taze maydanoz serpin. Tencereden doğrudan kaselere bölüp çıtır ekmek ile servis edin."
            ],
        )
    ),
    Country(
        id: "netherlands",
        name: "Hollanda",
        flag: "🇳🇱",
        latitude: 52.1,
        longitude: 5.3,
        famousDish: Dish(
            id: "stamppot",
            name: "Stamppot",
            imageURL: "",
            description: "Patates-lahana püresi.",
            ingredients: ["1 kg patates (soyulmuş, doğranmış)","500 g kıvırcık lahana (doğranmış)","1 adet Rookworst sosis","40 g tereyağı","100 ml sıcak süt","2 yemek kaşığı taneli hardal"],
            steps: [
                "Patatesleri soyup dörde bölün. Kaynar tuzlu suda 18-20 dakika, çatala kolayca girene kadar haşlayın.","Lahana yapraklarını yıkayıp ince şeritler halinde kesin. Son 5 dakikada patateslerin üstüne ekleyip birlikte haşlayın.","Süzüp tencereye geri alın. Tereyağı ve sıcak sütü ekleyin. Patates ezme aleti ile iyice ezin — pürüzsüz değil, biraz dokulu olmalı.","Hardal, tuz ve karabiberi ekleyip karıştırın.","Rookworst sosisini kaynar suda 15 dakika ısıtın (zaten pişmiştir, sadece ısıtılır).","Stamppotu tabağa yığın, çukur açıp içine jus (et sosu) dökün. Yanında Rookworst sosisi ve ekstra hardal ile servis edin."
            ],
        )
    ),
    Country(
        id: "belgium",
        name: "Belçika",
        flag: "🇧🇪",
        latitude: 50.5,
        longitude: 4.5,
        famousDish: Dish(
            id: "moules_frites",
            name: "Moules-Frites",
            imageURL: "",
            description: "Midye ve patates kızartması.",
            ingredients: ["1 kg taze kara midye (temizlenmiş)","200 ml kuru beyaz şarap","1 büyük soğan (ince doğranmış)","3 diş sarımsak (ezilmiş)","150 ml krema","4 büyük boy patates (kızartma için)","1 demet taze maydanoz","30 g tereyağı"],
            steps: [
                "Midyeleri soğuk suda bir bir kontrol edin. Açık olanları masaya sert vurun — kapanmazsa atın. Sakal ipliklerini koparıp fırçayla temizleyin.","Geniş ve derin tencerede tereyağını eritin. Soğan ve sarımsağı 5 dakika, yumuşayana kadar kavurun.","Beyaz şarabı ekleyip 2 dakika kaynatın. Midyeleri tencereye dökün, kapağı sıkıca kapatın.","Yüksek ateşte 4-5 dakika, tüm midyeler açılana kadar ara sıra tencereyi sallayarak pişirin. Açılmayan midyeleri atın.","Kremayı ekleyip 1 dakika daha kaynatın. Bol maydanoz serpin.","Patatesleri 2 kez kızartma yöntemiyle (150°C, sonra 190°C) hazırlayın. Midyeleri tencereyle masaya getirip yanında patates kızartması ve extra mayonez ile servis edin."
            ],
        )
    ),
    Country(
        id: "switzerland",
        name: "İsviçre",
        flag: "🇨🇭",
        latitude: 46.8,
        longitude: 8.2,
        famousDish: Dish(
            id: "fondue",
            name: "Peynir Fondü",
            imageURL: "",
            description: "Erimiş peynirde ekmek daldırma.",
            ingredients: ["200 g Gruyère peyniri (rendelenmiş)","200 g Emmental peyniri (rendelenmiş)","200 ml kuru beyaz şarap","1 diş sarımsak (fondü kabına sürmek için)","1 yemek kaşığı kiraz likörü","1 çay kaşığı mısır nişastası","1 somun çıtır ekmek (küp doğranmış)"],
            steps: [
                "Fondu kabının iç yüzeyini kesik sarımsak dişiyle iyice ovun — kabın her yerine sarımsak aroması sinmeli.","Peyniri ince rendeleyin. Mısır nişastasıyla karıştırarak unlayın — bu peynirin topaklı erimesini önler.","Fondu kabını ocağa koyup beyaz şarabı ekleyin. Orta ateşte şarap hafifçe kaynamaya başlayınca avuç avuç peynir eklemeye başlayın.","Her avuç peyniri sürekli 8 şeklinde karıştırarak tamamen eritin, sonra bir sonrakini ekleyin. Tümü eriyene kadar 10-12 dakika devam edin.","Kiraz likörünü ekleyip karıştırın. Fondu kabını alkolün arkasından taşınabilir brülöre (rechaud) koyun — sıcak tutması yeterli, kaynatmamalı.","Çıtır ekmek küplerini uzun çatallara takıp fondüye daldırarak yiyin. Ekmek düşerse geleneğe göre masaya bir şişe şarap ısmarlarsınız!"
            ],
        )
    ),
    Country(
        id: "austria",
        name: "Avusturya",
        flag: "🇦🇹",
        latitude: 47.5,
        longitude: 14.6,
        famousDish: Dish(
            id: "schnitzel",
            name: "Wiener Schnitzel",
            imageURL: "",
            description: "İnce döğülmüş paneli dana eti.",
            ingredients: ["4 adet ince dana eti (150 g, 5mm kalınlığında dövülmüş)","100 g un","2 adet yumurta (çırpılmış)","200 g galeta unu","80 g tereyağı (kızartma için)","2 adet limon (dilimlenmiş)","Tuz"],
            steps: [
                "Dana etini parmaklar kalınlığını zor hissedene kadar et tokmağıyla streç film arasında çok ince (3-4mm) dövün.","3 tabak hazırlayın: un (tuzlu), çırpılmış yumurta, galeta unu. Eti sırasıyla una, yumurtaya ve galeta ununa bulayın — kaplamanın gevşek durmasına dikkat edin, bastırarak yapıştırmayın.","Geniş tavada (kesinlikle derin kızartma değil) bol tereyağını orta-yüksek ateşte eritin. Tereyağı köpürüp köpüğü azaldığında hazırdır.","Kaplı eti yavaşça tavaya bırakın. Tavayı hafifçe sallayarak kaplama altında hava yastığı oluşmasını sağlayın — bu schnitzel'in kabarık ve dalgalı görünümünü verir.","Her tarafı 2-3 dakika, altın sarısı olana kadar kızartın. Kağıt havluda fazla yağını alın.","Tabağa koyup taze sıkılmış limon dilimi ve maydanoz yaprağı ile süsleyin. Patates salatası veya salata ile servis edin."
            ],
        )
    ),
    Country(
        id: "poland",
        name: "Polonya",
        flag: "🇵🇱",
        latitude: 51.9,
        longitude: 19.1,
        famousDish: Dish(
            id: "pierogi",
            name: "Pierogi",
            imageURL: "",
            description: "Haşlanmış veya kızartılmış mantı.",
            ingredients: ["Hamur: 300 g un, 1 yumurta, 120 ml ılık su, 1/2 çay kaşığı tuz","İç: 500 g patates (haşlanmış, ezilmiş), 200 g süzme peynir, 1 soğan (kavrulmuş)","50 g tereyağı (kızartma için)","200 ml ekşi krema (servis için)"],
            steps: [
                "Hamur: Unu tezgaha yığın, ortasına çukur açın. Yumurta ve ılık suyu ekleyip 10 dakika pürüzsüz ve elastik olana kadar yoğurun. Islak bezle örtüp 30 dakika dinlendirin.","İç: Haşlanmış patatesleri iyice ezin. Kavrulmuş soğanı ve ufalanmış peyniri ekleyip karıştırın. Tuz ve biberle tatlandırın.","Hamuru unlı tezgahta 2-3mm kalınlığında açın. 8 cm çapında daireler kesin (bardak kullanabilirsiniz).","Her dairenin ortasına 1 yemek kaşığı harç koyun. İkiye katlayıp kenarları çatalla bastırarak sıkıca mühürleyin.","Tuzlu kaynayan suda 5-6 tane olacak şekilde partiler halinde haşlayın. Pierogilerin yüzeye çıkmasından 3 dakika sonra çıkarın.","Tereyağında her iki tarafı altın sarısı olana kadar 2-3 dakika kızartın. Ekşi krema, kavrulmuş soğan ve taze dereotu ile servis edin."
            ],
        )
    ),
    Country(
        id: "czech",
        name: "Çekya",
        flag: "🇨🇿",
        latitude: 49.8,
        longitude: 15.5,
        famousDish: Dish(
            id: "svickova",
            name: "Svíčková",
            imageURL: "",
            description: "Kremalı soslu biftek.",
            ingredients: ["600 g sığır biftek (bütün parça)","2 havuç (doğranmış)","1/4 kereviz (doğranmış)","2 soğan (doğranmış)","200 ml krema","50 g brusnika (kızılcık)","Knödel: 250 g un, 1 yumurta, 100 ml süt, maya","Tuz ve karabiber"],
            steps: [
                "Bifteği buzdolabından çıkarıp 30 dakika oda sıcaklığında bekletin. Tuz ve karabiber serpin.","Geniş tencerede yağla sebzeleri (havuç, kereviz, soğan) 10 dakika kavurun. Eti ekleyip her tarafı 3 dakika mühürleyin.","250 ml su veya et suyu ekleyin. Kapağı kapatıp kısık ateşte 1.5-2 saat, et yumuşayana kadar pişirin. Arada çevirin.","Eti çıkarıp sıcak tutun. Pişme suyundaki sebzeleri blenderdan geçirin. Kremayı ekleyip 5 dakika kaynatın. Tuz ayarı yapın.","Knödel: Unu, yumurtayı, maya ve sütü karıştırıp sosis şekli verin. 15 dakika kaynar suda haşlayıp dilimleyin.","Eti dilimleyip tabağa alın. Kremalı sosu üzerine dökün. Yanına knödel dilimleri ve brusnika (kızılcık) reçeli koyun."
            ],
        )
    ),
    Country(
        id: "hungary",
        name: "Macaristan",
        flag: "🇭🇺",
        latitude: 47.2,
        longitude: 19.5,
        famousDish: Dish(
            id: "goulash",
            name: "Gulaş",
            imageURL: "",
            description: "Kırmızı biberli et yahnisi.",
            ingredients: ["700 g sığır gulaş eti (kuşbaşı)","3 büyük soğan (ince doğranmış)","3 yemek kaşığı tatlı kırmızı toz biber","2 adet domates (doğranmış)","2 orta boy patates (küp)","1 çay kaşığı kimyon","500 ml et suyu","2 yemek kaşığı domuz yağı"],
            steps: [
                "Soğanları ince ince kıyın. Geniş tencerede domuz yağı veya zeytinyağını kızdırıp soğanları 15 dakika, camlaşıp hafif kahverengileşene kadar kavurun.","Ateşi kapatın. Kırmızı toz biberi (çok önemli: bol miktarda, 3 yemek kaşığı) ekleyip hızla karıştırın — ateş açıkken eklerseniz yanar ve acılaşır.","Ateşi tekrar açıp kuşbaşı eti ekleyin. 5 dakika mühürleyin. Domatesleri ve kimyonu ekleyin.","Et suyunu ekleyin. Kaynayınca kısık ateşte 1.5 saat pişirin. Patates küplerini ekleyip 30 dakika daha, patates ve et yumuşayana kadar pişirin.","Kıvamı kontrol edin — sulu çorba kıvamında olmalı, çok koyu değil. Gerekirse su ekleyin. Tuz ve biber ayarını yapın.","Kaselere bölüp üzerine bir tutam ekşi krema koyun. Yanında taze ekmek ile sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "romania",
        name: "Romanya",
        flag: "🇷🇴",
        latitude: 45.9,
        longitude: 24.9,
        famousDish: Dish(
            id: "sarmale",
            name: "Sarma",
            imageURL: "",
            description: "Lahana yaprağında kıymalı pirinç sarması.",
            ingredients: ["1 baş ekşi lahana (turşu)","500 g karışık kıyma (dana+domuz)","100 g pirinç (yıkanmış)","2 soğan (rendelenmiş)","400 g domates püresi","1 çay kaşığı kekik","1 çay kaşığı tuz","200 ml ekşi krema (servis için)"],
            steps: [
                "Lahana turşusunu geniş yapraklar halinde açıp kalın damarları kesin. Çok tuzluysa 30 dakika soğuk suda ıslatın.","Kıymayı yıkanmış pirinç, rendelenmiş soğan, kekik, tuz ve karabiberle yoğurun.","Her lahana yaprağının ortasına 1 yemek kaşığı harç koyun. Alt kenarı katlayın, yanları içe kıvırıp sıkıca sarın.","Geniş fırın tenceresinin dibine doğranmış ekşi lahana ve domates sosunun yarısını yayın. Sarmaları sıkıca yan yana dizin.","Kalan domates sosunu ve 200 ml su dökün. Üzerine birkaç dilim tütsülenmiş pastırma koyun.","Kapağı kapatıp 160°C fırında 2.5-3 saat, pirinç tamamen pişene ve sarmaların rengi koyulaşana kadar pişirin. Ekşi krema ve acı biberle servis edin."
            ],
        )
    ),
    Country(
        id: "bulgaria",
        name: "Bulgaristan",
        flag: "🇧🇬",
        latitude: 42.7,
        longitude: 25.5,
        famousDish: Dish(
            id: "shopska",
            name: "Shopska Salatası",
            imageURL: "",
            description: "Domates, biber ve beyaz peynir salatası.",
            ingredients: ["4 adet olgun domates (doğranmış)","2 adet salatalık (doğranmış)","2 adet yeşil biber (doğranmış)","1 küçük soğan (ince doğranmış)","150 g beyaz peynir (ufalanmış)","3 yemek kaşığı sızma zeytinyağı","1 yemek kaşığı sirke","Tuz"],
            steps: [
                "Domatesleri çekirdeklerini çıkarmadan 2 cm küp doğrayın. Salatalıkları soyup yarım ay dilimleyin. Biberleri ince şeritler halinde kesin.","Soğanı çok ince yarım ay dilimleyin. Tüm sebzeleri geniş bir kasede nazikçe karıştırın.","3 yemek kaşığı kaliteli sızma zeytinyağı ve 1 yemek kaşığı beyaz şarap sirkesini gezdirin. Hafifçe tuzlayın.","Tabağa düzgün şekilde yayın. Üzerine bol miktarda beyaz salamura peyniri (sirene) iri parçalar halinde ufalayarak serpin.","Tabağın kenarına birkaç siyah zeytin ve sivri yeşil biber yerleştirin.","Soğuk olarak, yanında çıtır beyaz ekmek ve Rakia (geleneksel içki) ile aperatif olarak servis edin."
            ],
        )
    ),
    Country(
        id: "serbia",
        name: "Sırbistan",
        flag: "🇷🇸",
        latitude: 44.0,
        longitude: 21.0,
        famousDish: Dish(
            id: "cevapi",
            name: "Çevapi",
            imageURL: "",
            description: "Izgara köfte.",
            ingredients: ["500 g karışık kıyma (dana+kuzu)","1 küçük soğan (rendelenmiş)","2 diş sarımsak (ezilmiş)","1 çay kaşığı tuz","1/2 çay kaşığı karabiber","4 adet somun ekmek","100 g kajmak (kaymak peyniri)"],
            steps: [
                "Kıymayı rendelenmiş soğan, ezilmiş sarımsak, tuz ve karabiberle iyice yoğurun — en az 5 dakika. Streç filmle sarıp 2 saat buzdolabında dinlendirin.","Harçtan ceviz büyüklüğünde parçalar koparıp avuçlarınız arasında 8 cm uzunluğunda, 2 cm kalınlığında parmak şekli verin.","Izgarayı veya döküm tavayı çok yüksek ateşte kızdırın. Çevapiyi yerleştirip 3 dakika hiç dokunmadan, alt taraf mühürlenene kadar pişirin.","Çevirin, 3 dakika daha. Toplam 4 tarafından çevirerek 10-12 dakika pişirin.","Somun ekmeğini ortadan kesip ızgarada 1 dakika ısıtın. İçine kajmak (kaymak peyniri) sürün.","Ekmek arasına 5-6 adet çevapiyi dizin. Üzerine ince doğranmış soğan ve ajvar (kırmızı biber ezmesi) koyarak servis edin."
            ],
        )
    ),
    Country(
        id: "croatia",
        name: "Hırvatistan",
        flag: "🇭🇷",
        latitude: 45.1,
        longitude: 15.2,
        famousDish: Dish(
            id: "crni_rizot",
            name: "Siyah Risotto",
            imageURL: "",
            description: "Mürekkep balıklı risotto.",
            ingredients: ["300 g arborio pirinci","400 g mürekkep balığı (temizlenmiş, halka kesilmiş)","1 soğan (ince doğranmış)","150 ml kuru beyaz şarap","800 ml balık suyu","50 g rendelenmiş Parmesan","2 yemek kaşığı zeytinyağı","Mürekkep torbası (2-3 adet)"],
            steps: [
                "Mürekkep balığını temizleyip halka kesin. Mürekkep torbalarını ayırıp bir kenara koyun.","Tencerede zeytinyağıyla soğanı 5 dakika kavurun. Balık halkalarını ekleyip 3 dakika soteleyin.","Beyaz şarabı ekleyip 2 dakika buharlaştırın. Arborio pirincini ekleyip 1 dakika yağla kaplayacak şekilde kavurun.","Sıcak balık suyunu kepçe kepçe ekleyin. Her kepçe emildikten sonra bir sonrakini ekleyin. 18-20 dakika sürekli karıştırın.","Son kepçeyle birlikte mürekkep torbalarını sıkıp sosumu ekleyin — risotto simsiyah olacak. Parmesan ve tereyağı ekleyin.","Tabağa yayıp birkaç damla zeytinyağı gezdirin. İsteğe göre maydanoz yaprağı ile süsleyerek servis edin."
            ],
        )
    ),
    Country(
        id: "bosnia",
        name: "Bosna-Hersek",
        flag: "🇧🇦",
        latitude: 43.9,
        longitude: 17.7,
        famousDish: Dish(
            id: "burek",
            name: "Börek",
            imageURL: "",
            description: "Yufka arası et veya peynir.",
            ingredients: ["500 g yufka hamuru (hazır veya ev yapımı)","400 g dana kıyma veya 300 g beyaz peynir (ufalanmış)","1 soğan (ince doğranmış)","100 ml bitkisel yağ","200 ml yoğurt (servis için)","Tuz ve karabiber"],
            steps: [
                "Yufkayı ince açın veya hazır yufka kullanın. Her yufka yaprağını tezgaha serin.","Kıyma harcı: Kıymayı soğan, tuz, karabiber ile yoğurun. Peynirli yapacaksanız peyniri ufalayın.","Yufkanın alt kenarı boyunca ince bir şerit halinde harç yayın. Alt kenarı katlayıp sıkıca silindir gibi sarın.","Sarılmış börekleri yuvarlak fırın tepsisine salyangoz şeklinde kıvrılarak dizin — ortadan başlayıp dışa doğru sarmal yapın.","Üzerine fırçayla yağ ve yumurta karışımı sürün. 180°C fırında 35-40 dakika, altın sarısı olana kadar pişirin.","10 dakika dinlendirip dilimleyin. Yanında soğuk yoğurt ile sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "albania",
        name: "Arnavutluk",
        flag: "🇦🇱",
        latitude: 41.2,
        longitude: 20.2,
        famousDish: Dish(
            id: "tavekosi",
            name: "Tavë Kosi",
            imageURL: "",
            description: "Yoğurtlu fırın tavuk.",
            ingredients: ["1 bütün tavuk (8 parçaya ayrılmış)","500 ml tam yağlı yoğurt","3 adet yumurta","2 yemek kaşığı un","50 g tereyağı","1 su bardağı pirinç","3 diş sarımsak (ezilmiş)","Tuz ve karabiber"],
            steps: [
                "Tavuk parçalarını tuz ve karabiberle ovun. Tavada zeytinyağıyla her tarafı 3-4 dakika mühürleyin.","Pirinci yıkayıp süzün. Tereyağında 2 dakika kavurup 2 kat su ile kısık ateşte 15 dakika pişirin.","Yoğurt sosunu hazırlayın: Yoğurdu yumurta, un ve ezilmiş sarımsakla pürüzsüz olana kadar çırpın.","Yağlanmış fırın kabının tabanına pilav yayın. Üstüne tavuk parçalarını dizin.","Yoğurt karışımını tavuk ve pilavın üzerine eşit şekilde dökün.","180°C fırında 45-50 dakika, üstü altın sarısı ve kabarcıklı olana kadar pişirin. 10 dakika dinlendirip servis edin."
            ],
        )
    ),
    Country(
        id: "georgia_country",
        name: "Gürcistan",
        flag: "🇬🇪",
        latitude: 42.3,
        longitude: 43.4,
        famousDish: Dish(
            id: "khachapuri",
            name: "Haçapuri",
            imageURL: "",
            description: "Peynirli kayık şeklinde pide.",
            ingredients: ["Hamur: 300 g un, 150 ml yoğurt, 1/2 çay kaşığı tuz, 1 çay kaşığı kabartma tozu","400 g sülügüni peyniri (rendelenmiş)","2 adet yumurta","40 g tereyağı"],
            steps: [
                "Hamur: Unu, yoğurdu, tuzu ve kabartma tozunu karıştırıp 5 dakika yoğurun. Islak bezle örtüp 20 dakika dinlendirin.","Peyniri rendeleyip bir kasede karıştırın. 2 peynir arışımı (sülügüni + taze peynir) en iyi sonucu verir.","Hamuru 4 parçaya bölün. Her parçayı oval/kayık şeklinde açın (30 cm uzunluğunda). Kenarları yukarı katlayıp sıkıştırarak kayık bordası oluşturun.","Her kayığın ortasına bol peynir doldurun. Uçları sivrilterek kapatın — merkez açık kalmalı.","200°C fırında 12-15 dakika, hamur kızarıp peynir eriyene kadar pişirin.","Fırından çıkarınca hemen ortasına çiğ yumurta kırın ve 1 parça tereyağı koyun. Yumurta beyazı pişerken sarısı akıcı kalmalı — çatal ile karıştırarak sıcak sıcak yiyin."
            ],
        )
    ),
    Country(
        id: "armenia",
        name: "Ermenistan",
        flag: "🇦🇲",
        latitude: 40.1,
        longitude: 45.0,
        famousDish: Dish(
            id: "lahmacun",
            name: "Lahmacun",
            imageURL: "",
            description: "İnce hamur üzeri kıymalı pide.",
            ingredients: ["Hamur: 250 g un, 120 ml su, 1/2 çay kaşığı tuz, 1 yemek kaşığı zeytinyağı","300 g az yağlı kuzu kıyma","2 adet domates (rendelenmiş)","1 soğan (ince kıyılmış)","1 yeşil biber (ince kıyılmış)","1 demet maydanoz (ince kıyılmış)","1 çay kaşığı pul biber","2 adet limon (servis için)"],
            steps: [
                "Hamuru un, su, tuz ve zeytinyağı ile yoğurup 30 dakika dinlendirin. Toplar yapıp çok ince (2mm) açın.","Kıyma harcı: Kıymayı rendelenmiş domates, ince kıyılmış soğan, biber, maydanoz ve pul biberle karıştırın. Sos gibi akıcı olmalı.","İnce açılmış hamurların üzerine harcı 3mm kalınlığında eşit şekilde yayın — hamur görünmemeli.","250°C'ye ısıtılmış fırında 6-8 dakika, kenarları kıvrılıp hafif yanık lekeler oluşana kadar pişirin.","Fırından çıkarınca üzerine taze limon suyu sıkın. Maydanoz ve ince doğranmış soğan serpin.","Düz olarak yiyebilir veya rulo şeklinde sarıp marul ve limonla birlikte yiyebilirsiniz."
            ],
        )
    ),
    Country(
        id: "azerbaijan",
        name: "Azerbaycan",
        flag: "🇦🇿",
        latitude: 40.1,
        longitude: 47.6,
        famousDish: Dish(
            id: "plov",
            name: "Şah Pilavı",
            imageURL: "",
            description: "Lavaş kabuğu içinde pişen, meyvelerle süslenmiş görkemli pilav.",
            ingredients: ["Uzun taneli pirinç", "Kuzu eti", "Kuru kayısı ve üzüm", "Kestane", "Lavaş"],
            steps: ["Tencereyi lavaşla kaplayın, içine yarı haşlanmış pirinç ve etli meyveli harcı koyun.", "Lavaşla kapatıp fırında nar gibi kızarana dek pişirin."],
        )
    ),
    Country(
        id: "uzbekistan",
        name: "Özbekistan",
        flag: "🇺🇿",
        latitude: 41.4,
        longitude: 64.6,
        famousDish: Dish(
            id: "plov_uz",
            name: "Özbek Pilavı",
            imageURL: "",
            description: "Büyük kazanda yapılan etli pilav.",
            ingredients: ["2 su bardağı uzun taneli pirinç","700 g kuzu eti (büyük kuşbaşı)","3 büyük havuç (kalın jülyen)","2 büyük soğan (halka)","1 yemek kaşığı kimyon","1 baş sarımsak (bütün)","100 g nohut (ıslatılmış)","100 ml bitkisel yağ"],
            steps: [
                "Geniş kalın tabanlı kazanı (veya döküm tencereyi) yüksek ateşte kızdırın. Yağı ekleyip dumanı çıkana kadar ısıyın.","Büyük parça kuzu etini kazana koyup her tarafı koyu kahverengiye kadar 5-6 dakika mühürleyin. Çıkarın.","Soğan halkalarını 5 dakika kavurup kalın jülyen havuçları ekleyin. 10 dakika, havuçlar yumuşayana kadar soteleyin.","Eti geri koyun. Kimyon, tuz ve karabiber serpin. Nemlenmemiş nohutları ve bütün sarımsak başını ekleyin.","Sıcak su ekleyip kaynattın. Yıkanmış pirinci eşit şekilde üste dökün ama karıştırmayın. Kapağı sıkıca kapatın.","Kısık ateşte 25-30 dakika, pirinç suyunu çekene kadar pişirin. Sarımsağı çıkarıp büyük tabağa ters çevirerek servis edin."
            ],
        )
    ),
    Country(
        id: "kazakhstan",
        name: "Kazakistan",
        flag: "🇰🇿",
        latitude: 48.0,
        longitude: 68.0,
        famousDish: Dish(
            id: "beshbarmak",
            name: "Beşbarmak",
            imageURL: "",
            description: "Haşlama et ve yufka.",
            ingredients: ["700 g kuzu veya dana eti (büyük parçalar)","400 g taze yufka hamuru (geniş şeritler halinde kesilmiş)","2 büyük soğan (halka)","500 ml et suyu","1 çay kaşığı tuz","1/2 çay kaşığı karabiber"],
            steps: [
                "Büyük parça eti geniş tencereye koyup soğuk su ile başlayarak kaynattın. Köpüğü alarak kısık ateşte 2-2.5 saat, et yumuşayana kadar haşlayın.","Taze yufka hamurunu hazırlayın veya hazır yufka kullanın. Geniş şeritler (5x10 cm) halinde kesin.","Soğan halkalarını et suyundan 3 kepçe ile tencerede 10 dakika, yumuşayana kadar soteleyin.","Yufka şeritlerini kaynayan tuzlu et suyunda 3-4 dakika haşlayın. Süzün.","Eti kemiklerinden ayırıp büyük parçalara bölün.","Büyük tabağa önce yufkayı yayın, üzerine eti dizin, soğanları dağıtın ve 1-2 kepçe et suyu gezdirin. Geleneksel olarak elle yenir."
            ],
        )
    ),
    Country(
        id: "mongolia",
        name: "Moğolistan",
        flag: "🇲🇳",
        latitude: 46.9,
        longitude: 103.8,
        famousDish: Dish(
            id: "buuz",
            name: "Buuz",
            imageURL: "",
            description: "Moğol usulü iri etli buhar mantısı.",
            ingredients: ["Hamur", "Kıyma", "Soğan", "Sarımsak"],
            steps: ["Hamurları açıp içine soğanlı et harcını koyun.", "Özel buhar tenceresinde 20 dk pişirerek sıcak servis yapın."],
        )
    ),
    Country(
        id: "saudi",
        name: "Suudi Arabistan",
        flag: "🇸🇦",
        latitude: 23.9,
        longitude: 45.1,
        famousDish: Dish(
            id: "kabsa",
            name: "Kabsa",
            imageURL: "",
            description: "Baharatlı etli pilav.",
            ingredients: ["2 su bardağı basmati pirinci","1 bütün tavuk veya 500 g kuzu eti","2 adet domates (rendelenmiş)","1 büyük soğan (doğranmış)","3 diş sarımsak","2 yemek kaşığı kabsa baharat karışımı","2 adet limon","2 yemek kaşığı zeytinyağı"],
            steps: [
                "Tavuğu veya kuzu etini büyük parçalar halinde tencereye koyun. Kabsa baharatı, tuz ve su ekleyip 30-40 dakika haşlayın.","Eti çıkarıp fırın ızgarası altında veya tavada her tarafı çıtır olana kadar 5 dakika kızartın.","Aynı tencerede soğan ve sarımsağı 5 dakika kavurun. Rendelenmiş domatesleri ekleyip 8 dakika pişirin.","Yıkanmış pirinci ekleyin. Et suyunu ve baharatları katın. Kaynayınca kısık ateşte 18-20 dakika pişirin.","Limon dilimlerini pilavın üstüne dizin. Kapağı kapatıp 5 dakika dinlendirin.","Büyük tabağa pilavı yığın, üstüne çıtır eti yerleştirin. Kavrulmuş badem ve kuru üzümle süsleyerek servis edin."
            ],
        )
    ),
    Country(
        id: "uae",
        name: "BAE",
        flag: "🇦🇪",
        latitude: 23.4,
        longitude: 53.8,
        famousDish: Dish(
            id: "machboos",
            name: "Machboos",
            imageURL: "",
            description: "Körfez usulü baharatlı pilav.",
            ingredients: ["2 su bardağı basmati pirinci","1 bütün tavuk (parçalanmış)","2 soğan (ince dilimlenmiş)","3 adet domates (doğranmış)","1 adet limon (suyu)","2 yemek kaşığı bezar baharatı","1 yemek kaşığı gül suyu","2 yemek kaşığı ghee"],
            steps: [
                "Tavuğu bütün olarak bezar baharatı, zerdeçal, tuz ve su ile tencerede 30 dakika haşlayın. Çıkarıp tavuk suyunu saklayın.","Geniş tencerede ghee ile soğanları koyu kahverengiye kadar 15 dakika kavurun. Domatesleri ekleyip 5 dakika pişirin.","Yıkanmış basmati pirincini ekleyip 1 dakika kavurun. Saklanan tavuk suyunu ve limon suyunu ekleyin.","Kaynayınca kısık ateşte 15-18 dakika pişirin. Son dakikada gül suyunu ekleyin.","Haşlanmış tavuğu fırında veya tavada çıtırlaştırın.","Pilavı tabağa yığıp üstüne tavuk yerleştirin. Kızarmış soğan ve taze kişniş ile süsleyin."
            ],
        )
    ),
    Country(
        id: "jordan",
        name: "Ürdün",
        flag: "🇯🇴",
        latitude: 30.6,
        longitude: 36.2,
        famousDish: Dish(
            id: "mansaf",
            name: "Mansaf",
            imageURL: "",
            description: "Ürdün'ün ulusal gururu; jameed (kurutulmuş yoğurt) sosunda pişen kuzu.",
            ingredients: ["1 kg Kuzu eti", "Jameed (Kurutulmuş yoğurt)", "Pirinç", "Lavaş ekmeği", "Çam fıstığı"],
            steps: ["Jameed'i suda eritip koyu bir ayran kıvamına getirin.", "Eti bu sosun içinde yumuşayana dek haşlayın.", "Tabağa önce lavaş, üzerine pilav ve en üste eti koyup jameed sosunu gezdirin."],
        )
    ),
    Country(
        id: "iraq",
        name: "Irak",
        flag: "🇮🇶",
        latitude: 33.2,
        longitude: 43.7,
        famousDish: Dish(
            id: "masgouf",
            name: "Masgouf",
            imageURL: "",
            description: "Açık ateşte közlenen sazan balığı.",
            ingredients: ["Büyük sazan", "Zerdeçal", "Tamarind", "Domates"],
            steps: ["Balığı açıp odun ateşi yanında dikey pişirin.", "Limon ve soğanla servis edin."],
        )
    ),
    Country(
        id: "syria",
        name: "Suriye",
        flag: "🇸🇾",
        latitude: 34.8,
        longitude: 38.9,
        famousDish: Dish(
            id: "kibbeh",
            name: "Kibbe",
            imageURL: "",
            description: "İçli köfte.",
            ingredients: ["İç köfte dış hamur: 250 g ince bulgur, 250 g yağsız kıyma, 1 soğan, tuz","İç harç: 200 g kıyma, 1 soğan (doğranmış), 50 g çam fıstığı, baharat","Kızartma yağı (1 L)","1 çay kaşığı yedi baharat","1/2 çay kaşığı tarçın"],
            steps: [
                "Dış hamur: İnce bulguru yıkayıp 15 dakika ıslatın. Süzüp kıyma, ince rendelenmiş soğan, yedi baharat, tarçın ve tuzla 10 dakika yoğurun — pürüzsüz ve yapışkan olmalı.","İç harç: Ayrı tavada kıymayı soğanla 8 dakika kavurun. Çam fıstığı, baharat ekleyin. Soğumaya bırakın.","Ellerinizi ıslatarak dış hamurdan ceviz büyüklüğünde top alın. Başparmağınızla ortasını oyup ince çanaklı bir şekil verin.","Çanağın içine 1 çay kaşığı iç harç koyun. Açıklığı kapatıp sivri uçlu rugby topu şekli verin.","Yağı 170°C'ye kadar kızdırın. Kibbeleri 4-5 dakika, her tarafı altın kahverengisi olana kadar kızartın. Kağıt havluda süzün.","Sıcak veya ılık olarak limon dilimleri ve yeşil salata ile servis edin."
            ],
        )
    ),
    Country(
        id: "israel",
        name: "İsrail",
        flag: "🇮🇱",
        latitude: 31.0,
        longitude: 34.9,
        famousDish: Dish(
            id: "falafel",
            name: "Falafel",
            imageURL: "",
            description: "Nohut köftesi.",
            ingredients: ["400 g kuru nohut (bir gece ıslatılmış)","1 demet taze maydanoz","1 demet taze kişniş","1 soğan (doğranmış)","4 diş sarımsak","2 çay kaşığı kimyon","1 çay kaşığı tuz","1 yemek kaşığı un","1 L kızartma yağı","Pide ve tahin sosu (servis için)"],
            steps: [
                "Nohutları soğuk suda bir gece ıslatın. Ertesi gün süzün — kesinlikle haşlamayın, çiğ nohutla yapılır.","Nohutları mutfak robotuna alın. Maydanoz, kişniş, soğan, sarımsağı ve kimyonu ekleyin. Kısa aralıklarla (pulse) iri kum kıvamına gelene kadar çekin — pürüzsüz yaparsanız falafel dağılır.","Harça tuzu ve unu ekleyin. Son birkaç pulse ile karıştırın. Harcı streç filmle kapatıp 1 saat buzdolabında dinlendirin.","Islak ellerle ceviz büyüklüğünde toplar yuvarlayıp hafifçe yassılaştırın — 3 cm çapında, 2 cm kalınlığında olmalı.","Yağı 175°C'ye kızdırın. Falafelleri 3-4 dakika, dışı koyu altın sarısı ve çıtır olana kadar kızartın. Kağıt havluda süzün.","Pide ekmeğinin içine marul, domates, turşu ve tahin sosu koyun. Sıcak falafelleri yerleştirip hemen servis edin."
            ],
        )
    ),
    Country(
        id: "tunisia",
        name: "Tunus",
        flag: "🇹🇳",
        latitude: 33.9,
        longitude: 9.5,
        famousDish: Dish(
            id: "couscous_tn",
            name: "Kuskus",
            imageURL: "",
            description: "Buharda pişen irmik ile et ve sebze.",
            ingredients: ["500 g kuskus (orta taneli)","500 g kuzu eti (kuşbaşı)","2 adet kabak (dilimlenmiş)","2 havuç (dilimlenmiş)","200 g nohut (haşlanmış)","2 yemek kaşığı harissa","400 g domates püresi","1 L et suyu"],
            steps: [
                "Kuzu etini küçük parçalar halinde tencerede zeytinyağıyla her tarafı 5 dakika mühürleyin. Soğan ve sarımsak ekleyip 3 dakika kavurun.","Domates püresi, harissa, tuz ve baharatları ekleyin. Et suyunu dökün, kaynayınca kısık ateşte 45 dakika pişirin.","Kabak ve havucu ekleyip 15 dakika daha, sebzeler yumuşayana kadar pişirin. Haşlanmış nohutları son 5 dakikada ekleyin.","Kuskusu geniş bir kaba koyun. Üzerine kaynar su dökün (1:1 oranında). 5 dakika üstünü kapatıp bekletin.","Çatalla kuskusu kabartın, 1 yemek kaşığı zeytinyağı ve tereyağı karıştırın. Tuzlayın.","Tabağa kuskusu yığın, et ve sebzeleri üstüne dizin. Bol sos gezdirip harissa ile servis edin."
            ],
        )
    ),
    Country(
        id: "algeria",
        name: "Cezayir",
        flag: "🇩🇿",
        latitude: 28.0,
        longitude: 1.7,
        famousDish: Dish(
            id: "chakhchoukha",
            name: "Chakhchoukha",
            imageURL: "",
            description: "Parçalanmış ekmek ve et sosu.",
            ingredients: ["4 adet yufka ekmek (parçalanmış)","500 g kuzu eti (kuşbaşı)","1 büyük soğan","200 g nohut (haşlanmış)","400 g domates püresi","2 çay kaşığı ras el hanout baharatı","30 g tereyağı","Tuz"],
            steps: [
                "Kuzu etini tencerede yağla 5 dakika mühürleyin. Soğan ve sarımsak ekleyip 3 dakika kavurun.","Domates püresi, nohut, baharatlar ve 500 ml su ekleyin. Kısık ateşte 1 saat, et yumuşayana kadar pişirin.","Yufka ekmeklerini elle küçük parçalara bölün. Buhar tenceresine veya kevgire koyup 10 dakika buharda ısıtın.","Parçalanan ekmekleri geniş tabağa yayın. Tereyağı eritip üzerine gezdirin.","Et yahnisinin suyundan bolca ekmeklerin üzerine dökün. 2 dakika emmesini bekleyin.","Et parçalarını ve nohutları üstüne dizin. Kalan sosu gezdirip sıcak servis edin."
            ],
        )
    ),
    Country(
        id: "ghana",
        name: "Gana",
        flag: "🇬🇭",
        latitude: 7.9,
        longitude: -1.0,
        famousDish: Dish(
            id: "fufu",
            name: "Jollof Rice (Gana Usulü)",
            imageURL: "",
            description: "Batı Afrika'nın meşhur tek tencere yemeği; baharatlı, acı ve domatesli pilav.",
            ingredients: ["Yasemin pirinci", "Yoğun domates sosu", "Scotch bonnet biberi", "Zencefil", "Kekik"],
            steps: ["Biber, domates ve soğandan pürüzsüz bir sos yapıp yağda kavurun.", "Yıkanmamış pirinci sosa ekleyip tavuk suyuyla beraber kısık ateşte demlendirin."],
        )
    ),
    Country(
        id: "senegal",
        name: "Senegal",
        flag: "🇸🇳",
        latitude: 14.5,
        longitude: -14.5,
        famousDish: Dish(
            id: "thieboudienne",
            name: "Thieboudienne",
            imageURL: "",
            description: "Senegal'in 'balıklı pilav'ı; sebzeler ve aromatik suyun kucaklaşması.",
            ingredients: ["Beyaz etli balık", "Kırık pirinç", "Domates salçası", "Havuç ve patlıcan", "Tamarind"],
            steps: ["Balığı sebzelerle beraber domatesli suda pişirin, balığı çıkarıp pirinci aynı suda haşlayın.", "Pirinç tüm aromayı çekince balık ve sebzelerle harmanlayıp servis yapın."],
        )
    ),
    Country(
        id: "kenya",
        name: "Kenya",
        flag: "🇰🇪",
        latitude: -0.0,
        longitude: 37.9,
        famousDish: Dish(
            id: "nyama_choma",
            name: "Nyama Choma",
            imageURL: "",
            description: "Kenya'da bayramların başrolü; ızgarada saatlerce pişen tam kıvamında et.",
            ingredients: ["Kuzu veya keçi eti", "Kaba tuz", "Limon", "Kachumbari salatası"],
            steps: ["Eti sadece tuz ve limonla ovun.", "Kömür ateşinde çok yavaş bir şekilde 2 saat ızgara yapın.", "Yanında domates-soğan salatası (Kachumbari) ve mısır lapası (Ugali) ile servis edin."],
        )
    ),
    Country(
        id: "tanzania",
        name: "Tanzanya",
        flag: "🇹🇿",
        latitude: -6.4,
        longitude: 34.9,
        famousDish: Dish(
            id: "ugali",
            name: "Ugali ve Nyama",
            imageURL: "",
            description: "Mısır unu lapası ile et.",
            ingredients: ["500 g mısır unu (ince öğütülmüş)","1 L su","500 g dana eti (kuşbaşı)","3 adet domates (doğranmış)","1 soğan (doğranmış)","2 adet biber","1 çay kaşığı tuz"],
            steps: [
                "1 litre suyu geniş tencerede kaynattın. Ateşi kısın.","Mısır ununu bir avuç bir avuç, sürekli karıştırarak ekleyin — topak oluşmamalı.","Karıştırma işlemini tahta kaşıkla 10-15 dakika, hamur çok sert ve tencereden ayrılana kadar sürdürün.","Et yahnisi: Dana etini soğan, domates ve biberle 45 dakika kısık ateşte pişirin. Tuzlayın.","Ugali'yi ıslak ellerle büyük bir top haline getirip tabağa ters çevirerek koyun.","Yanına et yahnisini koyun. Ugali'den parçalar koparıp çukur yaparak yahniyi scooplayarak yiyin."
            ],
        )
    ),
    Country(
        id: "morocco2",
        name: "Madagaskar",
        flag: "🇲🇬",
        latitude: -18.8,
        longitude: 46.9,
        famousDish: Dish(
            id: "romazava",
            name: "Romazava",
            imageURL: "",
            description: "Yeşil yapraklı et çorbası.",
            ingredients: ["500 g dana eti (kuşbaşı)","300 g taze ıspanak","3 adet domates (doğranmış)","1 büyük soğan (doğranmış)","2 cm taze zencefil (rendelenmiş)","3 diş sarımsak (ezilmiş)","2 yemek kaşığı bitkisel yağ","Tuz"],
            steps: [
                "Dana etini kuşbaşı doğrayıp tencerede yağla 5 dakika mühürleyin.","Soğan, sarımsak ve zencefili ekleyip 3 dakika kavurun. Domatesleri ekleyip 5 dakika pişirin.","250 ml su ekleyip kısık ateşte 40 dakika, et yumuşayana kadar pişirin.","Yıkanmış ıspanakları avuç avuç tencereye ekleyin — ıspanak çok çabuk iner.","5 dakika daha pişirip tuz ve biber ile tadını ayarlayın.","Sıcak beyaz pirinç pilavıyla birlikte derin tabakta servis edin."
            ],
        )
    ),
    Country(
        id: "new_zealand",
        name: "Yeni Zelanda",
        flag: "🇳🇿",
        latitude: -40.9,
        longitude: 174.9,
        famousDish: Dish(
            id: "hangi",
            name: "Hangi",
            imageURL: "",
            description: "Toprak altında pişen et ve sebze.",
            ingredients: ["1 kg kuzu eti, 500 g tavuk","4 büyük patates","1 kabak (kumara/tatlı patates)","1/2 lahana","Büyük nehir taşları (ısıtma için)","Islak çuval bezi (örtme için)"],
            steps: [
                "Toprak çukuru kazın (60 cm derinliğinde). İri nehir taşlarını odun ateşi üzerinde 3-4 saat ısıtın.","Çukurun dibine sıcak taşları yerleştirin. Üzerine ıslak çuval bezi serin.","Et parçalarını (kuzu, tavuk) ve sebzeleri (patates, tatlı patates, kabak, lahana) tel sepetlere veya folyo paketlere koyup taşların üzerine yerleştirin.","Üzerine tekrar ıslak çuval bezleri örtün, toprakla kapatın. Hava almamali.","3-4 saat toprak altında buharla yavaş yavaş pişmesini bekleyin.","Dikkatli kazıp çıkarın. Et kemikten ayrılacak kadar yumuşak, sebzeler dumanlı bir tatlılıkta olacaktır. Hep birlikte paylaşarak yiyin."
            ],
        )
    ),
    Country(
        id: "fiji",
        name: "Fiji",
        flag: "🇫🇯",
        latitude: -17.7,
        longitude: 178.0,
        famousDish: Dish(
            id: "kokoda",
            name: "Kokoda",
            imageURL: "",
            description: "Hindistancevizi sütünde marine balık.",
            ingredients: ["500 g taze beyaz etli balık (küp doğranmış)","4 adet limon (suyu sıkılmış)","400 ml hindistancevizi sütü","2 adet domates (küp doğranmış)","1 soğan (ince doğranmış)","1 adet kırmızı biber (ince doğranmış)","Tuz"],
            steps: [
                "Çok taze beyaz balığı 2 cm küpler halinde kesin. Cam kaseye alıp üzerine limon suyunu sıkın.","Buzdolabında 15-20 dakika marine edin — balık dıştan beyazlaşmalı ama ortası yarı saydam kalmalı.","Hindistancevizi sütünü ekleyip nazikçe karıştırın.","Küp doğranmış domates, ince dilimlenmiş soğan ve kırmızı biberi ekleyin.","Tuzla tadını ayarlayın. Buzdolabında 10 dakika daha dinlendirin — tüm tatlar kaynaşsın.","Hindistancevizi kabuğu veya cam kaselerde soğuk olarak servis edin."
            ],
        )
    ),
    Country(
        id: "jamaica2",
        name: "Haiti",
        flag: "🇭🇹",
        latitude: 19.0,
        longitude: -72.4,
        famousDish: Dish(
            id: "griot",
            name: "Griot",
            imageURL: "",
            description: "Kızarmış domuz eti.",
            ingredients: ["1 kg domuz but eti (kuşbaşı)","2 adet portakal (suyu)","4 adet limon (suyu)","4 adet scotch bonnet biber","6 diş sarımsak","1 büyük soğan (doğranmış)","Kızartma yağı (500 ml)","Pirinç pilavı (servis için)"],
            steps: [
                "Domuz etini kuşbaşı doğrayın. Portakal suyu, limon suyu, sarımsak ve soğanla marine edip buzdolabında 4 saat bekletin.","Marine suyunu süzüp eti tencereye alın. Üzerini geçecek kadar su koyup 45 dakika, et yumuşayana kadar haşlayın. Süzün.","Geniş derin tavada 500 ml yağı 175°C'ye kızdırın. Haşlanmış et parçalarını 8-10 dakika, dışı çıtır ve koyu altın rengi olana kadar kızartın.","Kızarırken pikliz hazırlayın: İnce dilim lahana, havuç, scotch bonnet biber ve soğanı sirke ile karıştırın.","Kızarmış etleri kağıt havluda süzün.","Tabağa pirinç pilavı, üstüne çıtır griot parçaları ve yanına pikliz koyarak servis edin."
            ],
        )
    ),
    Country(
        id: "denmark",
        name: "Danimarka",
        flag: "🇩🇰",
        latitude: 56.3,
        longitude: 9.5,
        famousDish: Dish(
            id: "smorrebrod",
            name: "Stegt Flæsk",
            imageURL: "",
            description: "Çıtır döş dilimleri ve maydanoz soslu patates.",
            ingredients: ["Dana/domuz döş dilimleri", "Patates", "Maydanoz", "Süt", "Un"],
            steps: ["Etleri çıtırlaşana dek kızartın.", "Haşlanmış patateslerin üzerine kremalı maydanoz sosu dökerek servis edin."],
        )
    ),
    Country(
        id: "norway",
        name: "Norveç",
        flag: "🇳🇴",
        latitude: 60.5,
        longitude: 8.5,
        famousDish: Dish(
            id: "lutefisk",
            name: "Fårikål",
            imageURL: "",
            description: "Kuzunun lahanayla ağır ateşte piştiği Norveç klasiği.",
            ingredients: ["Kuzu eti", "Beyaz lahana", "Tane karabiber", "Tuz"],
            steps: ["Et ve lahanayı tencereye kat kat dizin.", "Su ekleyip etler yumuşayana dek 2.5 saat pişirin."],
        )
    ),
    Country(
        id: "finland",
        name: "Finlandiya",
        flag: "🇫🇮",
        latitude: 61.9,
        longitude: 25.7,
        famousDish: Dish(
            id: "kalakukko",
            name: "Lohikeitto (Somon Çorbası)",
            imageURL: "",
            description: "Kremalı, dereotlu ve bol somonlu İskandinav kış çorbası.",
            ingredients: ["500 g Taze somon fileto", "3 adet Patates", "1 adet Pırasa", "200 ml Krema", "Bol taze dereotu"],
            steps: ["Pırasaları tereyağında soteleyin, küp patatesleri ve suyunu ekleyip haşlayın.", "Patatesler yumuşayınca küp somonları ve kremayı ilave edin.", "Ocağı kapatıp taze dereotunu içine atın ve sıcak servis yapın."],
        )
    ),
    Country(
        id: "singapore",
        name: "Singapur",
        flag: "🇸🇬",
        latitude: 1.4,
        longitude: 103.8,
        famousDish: Dish(
            id: "laksa",
            name: "Hainanese Chicken Rice",
            imageURL: "",
            description: "Aromatik tavuk suyuyla pişen ipeksi pilav ve tavuk.",
            ingredients: ["Bütün tavuk", "Yasemin pirinci", "Zencefil", "Sarımsak", "Soya sosu"],
            steps: ["Tavuğu zencefille haşlayıp buzlu suya alın.", "Tavuk suyuyla aromatik pilavı pişirip dilimlenmiş tavukla sunun."],
        )
    ),
    Country(
        id: "taiwan",
        name: "Taiwan",
        flag: "🇨🇳🇒🇹🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "taiwan_dish",
            name: "Beef Noodle Soup",
            imageURL: "",
            description: "Baharatlı ve yoğun et sulu Tayvan eriştesi.",
            ingredients: ["Dana incik", "Buğday eriştesi", "Yıldız anason", "Zencefil", "Soya sosu"],
            steps: ["Etleri baharatla 3 saat haşlayın.", "Eriştelerle beraber derin kasede sıcak servis yapın."]
        )
    ),
    Country(
        id: "brunei",
        name: "Brunei",
        flag: "🇧🇳",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "brunei_dish",
            name: "Ambuyat",
            imageURL: "",
            description: "Güney Asya ormanlarındaki sago palmiyesinden elde edilen jelatinimsi eşsiz lezzet.",
            ingredients: ["500 g Sago nişastası", "1 L Sıcak su", "Yerli acılı meyve sosu (Cacah)", "Izgara balık (yanında)"],
            steps: ["Sago tozunu bir kaseye dökün.", "Üzerine kaynar su döküp yapışkan, saydam ve kalın bir tutkal/jel kıvamı alana dek hızla çırpın.", "Bambu çubukları ile sararak özel acılı ve ekşili meyve dip sosuna (Cacah) banın ve çiğnemeden yutarak tüketmeye alışın."]
        )
    ),
    Country(
        id: "slovenia",
        name: "Slovenia",
        flag: "🇸🇮",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "slovenia_dish",
            name: "Potica",
            imageURL: "",
            description: "Ceviz ve tarçınla doldurularak rulo halinde pişirilen geleneksel tatlı çörek.",
            ingredients: ["500 g un", "1 paket maya", "200 ml ılık süt", "300 g ezilmiş ceviz", "150 g şeker", "50 g tereyağı", "Tarçın"],
            steps: ["Un, maya ve süt ile yumuşak bir hamur yoğurun ve 1 saat mayalanmaya bırakın.", "Ceviz, şeker, tarçın ve eritilmiş tereyağını karıştırarak iç harcı hazırlayın.", "Hamuru incecik açıp harcı yayın ve sıkı bir rulo yapın.", "Kalıba yerleştirip 180 derece fırında 45 dakika kızarana dek pişirin."]
        )
    ),
    Country(
        id: "slovakia",
        name: "Slovakia",
        flag: "🇸🇰",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "slovakia_dish",
            name: "Bryndzové Halušky",
            imageURL: "",
            description: "Patates hamurundan yapılan küçük gnocchi benzeri köftelerin, koyun peyniri ve pastırma ile harmanlandığı ikonik yemek.",
            ingredients: ["4 orta boy patates (rendelenmiş)", "200 g un", "150 g Bryndza (veya Feta) peyniri", "100 g tütsülenmiş domuz veya dana pastırması (çıtır)"],
            steps: ["Rendelenmiş patates ve unu karıştırarak yapışkan bir hamur elde edin.", "Hamurdan küçük parçalar kopararak kaynayan tuzlu suya atın. Su yüzeyine çıktıklarında pişmiş demektir.", "Pastırmaları tavada çıtırlaşana kadar kavurun.", "Halušky'yi peynirle karıştırın, üzerine çıtır pastırma ve yağını ekleyerek servis yapın."]
        )
    ),
    Country(
        id: "eritrea",
        name: "Eritrea",
        flag: "🇪🇷",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "eritrea_dish",
            name: "Zigni",
            imageURL: "",
            description: "Eritre'nin geleneksel, yoğun baharatlı ve acılı et güveci.",
            ingredients: ["500 g dana kuşbaşı eti", "2 büyük soğan (ince doğranmış)", "3 yemek kaşığı Berbere baharatı", "2 adet domates", "Sıvı yağ", "Tuz"],
            steps: ["Geniş bir tencerede soğanları yağsız olarak terletin, ardından yağı ekleyip karamelize olana kadar kavurun.", "Berbere baharatını ve doğranmış domatesleri ekleyip sos kıvamına getirin.", "Dana etlerini ilave edin ve kendi suyunu salıp çekene dek pişirin.", "Üzerini geçecek kadar su ekleyip, etler tamamen lif lif ayrılana dek kısık ateşte 90 dakika pişirin."]
        )
    ),
    Country(
        id: "yemen",
        name: "Yemen",
        flag: "🇾🇪",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "yemen_dish",
            name: "Saltah",
            imageURL: "",
            description: "Kökeni Osmanlı'ya kadar uzanan, taş güveçte (haraqi) fokurdayarak kaynayan et suyu, sebze ve çemen otlu köpük ile servis edilen sulu yemek.",
            ingredients: ["1 litre koyu et suyu", "200 g kıyma", "2 adet patates", "1 adet domates", "1 yemek kaşığı Hawaej baharatı", "Hulba (çemen otu sosu)"],
            steps: ["Kıymayı, domates ve patatesi taş bir güveçte soteleyin.", "Tuz ve Hawaej baharatını ekleyerek karıştırın, eti mühürleyin.", "Zengin et suyunu ekleyin ve sebzeler ezilecek kıvama gelene dek yüksek ateşte fokurdatın.", "En üste çırpılmış çemen otu (Hulba) ekleyip henüz kaynarken sıcak lavaş eşliğinde servis edin."]
        )
    ),
    Country(
        id: "antarctica",
        name: "Antarctica",
        flag: "🇦🇶",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "antarctica_dish",
            name: "Hoosh (Pemmikana)",
            imageURL: "",
            description: "Güney Kutbu kaşiflerinin vazgeçilmezi olan, kurutulmuş et, yağ ve pisküvi karışımından yapılan enerji bombası püre.",
            ingredients: ["200 g pemmican (kurutulmuş et ve yağ karışımı)", "4 adet kutup bisküvisi (hard-tack)", "2 su bardağı su", "Tuz", "Karabiber"],
            steps: ["Kurutulmuş etleri (pemmican) ve suyu kamp ocağındaki tencereye alın.", "Su kaynadıktan sonra iç yağı ve etlerin çözülmesini sağlayın.", "Sert kutup bisküvilerini elinizle ufak parçalara bölerek kaynayan püreye ilave edin.", "Bisküviler suyu çekip lapa kıvamına geldiğinde, karabiber ile tatlandırıp sıcak sıcak tüketin."]
        )
    ),
    Country(
        id: "cyprus",
        name: "Cyprus",
        flag: "🇨🇾",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "cyprus_dish",
            name: "Şeftali Kebabı",
            imageURL: "",
            description: "İncecik kuzu gömlek yağına sarılmış, taze maydanozlu kuzu veya dana kıymadan yapılan ızgara sosis.",
            ingredients: ["500 g kuzu kıyma", "1 adet kuzu gömleği (terp)", "1 büyük soğan (ince kıyım)", "Yarım demet maydanoz", "Tuz", "Karabiber"],
            steps: ["Kuzu gömleğini yumuşaması için ılık suda 10 dakika bekletin, ardından ufak kareler halinde kesin.", "Kıyma, çok ince kıyılmış soğan, maydanoz, tuz ve karabiberi vurarak iyice yoğurun.", "Harçtan silindirik köfteler yapıp her birini kuzu gömleği ile hava almayacak şekilde sarın.", "Kömür ateşinde veya ızgarada dışı çıtır, gömlek yağı tamamen eriyene dek çevirerek pişirin."]
        )
    ),
    Country(
        id: "libya",
        name: "Libya",
        flag: "🇱🇾",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "libya_dish",
            name: "Bazin",
            imageURL: "",
            description: "Et ve domates soslu, geleneksel arpa unundan yapılan volkan görünümlü bir başyapıt.",
            ingredients: ["3 su bardağı arpa unu", "500 g kuzu pirzola", "2 yemek kaşığı salça", "1 adet soğan", "Yarım su bardağı zeytinyağı", "Sert haşlanmış yumurta (servis için)"],
            steps: ["Kuzu etini tencerede zeytinyağı ve soğanla kavurun, salçayı ekleyip kokusu çıkana dek pişirin.", "Sıcak su ekleyin ve etler yumuşayana dek güveç şeklinde kaynatın.", "Ayrı bir kapta su kaynatıp arpa ununu tel çırpıcı ile sürekli karıştırarak sert bir lapa (hamur) elde edene dek yoğurun.", "Hamuru büyük bir tabağın ortasına yarım küre şeklinde koyun. Etraftaki boşluğa kuzu etini, domates sosunu ve haşlanmış yumurtaları yerleştirin."]
        )
    ),
    Country(
        id: "djibouti",
        name: "Djibouti",
        flag: "🇩🇯",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "djibouti_dish",
            name: "Skoudehkaris",
            imageURL: "",
            description: "Pirinç, kuzu eti ve Orta Doğu baharatlarının olağanüstü uyumu ile yapılan geleneksel bir pilav tabağı.",
            ingredients: ["500 g kemikli kuzu eti", "2 su bardağı basmati pirinci", "1 adet soğan", "2 diş sarımsak", "Yarım çay kaşığı kakule", "Yarım çay kaşığı tarçın"],
            steps: ["Kuzu etini tencereye alıp kahverengileşene kadar yüksek ateşte çevirin.", "İnce doğranmış soğan, sarımsak, kakule ve tarçını ekleyerek baharatların enfes kokusu çıkana kadar kavurun.", "Etlerin üzerini geçecek kadar su ilave edin ve etler pişene kadar 45 dakika haşlayın.", "Önceden ıslatılmış basmati pirincini tencereye alın. Pilav suyunu çekene kadar kapağı kapalı halde pişirip demlendirin."]
        )
    ),
    Country(
        id: "uganda",
        name: "Uganda",
        flag: "🇺🇬",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "uganda_dish",
            name: "Matoke ve Yer Fıstığı Sosu",
            imageURL: "",
            description: "Buharda pişirilip püre haline getirilmiş yeşil muz yemeğinin, zengin fıstık sosuyla sunumu.",
            ingredients: ["5 adet olgunlaşmamış yeşil matoke muzu", "1 su bardağı şekersiz yer fıstığı ezmesi", "1 adet soğan", "1 adet domates", "2 yemek kaşığı sıvı yağ"],
            steps: ["Yeşil muzları dikkatlice soyun (ellerinizi hafifçe yağlayın). Tencerede haşlayarak veya muz yapraklarında buharda yumuşayana kadar pişirin.", "Yumuşayan muzları pürüzsüz ama yoğun bir püre haline getirin.", "Ayrı bir tavada soğan ve doğranmış domatesi sıvı yağda kavurun. Yer fıstığı ezmesini suyla seyrelterek tavaya ekleyin.", "Kısık ateşte sos koyulaşıp yağı üste çıkana kadar 10 dakika pişirin. Pürenin yanında sıcak servis yapın."]
        )
    ),
    Country(
        id: "rwanda",
        name: "Rwanda",
        flag: "🇷🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "rwanda_dish",
            name: "Isombe",
            imageURL: "",
            description: "Haşlanmış manyok (cassava) yapraklarının yoğun lezzetli bir güvecidir.",
            ingredients: ["500 g ince kıyılmış manyok veya ıspanak yaprağı", "2 yemek kaşığı fıstık ezmesi", "1 adet patlıcan (haşlanmış ve ezilmiş)", "1 adet ıspanaklı bulyon veya et suyu", "1 adet soğan"],
            steps: ["Manyok veya ıspanak yapraklarını tamamen çiğnemesi kolay ve yumuşak bir hal alana kadar yaklaşık 1 saat kaynamış suda haşlayın.", "Patlıcan ve soğanı ufak doğrayıp yapraklara ilave edin.", "Bir bardak suda açtığınız zengin fıstık ezmesini ve bulyonu tencereye katarak tüm malzemeyi entegre edin.", "15 dakika daha tüm aromalar geçene dek kaynatıp Afrika rüyası Ugali ile birlikte tüketin."]
        )
    ),
    Country(
        id: "north_macedonia",
        name: "North Macedonia",
        flag: "🇲🇰",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "north_macedonia_dish",
            name: "Tavče Gravče",
            imageURL: "",
            description: "Güveçte fırınlanmış biberli ve kırmızı soğanlı beyaz fasulye.",
            ingredients: ["500 g beyaz fasulye (geceden ıslatılmış)", "2 adet iri kırmızı soğan", "2 tatlı kaşığı kırmızı toz biber", "2 yemek kaşığı sıvı yağ", "Tuz ve taze karabiber", "1 demet maydanoz"],
            steps: ["Geceden ıslatılmış beyaz fasulyeleri yumuşayana dek haşlayın ve suyunu hafifçe süzün.", "Kırmızı soğanları ince ince doğrayın ve yağda karamelize olana kadar kavurun. İçine bol kırmızı toz biber ve fasulyeleri ekleyip harmanlayın.", "Hazırlanan bu fasulye harcını bir toprak güvece (tavče) aktarın.", "Üstü nar gibi kızarıp suyu koyulaşana dek 180 derece fırında 30-40 dakika fırınlayarak sıcak servis yapın."]
        )
    ),
    Country(
        id: "montenegro",
        name: "Montenegro",
        flag: "🇲🇪",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "montenegro_dish",
            name: "Njeguški Pršut ile Kacamak",
            imageURL: "",
            description: "Peynirli mısır irmiği püresinin (Kacamak), meşhur tütsülenmiş kuru etle sunumu.",
            ingredients: ["2 su bardağı mısır irmiği", "3 orta boy patates", "150 g kaymak veya taze peynir", "100 g ince dilimlenmiş Njeguški pršutu (veya pastırma)", "Tuz"],
            steps: ["Küp doğranmış patatesleri iyice haşlayın. Aynı suya yavaşça mısır irmiği ekleyip çırpın ve pürüzsüz bir püre yapın.", "Pürenin (Kacamak) içine taze kaymak ve peynir ilave ederek pürüzsüz bir şekilde erimesini sağlayın.", "Tütsülenmiş kurutulmuş eti (Pršut) dilimlerini ayrı bir tahtada hazırlayın.", "Sıcak mısır püresinin üzerine et dilimlerini koyarak ağır ve muazzam bir dağ yemeği elde edin."]
        )
    ),
    Country(
        id: "kosovo",
        name: "Kosovo",
        flag: "🇰🇻",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "kosovo_dish",
            name: "Flija",
            imageURL: "",
            description: "Sacda kat kat yapılan, dairesel kreplerarası kaymak harçlı şaheser.",
            ingredients: ["Hamur için: 500 g un, 3 su bardağı su, Tuz", "İç Harç için: 200 g taze kaymak", "150 g yoğurt", "1 yemek kaşığı tereyağı"],
            steps: ["Un, su ve tuz ile bildiğimiz sıvı krep hamuru tutun.", "Ayrı bir kasede kaymak, yoğurt ve eritilmiş tereyağını çırpın (bu ara malzeme olacak).", "Tereyağıyla ısıtılmış bir baca altına veya sac tava tabanına kepçeyle krep hamurunu yıldız motifleri şeklinde veya ince şeritlerle dökün. Altı kızarana kadar ısıtın.", "Üzerine yoğurtlu/kaymaklı sostan sürün, sonra bir kat daha hamur dökün. Bunu 2-3 saat boyunca kat kat yapıp dev bir milföy krep pastası olana kadar pişirin."]
        )
    ),
    Country(
        id: "south_sudan",
        name: "South Sudan",
        flag: "🇸🇸",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "south_sudan_dish",
            name: "Kisra ve Bamya Güveci",
            imageURL: "",
            description: "Sorgum unundan yapılan ultra ince ekmeğin fıstıklı bamya güvecine eşlik ettiği geleneksel yemek.",
            ingredients: ["1 su bardağı sorgum veya teff unu", "Yarım su bardağı buğday unu", "250 g bamya", "1 adet soğan", "1 su bardağı ezilmiş yer fıstığı", "Et bulyon"],
            steps: ["Sorgum unu, buğday unu ve suyu karıştırıp bir gece mayalandırın. Ardından sacda kağıt kadar ince krepler (Kisra) şeklinde pişirin.", "Geniş bir tencerede doğranmış soğanları kavurun, suyu ilave edip et bulyon atın.", "Doğranmış bamyaları ekleyip 10 dakika haşlayın. Pürüzsüz olması için iyice karıştırın.", "Yer fıstığı ezmesini ekleyip 5 dakika daha koyulaşana kadar pişirip Kisra ekmeğiyle yiyin."]
        )
    ),
    Country(
        id: "western_sahara",
        name: "Western Sahara",
        flag: "🇪🇭",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "western_sahara_dish",
            name: "Mreifisa",
            imageURL: "",
            description: "Sahra çölü göçebelerinin taş fırınlarda hazırladıkları tavşan veya kuzu etli güveç.",
            ingredients: ["400 g kuzu veya deve eti", "1 adet mayasız yassı ekmek", "1 büyük soğan", "Zeytinyağı", "Zencefil tozu"],
            steps: ["Eti iri bloklar halinde kesip zeytinyağında mühürleyin, soğan ve zencefil tozu ilave edin.", "Tencereye etin üstünü kapatacak kadar su ekleyip 2 saat boyunca kısık ateşte pişirin.", "Çölde hazırlanan kalın mayasız ekmeği ufak parçalara (lokmalık) koparın ve servis kasesinin dibine yerleştirin.", "Uzun süre pişen etli sıvıyı bu ekmeklerin üzerine kepçeyle aktararak yemeğin dinlenmesini sağlayın."]
        )
    ),
    Country(
        id: "papua_new_guinea",
        name: "Papua New Guinea",
        flag: "🇵🇬",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "papua_new_guinea_dish",
            name: "Mumu",
            imageURL: "",
            description: "Toprak fırın kullanılarak ağır ağır pişirilen, Papua Yeni Gine'nin geleneksel kutlama yemeği.",
            ingredients: ["1 kg domuz veya tavuk eti, iri parçalanmış", "500 g tatlı patates (kaukau), soyulmuş ve doğranmış", "2 adet muz (plantain), kalın dilimlenmiş", "1 demet ıspanak veya taro yaprağı", "400 ml hindistan cevizi sütü", "1 bütün ananas, küp doğranmış", "Geleneksel muz yaprakları (sarmak için)"],
            steps: ["Mutfak uyarlaması için fırınınızı 160 dereceye ısıtın ve büyük bir güveç tenceresi hazırlayın.", "Güveç tenceresinin tabanını geniş muz yaprakları ile döşeyin. Üzerine sırasıyla tatlı patates ve muz (plantain) dilimlerini yerleştirin.", "Et parçalarını meyvelerin üzerine dizin. Küp doğranmış ananasları ve ıspanak yapraklarını etlerin etrafına yayın.", "Bol miktarda hindistan cevizi sütünü tüm malzemelerin üzerine gezdirin. Tuz ilave edin.", "Muz yapraklarını sıkıca kapatarak malzemelerin kendi buharında pişmesini sağlayın. Fırında yaklaşık 2 ila 3 saat pişirin."]
        )
    ),
    Country(
        id: "democratic_republic_of_the_congo",
        name: "Democratic Republic of the Congo",
        flag: "🇨🇩",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "democratic_republic_of_the_congo_dish",
            name: "Saka-Saka (Pondu)",
            imageURL: "",
            description: "Manyok yaprakları ve palmiye yağının füme balıkla buluştuğu Orta Afrika başyapıtı.",
            ingredients: ["1 kg Manyok yaprağı", "Palmiye yağı", "Füme tatlısu balığı", "Sarımsak ve soğan"],
            steps: ["Manyok yapraklarını yumuşayana dek iki saat haşlayıp ezin.", "Füme balık, soğan ve palmiye yağı ile harmanlayıp yoğun bir sote kıvamına gelene dek pişirin."]
        )
    ),
    Country(
        id: "somalia",
        name: "Somalia",
        flag: "🇸🇴",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "somalia_dish",
            name: "Suqaar",
            imageURL: "",
            description: "Hızlıca sotelenmiş, minik küp et parçalarından oluşan meşhur Somali et sotesi.",
            ingredients: ["500 g dana eti (çok küçük küp doğranmış)", "1 soğan", "1 havuç", "1 yeşil biber", "1 çay kaşığı Xawaash (Somali baharat karışımı)"],
            steps: ["Dana etlerini sıvı yağda yüksek ateşte hizlica kendi suyunu salıp çekene dek kavurun.", "Havuç ve yeşil/kırmızı biberleri ince zarlar halinde doğrayıp ete ilave edin.", "Mükemmel aromatik Xawaash baharatını serpip soğanları karamelize edene dek 10 dk soteleyin.", "Yanına Somali krebi olan Sabaayad ya da pirinç pilavı ile servis tabağına alın."]
        )
    ),
    Country(
        id: "sudan",
        name: "Sudan",
        flag: "🇸🇩",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "sudan_dish",
            name: "Ful Medames",
            imageURL: "",
            description: "Geleneksel Sudan sofra kültürü: susam yağıyla taçlandırılmış fava fasulyesi.",
            ingredients: ["2 su bardağı fava (bakla)", "1 büyük soğan", "3 yemek kaşığı susam yağı", "Kimyon", "Yarım limon", "Goraasa (Sudan mayasız ekmeği)"],
            steps: ["Geceden ıslağınız fava fasulyelerini tamamen ezilecek kadar yumuşayana dek haşlayın.", "Fasulyeleri ezip kimyon, limon suyu ve bir tutam tuzla tatlandırın.", "Doğranmış soğan ve taze maydanozu üzerine serpin.", "Zengin susam yağını en üstte gezdirin, taze ekmekle (Goraasa) doyasıya tüketin."]
        )
    ),
    Country(
        id: "chad",
        name: "Chad",
        flag: "🇹🇩",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "chad_dish",
            name: "Daraba",
            imageURL: "",
            description: "Çad'a özgü fıstık ezmesi, bamya ve yeşilliklerin buluştuğu zengin bitkisel çorba.",
            ingredients: ["1 su bardağı taze bamya", "Yarım su bardağı fıstık ezmesi", "2 adet domates", "Yarım su bardağı ıspanak", "Tatlı patates"],
            steps: ["Tatlı patatesi ve bamyayı küp doğrayarak suda yumuşayana dek haşlayın.", "Soğan ve domatesi ekleyerek hafifçe ezerek kaynatmaya devam edin.", "Fıstık ezmesini sosa kalınlık katması için ekleyin. Topaklanmaması için sıcak suyla önceden açın.", "İnce kıyılmış ıspanakları ekleyerek 10 dakika sonra ocaktan alın."]
        )
    ),
    Country(
        id: "the_bahamas",
        name: "The Bahamas",
        flag: "🇧🇸",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "the_bahamas_dish",
            name: "Conch Salad",
            imageURL: "",
            description: "Okyanus esintisi: deniz salyangozu ceviche'si.",
            ingredients: ["Taze deniz salyangozu (Conch)", "Lime suyu", "Habanero acı biber", "Yeşil dolmalık biber"],
            steps: ["Eti küp küp ufak doğrayıp narenciye yağmuruna tutun.", "Sebzelerle karıştırıp çiğ olarak tüketmek için buzda marine edin."]
        )
    ),
    Country(
        id: "falkland_islands",
        name: "Falkland Islands",
        flag: "🇫🇰",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "falkland_islands_dish",
            name: "Smoked Mutton",
            imageURL: "",
            description: "Zengin dağ koyununun falkland adasında çalıyla tütsüsü.",
            ingredients: ["Koyun budu", "Diddle-ode çalı reçeli"],
            steps: ["Koyunu reçelle saatlerce marine edip dumanlı fırına sürün."]
        )
    ),
    Country(
        id: "greenland",
        name: "Greenland",
        flag: "🇬🇱",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "greenland_dish",
            name: "Suaasat",
            imageURL: "",
            description: "Yabani kutup bölgesi: arpa ve soğanlı deniz-fok veya geyik çorbası.",
            ingredients: ["Geyik veya dana eti", "1 bardak arpa (inci)", "Karabiber", "Soğan"],
            steps: ["Yüksek oranda et yağını sıcak suda şoklayın, soğan ekleyin.", "Arpanın lapa kıvamına getirdiği suyu etlerle kapalı tencere usulü buza karşı sıcak çorba halinde dökün."]
        )
    ),
    Country(
        id: "french_southern_and_antarctic_lands",
        name: "French Southern and Antarctic Lands",
        flag: "🇹🇫",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "french_southern_and_antarctic_lands_dish",
            name: "Légine Australe au Beurre (Fransız Usulü Morina)",
            imageURL: "",
            description: "Güney Okyanusunun buz gibi sularından yakalanan Diş Balığının tereyağlı mühürlenmesi.",
            ingredients: ["2 kalın dilim Patagonya Morina Balığı", "50 g Fransız tereyağı", "Yarım limonun suyu", "Biberiye", "Deniz tuzu", "Bebek patates"],
            steps: ["Buz gibi suların ipeksi balığını tamamen kurulayın ve biberle tatlandırın.", "Döküm tavayı yüksek ateşte ısıtıp balığın iki tarafını da tereyağında 2'şer dakika mühürleyin.", "Eriyip köpüren aromalı yapı bir kaşıkla sürekli olarak balıkların üzerine dökerek pişirin.", "Limon suyu gezdirerek fırınlanmış patates yatağında servis edin."]
        )
    ),
    Country(
        id: "east_timor",
        name: "East Timor",
        flag: "🇹🇱",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "east_timor_dish",
            name: "Ikan Sabuko",
            imageURL: "",
            description: "Taze Pasifik balığının demirhindi ve baharatlarla marine edilip muz yaprağına sarılıp ızgara yapılması.",
            ingredients: ["1 bütün taze okyanus balığı (snapper)", "Demirhindi ezmesi (Tamarind)", "1 tatlı kaşığı zerdeçal", "Acı biber", "Fesleğen", "Sarmak için muz yaprakları"],
            steps: ["Demirhindi ezmesi, zerdeçal ve ezilmiş acı biberlerle kalın bir sosa ulaşın.", "Balığın içine ve dışına bu aromatik sosu 3 diş sarımsakla birlikte masaj yaparak yedirin.", "Balığı muz yaprağının içine koyup paket halinde çok sıkı bir rulo yapın.", "Köz ateşinde her iki tarafını 10 dakika muz yapraklarıyla tütsüleyerek buharda pişmesini sağlayın."]
        )
    ),
    Country(
        id: "lesotho",
        name: "Lesotho",
        flag: "🇱🇸",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "lesotho_dish",
            name: "Chakalaka & Pap",
            imageURL: "",
            description: "Yoğun baharatlı sebze sotesinin (Chakalaka), mısır unu lapası (Pap) eşliğinde servis edildiği dağ krallığı lezzeti.",
            ingredients: ["2 su bardağı mısır unu (Pap için)", "2 havuç", "1 kırmızı biber", "1 teneke pişmiş fasulye (Baked beans)", "Köri tozu"],
            steps: ["Derin suda mısır ununu azar azar döküp sürekli çırparak lapa haline getirin ve 20 dk demlendirin.", "Havuç ve biberleri zar gibi doğrayarak kalın tabanlı tavada yağ ile karamelize kavurun.", "Pişmiş kuru fasulyeleri ve bolca köri baharatını tavadaki sebzeye ekleyerek 10 dakika kaynatıp sos (Chakalaka) oluşturun.", "Kalın mısır lapasını kaselere tepeleme alın, üzerine acılı ve soslu Chakalaka'yı bolca dökün."]
        )
    ),
    Country(
        id: "nicaragua",
        name: "Nicaragua",
        flag: "🇳🇮",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "nicaragua_dish",
            name: "Gallo Pinto",
            imageURL: "",
            description: "Kırmızı fasulye ve pirincin, soğanlı ve özel Salsa Lizano soslu destansı Karayip karışımı.",
            ingredients: ["2 su bardağı pişmiş kırmızı iri fasulye", "2 su bardağı ertesi günden kalma beyaz pirinç pilavı", "1 soğan", "Salsa Lizano (özel baharatlı sos)", "Kişniş"],
            steps: ["Geniş tavada soğanı pembeleşene kadar soteleyin.", "Kendi yoğun koyu suyuyla beraber haşlanmış kırmızı fasulyeleri tavaya ilave edin.", "Bir gün önceden kalma pirinç pilavını ekleyip fasulye suyu pirinçlere kırmızımsı/siyah bir renk verene dek sürekli kavurun.", "Tatlı Salsa Lizano sosunu gezdirip üzerine ince kıyılmış taze kişniş serperek kahvaltı veya akşam yemeği olarak tüketin."]
        )
    ),
    Country(
        id: "el_salvador",
        name: "El Salvador",
        flag: "🇸🇻",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "el_salvador_dish",
            name: "Pupusa",
            imageURL: "",
            description: "Mısır hamuruyla harmanlanıp içine peynir, kıyma suyu ve fasulye doldurulan ülkenin efsanevi gözlemesi.",
            ingredients: ["Mısır unu (Masa Harina)", "Ilık su", "Eriyen peynir (Oaxaca veya Mozzarella)", "Kızarmış fasulye püresi (Refried beans)", "Chicharron (domuz/dana kavurma parçaları)"],
            steps: ["Mısır unu ve suyu yoğurup nemli yumuşak kalın bir hamur (Masa) üretin.", "Hamurdan avuç içi kadar koparıp ortasını çanak şeklinde açın. Peynir, fasulye ve eti doldurun.", "Hamuru geri kapatıp elinizle düz bir tabak biçiminde ezerek kalın bir yassı krep haline getirin.", "Hiç yağ konmamış kuru döküm sac tavada her iki tarafını eşit şekilde siyah lekeler alana kadar pişirip Curtido salatasıyla (lahana turşusu) yiyin."]
        )
    ),
    Country(
        id: "belize",
        name: "Belize",
        flag: "🇧🇿",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "belize_dish",
            name: "Stew Chicken & Rice",
            imageURL: "",
            description: "Kahverengi şeker esintisi ile tavuk pirinç fasulye üçlüsü.",
            ingredients: ["Tavuk", "Red recado", "Fasulye", "Pirinç"],
            steps: ["Recado ile piliç marine edilir, şeker kavrularak karamel sosunda 40 dk suyunu kaynatır."]
        )
    ),
    Country(
        id: "guyana",
        name: "Guyana",
        flag: "🇬🇾",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "guyana_dish",
            name: "Pepperpot",
            imageURL: "",
            description: "Güney Amerika yerlileri (Arawak) mirası; Manyok kökü özütü (cassareep) ile kapkara yapılan tatlı acılı sığır yahnisi.",
            ingredients: ["1 kg kemikli sığır veya öküz eti", "Yarım su bardağı Cassareep (Koyu manyok özütü)", "2 adet piri-piri acı biber", "Tarçın çubuğu", "Karanfil", "Pamuk gibi taze Guyana ekmeği"],
            steps: ["Eti yıkayıp kalın tabanlı dev çömleğe yerleştirin.", "İçine zift rengindeki tatlı-acı Cassareep sosunu, acı biberleri, karanfil ve çubuk tarçını ekleyin.", "Kısık odun ateşinde veya yavaş fırında en az 3 saat fokurdatarak sosun tamamen kapkara ve efsanevi bir şuruba dönüşmesini bekleyin.", "Günler geçtikçe tadı güzelleşen bu destansı ziyafeti taze ekmek banarak yiyin."]
        )
    ),
    Country(
        id: "suriname",
        name: "Suriname",
        flag: "🇸🇷",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "suriname_dish",
            name: "Pom",
            imageURL: "",
            description: "Hollanda ve Endonezya rüzgarları taşıyan; pomtayer kökü, turunçgiller ve tavuğun birleştiği dev cips fırını tabağı.",
            ingredients: ["1 kg rendelenmiş Pomtayer (ya da iri Taro kökü)", "500 g kemikli tavuk parçaları", "Yarım çay bardağı narenciye suyu (turunç/mandalina)", "1 domates", "Kimyon ve soğan"],
            steps: ["Tavukları, asidik turunç narenciye yağmuru ve kimyon esintisiyle domatesli sulu bir sote yapıp kızartın.", "Pomtayer köklerini tamamen rendeleyin, sulu tavuk yahnisiyle derin bir kapta hiç boşluk bırakmadan yoğurun.", "Geniş derin bir fırın kabına yayıp üstüne bol tereyağı atın.", "Fırında üstü kaya gibi kahverengi bir cips haline gelene dek 1.5 saat üstü açık pişirin."]
        )
    ),
    Country(
        id: "puerto_rico",
        name: "Puerto Rico",
        flag: "🇵🇷",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "puerto_rico_dish",
            name: "Mofongo",
            imageURL: "",
            description: "Sarımsak gömülü kızarmış yeşil muz plantain havana dövüşü.",
            ingredients: ["Yeşil plantain (muz)", "Sarımsak karanfilleri tonla", "Chicharron (domuz/dana krakeri yağı)", "Tuzlu et suyu"],
            steps: ["Muzları kızgın yağda dilimce bronzlaşana dek şoklayın.", "Derin tahta havana doldurup sıcakken üzerine çıtır dana cızbız yağı ve sarımsaklarla var gücünüzle macunlaşana kadar vurun.", "Kubbe şeklinde fırlatıp kaseye oturtun. Üstüne karides yahni dökün."]
        )
    ),
    Country(
        id: "zimbabwe",
        name: "Zimbabwe",
        flag: "🇿🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "zimbabwe_dish",
            name: "Sadza ve Yabani Ispanak",
            imageURL: "",
            description: "Yarım kıta afrika'nın enerjisi bembeyaz kaya gibi kalın mısır unu sadzası.",
            ingredients: ["Öğütülmüş beyaz Mısır unu (Mealiel meal)", "Su", "Yeşillik (çimdik)", "Bazen sığır kavurması"],
            steps: ["Mısır ununu yoğun koyu fokurdayan suda durmaksızın çırparak püre halini geçirtip lapa bir kaya kıvamına ulaştırın.", "Sağ avuca sıcak sıcak alarak yuvarlayıp, ortasına parmağınızı bastırıp et suyunun veya ıspanak suyunun küveti haline getirin."]
        )
    ),
    Country(
        id: "botswana",
        name: "Botswana",
        flag: "🇧🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "botswana_dish",
            name: "Seswaa",
            imageURL: "",
            description: "Düğünlerin ve törenlerin baştacı; iri kaya tuzuyla uzun süre haşlanıp tahta tokmağıyla sümüksü dövülen sığır.",
            ingredients: ["1.5 kg kaslı, sinirli sığır eti (veya keçi eti)", "Sadece 3 yemek kaşığı iri denizkabağı tuzu", "Bol Su"],
            steps: ["Geniş döküm veya demir tencerede eti sadece su ve kalın tuz eşliğinde kapalı kapakta 4-5 saat yüksek ısı eritişiyle yavaşlatın.", "Su neredeyse bitecek, fakat et henüz dağılmayacak; o an eti tencereden tahta bir çanağa alın.", "Sağlam ahşap havan tokmağıyla etleri lif lif sakızlaşana ve tamamen ufak şeritlere ayrılana dek eze eze dövün.", "Sımsıcak saf et aromasını hissedecek şekilde beyaz Pap yanına doldurup yiyin."]
        )
    ),
    Country(
        id: "namibia",
        name: "Namibia",
        flag: "🇳🇦",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "namibia_dish",
            name: "Kapana",
            imageURL: "",
            description: "Tuz, chilili ve Afrika biberiyle sarsılmış anlık barbekü sokak lezzeti sığır şiş.",
            ingredients: ["Zar atılmış kaliteli sığır veya oy kümesi", "Mangal kömürü", "Kapana spice (kırmızı biber, fıstık tozu)", "Taze Salsa"],
            steps: ["Etleri ateşin hemen üstünde hiç marine etmeden şok alevle pişirin.", "Tabağa alır almaz elinizle devasa bir spice patlaması yapıp salsa ile katlayıp hüpletin."]
        )
    ),
    Country(
        id: "mali",
        name: "Mali",
        flag: "🇲🇱",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "mali_dish",
            name: "Tigadegena",
            imageURL: "",
            description: "Zengin ve çok doyurucu bir diğer fıstık ezmeli Batı Afrika harikası, ancak daha dumanlı sığır versiyonu.",
            ingredients: ["Sığır eti", "Közlenmiş domatesler", "Yer fıstığı", "Manyok kökü"],
            steps: ["Et ve sebzeleri mühürleyerek kavurun.", "Köz sebze ve yer fıstığı ile saatlerce haşlayın."]
        )
    ),
    Country(
        id: "mauritania",
        name: "Mauritania",
        flag: "🇲🇷",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "mauritania_dish",
            name: "Thieboudienne (Cheb u Jin)",
            imageURL: "",
            description: "Senegal ortak kültürünün enfes dehlizinde; parçalanmamış bütün kurutulmuş balık asitli pirinç tavası.",
            ingredients: ["Taze veya kurutulmuş Atlantik balığı", "Kırık pirinç (jasmine benzeri)", "Domates püresi", "Havuç ve biber", "Tamarind asidi"],
            steps: ["Balıkların içini sarımsak, maydanoz, biber ezmesiyle harçlayıp tam olarak yağda şoklayıp derinlemesine kızartın.", "Fokurdayan domates, tamarind ve havuçlu yoğun sosun içine tüm balığı batırıp suyu aromatize edin, ardından sebzelerle balığı kenara alın.", "O muhteşem umami dolgulu asitli balık suyuna çiğ pirinçleri ekleyerek çekene kadar demlendiriverin.", "Kocaman tepsiye kızıl pirinci yayıp, merkeze balığı oturtun. Efsane bir şölen!"]
        )
    ),
    Country(
        id: "benin",
        name: "Benin",
        flag: "🇧🇯",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "benin_dish",
            name: "Kuli-Kuli & Fufu",
            imageURL: "",
            description: "Fıstık yağından sıkılarak yapılan çıtır kuli-kuli rulolarının doyurucu patates-manyok püresi Fufu ile tadımı.",
            ingredients: ["Kavrulmuş yer fıstığı ezmesi (yağı çekilmiş)", "Tatlı patates veya manyok unu (Fufu için)", "Acı kırmızı kurutulmuş biber", "Tuz"],
            steps: ["Yer fıstığını kavurun. Tüm yağını dışarı atana dek çok güçlü bir pres veya sıkma bezinde sıkarak fıstık ununu ayırın.", "Yağsız fıstık ezmesini topçuk veya sosis ruloları şekline getirin; tamamen kuruması için güneşe atın. Bunlar çıtır Kuli-kuli cipsleri olacak.", "Tencerede suyu yoğun fufu unuyla hızla karıştırarak esneyebilen sakız kütlesine (fufu) çevirin.", "Fufuyu tabağa top yapıp, etrafına çıtır Kuli-kuli dizip çorbaya banarak yiyin."]
        )
    ),
    Country(
        id: "niger",
        name: "Niger",
        flag: "🇳🇪",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "niger_dish",
            name: "Jerma Fasulye Yahnisi (Djerma Stew)",
            imageURL: "",
            description: "Pirinç, kızarmış et, fıstık sosu ve siyah gözlü kara fasulyenin uzun saatler kucaklaşması.",
            ingredients: ["200 g siyah gözlü fasulye (börülce)", "300 g kuzu eti", "3 yemek kaşığı pirinç", "Yer fıstığı suyu", "Et bulyon"],
            steps: ["Koyun veya kuzu etlerini kendi ateşinde mühürleyin. Suyunu verince saatlerce kaynaması için börülceleri ilave edin.", "Börülce kabukları açılınca nişasta salınımı için bir avuç kırık pirinci sadece bağlayıcı görev yapması için tencereye fırlatın.", "Suyu çekerken yer fıstığı şerbetini de ekleyin.", "Baharatlar zenginleşince çorbadan ziyade koyu kremamsı harika bir yahni olarak servis yapın."]
        )
    ),
    Country(
        id: "cameroon",
        name: "Cameroon",
        flag: "🇨🇲",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "cameroon_dish",
            name: "Ndolé",
            imageURL: "",
            description: "Kamerun’un acı yapraklı (bitterleaf), ezilmiş yer fıstığı, et ve kurutulmuş ırmak karidesli koyu milli rengi.",
            ingredients: ["2 su bardağı haşlanmış acı yaprak (ndolé yaprağı veya alternatifi pazı)", "Yarım kg suda inceltilmiş fıstık püresi", "250 g kurutulmuş öğütülmüş karides (crayfish)", "Dana eti", "Sarılan bitkisel plantain muz"],
            steps: ["Acı yaprakların acılığını iyice çıkartmak için karbonatlı suda 3 kez haşlayıp sıkarak durulayın.", "Kavrulmuş fıstıklardan, sarımsak ve zencefilden pürüzsüz yoğun bir krema harcı elde edip ocakta Dana etiyle fokurdatın.", "Kaynayan fıstıklı yahniye devasa toz karides kumu ekleyip yemeği deniz/kara asimetrisine gömün.", "Haşlanmış Ndolé yapraklarını da ekleyip sos iyice siyah-yeşil arası kıvam aldığında sarı kızarmış plantain muzuyla daldırın."]
        )
    ),
    Country(
        id: "togo",
        name: "Togo",
        flag: "🇹🇬",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "togo_dish",
            name: "Djenkoume (Togo Kırmızı Püresi)",
            imageURL: "",
            description: "Mısır unu, palmiye yağı, yoğun domates ve tavuk suyunun püre olmuş kan kırmızısı topağı.",
            ingredients: ["1 kg organik tavuk parçaları", "Mısır unu", "Saf Kırmızı Palmiye Yağı", "2 adet soğan ve rendelenmiş zencefil", "Domates salçası"],
            steps: ["Tavuğu palmiye yağında kavurup, zencefil, domates, soğan ile şahane kırmızı bir et suyu olana dek pişmesini sağlayın.", "Tavukları tencerenin içinden çıkartarak ızgaraya dizip derisini çıtırlaştırın.", "Kalan süzme kırmızı domatesli tavuk suyunun içine mısır ununu dökerek karıştırın ve katı (kırmızı renkli) Djenkoume püresi oluşturun.", "Tabakta kırmızı püre topu ve yanına ızgara tavuk budu eşliğinde mükemmel Afrika öğünü sunar."]
        )
    ),
    Country(
        id: "ivory_coast",
        name: "Ivory Coast",
        flag: "🇨🇮",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "ivory_coast_dish",
            name: "Garba",
            imageURL: "",
            description: "Sokakların vazgeçilmezi; yağda marine edilmiş çiğ soğan kuleli ve manyok unlu (Attiéké) kızarmış ton balığı.",
            ingredients: ["Fermente edilmiş suda pişmiş manyok kuskusu (Attiéke)", "1 adet kalın Ton Balığı (dondurulmuş ya da taze)", "1 su bardağı küp doğranmış çiğ soğan", "Tuzlu çeşni (Jumbo küp)", "Limon suyu ve sıvıyağ"],
            steps: ["Ton balığı filetosunu (veya kalın kesimini) unlayıp dev tavalarda bol derinde siyaha dönük kızarana dek muhteşemce mühürleyin.", "Manyok ezilmiş Attiéké'yi tabana avuç avuç doldurun. Üzerine çıtır siyah ton balığını yatırın.", "Ton balığını kızarttığınız kızgın kahverengi okyanus yağından Attiéké'nin (kuskusun) üzerine 3-4 kepçe atın.", "Acı biber limonuyla ezilmiş taze ince soğan küplerini en tepesine tepeleme kule yapıp parmaklarınızla harmanlayarak hüpletin."]
        )
    ),
    Country(
        id: "guinea",
        name: "Guinea",
        flag: "🇬🇳",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "guinea_dish",
            name: "Poulet Yassa",
            imageURL: "",
            description: "Limon, hardal ve soğan asidinde bir gece yatan, sonra ateşte kavrulan Batı Afrika'nın efsanevi sarı soğan tavuğu.",
            ingredients: ["1 tam Tavuk (Parçalı)", "1 kilogram Soğan (bol miktarda olmalı)", "5 dolu yemek kaşığı Hardal (Dijon önerilir)", "2 limon taze suyu", "Habanero acı biberi"],
            steps: ["Tavuk parçalarını, halka halka doğranmış bir kilo soğanı, bol narenciye (limon) suyunu, sarımsağı ve hardalı kapaklı kasede bir gece dinlendirin.", "Tavukları soğandan sıyırıp alarak sadece kendilerini ızgarada veya tavada yüksek basınçla mühürleyin.", "Daha sonra arta kalan hardallı asidik soğan marinasyonunu 20 dk sosun kendisi karamelize sarıya dönene dek sıvıyağda öldürün.", "Izgara tavukları harika soğanlara ekleyip 10 dk daha tencerede demlendirin ve pofuduk pirinç üzerinde muazzam Yassa harmanını yayın."]
        )
    ),
    Country(
        id: "guinea_bissau",
        name: "Guinea-Bissau",
        flag: "🇬🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "guinea_bissau_dish",
            name: "Gine-Bissau Jollof Ekstresi",
            imageURL: "",
            description: "Güçlü domates, palmiye yağı, isli balık, tavuk ve pirincin tepeleme tek tencere mucizesi: Batı Afrika'nın kızıl pirinci.",
            ingredients: ["Uzun taneli Parboiled Pirinç", "4 adet olgun domates (blenderlanmış)", "1 baş sarımsak, zencefil, kırmızı kapya biber tabağı", "Tavuk suyu", "Habanero"],
            steps: ["Bitkisel yağda domates salçasını adeta asidini yok edene dek iyice karartıp kuruyana dek kavurun.", "Ev yapımı kapya biberli, soğan ve zencefilli blender pürenizi döküp fokurdattıktan sonra etin tam aromasını salın.", "Tavuk suyunu döküp içine hiç yıkanmamış parboiled pirinçleri atın.", "Tahta kaşıkla hizalayın. Tencerenin ağzına alüminyum sererek hiç buhar kaçırmadan 40 dk fırın gibi demleyip dumanlı Jollof elde edin."]
        )
    ),
    Country(
        id: "liberia",
        name: "Liberia",
        flag: "🇱🇷",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "liberia_dish",
            name: "Jollof Rice (Liberya Stili)",
            imageURL: "",
            description: "Yengeç eti, kıyma, sucuk sosis ve tavuğun bir arada piştiği partilerin kraliçesi Jollof pirinci.",
            ingredients: ["Parboiled pirinç", "150 g sığır eti", "150 g tütsülü sosis", "Domates/Soğan püresi", "Tavuk Suyu"],
            steps: ["Et ve sosisleri mühürleyin. Yağlı domates püresini katın.", "Pirinci ekleyerek, fokurdayan kırmızı yahnide tam suyu çekip tabanı (Tato) hafif yanık ve çıtır olana dek pişirin.", "Altın sarısı plantain muz dilimleriyle şovu bitirin."]
        )
    ),
    Country(
        id: "sierra_leone",
        name: "Sierra Leone",
        flag: "🇸🇱",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "sierra_leone_dish",
            name: "Cassava Leaves Stew (Manyok Yahnisi)",
            imageURL: "",
            description: "Püre haline gelmiş koyu yeşil manyok yapraklarının, palmiye yağı ve fıstık ezmesi ile deniz ürünlü harmanı.",
            ingredients: ["Öğütülmüş Manyok yaprakları", "Sığır eti ve Tütsülenmiş balık", "Kırmızı palmiye yağı", "Yer Fıstığı Mincik (Öğütülmüş)"],
            steps: ["Et ve isli balıkları güzelce haşlanmaya dairesel şekilde bırakın.", "Suya ince kıyım manyok yaprağı püresini, fıstığı ekleyip 2 saat fokurdatın.", "Bol palmiye yağı (kan kırmızısı yağı) ilave edip 30 dk suyu çekmesini izleyerek pirinçle buluşturun."]
        )
    ),
    Country(
        id: "burkina_faso",
        name: "Burkina Faso",
        flag: "🇧🇫",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "burkina_faso_dish",
            name: "Riz Gras (Yağlı Pirinç)",
            imageURL: "",
            description: "Tavuk veya koyunun derin et sularıyla bütün sebzelerle mühürlenmiş Burkina Faso pirinci.",
            ingredients: ["Sığır veya Kuzu eti", "Pirinç", "Taze fesleğen ve Biber", "Domates Salçası"],
            steps: ["Eti suyu ve yağı ile kızartıp sebzeleri salça ile haşlayın.", "Tüm sebze aromalı suyun üzerine taze pirinç dökerek sadece pirincin o aromayı kusursuz bir kalkan gibi emmesini sağlayın."]
        )
    ),
    Country(
        id: "central_african_republic",
        name: "Central African Republic",
        flag: "🇨🇫",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "central_african_republic_dish",
            name: "Poulet Nyembwe (Moambe Tavuk Oyunu)",
            imageURL: "",
            description: "C.A.R. mutfağının baş aktörü, Afrika palmiye somunu ezmesi suyunda kavrulan yabanisi tavuk.",
            ingredients: ["Tavuk Gövdesi", "Taze Palmiye cevizi harcı (Moambe)", "Soğan", "Okra (Bamya)"],
            steps: ["Tavuğu iyice marineleyip yağ ile derisini kızartın.", "Palmiye cevizinden çıkarılan fıstığımsı kalın zengin tereyağlı kremsi yapıyı tencereye döküp bamyalarla tavuğun üzerini sıvayın.", "Saatlerce yoğun bir sarı krema fırtınasıyla fufu eşliğine doğrayın."]
        )
    ),
    Country(
        id: "republic_of_the_congo",
        name: "Republic of the Congo",
        flag: "🇨🇬",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "republic_of_the_congo_dish",
            name: "Saka-Saka (Manyok Yaprakları Sotesi)",
            imageURL: "",
            description: "Kongo Havzasının geleneksel ana öğünü; ezilmiş yaprakların bütün sardalya ile palmiye şerbetli sotesi.",
            ingredients: ["1 kilo Manyok (saka) yaprakları", "Palmiye yağı", "Soğan", "Füme balık (Sardalya kurusu)"],
            steps: ["Kaynar suda 2 saat boyunca acı püremsi manyok yapraklarını lifleri gidene dek vurun.", "Eşsiz füme aroması için içine sardalyayı didikleyin. Bol soğanlı palmiye asidinde pişirip servis edin."]
        )
    ),
    Country(
        id: "gabon",
        name: "Gabon",
        flag: "🇬🇦",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "gabon_dish",
            name: "Poulet Nyembwe (Hurma Fıstığı Tavuğu)",
            imageURL: "",
            description: "Afrika ulusal Gabon yemeği, kuzu veya tavuğun efsane taze palmiye tohumu püresi asidinde kavurması.",
            ingredients: ["Kümes hayvanı", "Palmiye püresi", "Tuz"],
            steps: ["Tavuk etini haşlayın. Püreyi ekleyip tamamen karıştırın.", "Tam lezzet için beyaz pirincin dibine serin."]
        )
    ),
    Country(
        id: "equatorial_guinea",
        name: "Equatorial Guinea",
        flag: "🇬🇶",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "equatorial_guinea_dish",
            name: "Succotash (Gine Fasülyesi)",
            imageURL: "",
            description: "Tropikal meyve sebze cennetinde Mısır domates fasulye yahnisi.",
            ingredients: ["Fasulye", "Mısır koçanı", "Balık", "Domates"],
            steps: ["Yeşillikleri kaynatıp balık garnitürüyle harmanlayın."]
        )
    ),
    Country(
        id: "zambia",
        name: "Zambia",
        flag: "🇿🇲",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "zambia_dish",
            name: "Nshima ve Ifisashi",
            imageURL: "",
            description: "Sert nshima eşliğinde yer fıstığı kaplamalı dev ıspanak topları.",
            ingredients: ["Mısır unu", "Fıstık", "Kavrulmuş fasulye"],
            steps: ["Malzemeleri kalın macunlar halinde yoğun suda demleyip lapa haline getirerek ana yemek harmanı yapın.", "Fıstık ezmesinde boğulmuş sıcak sulu ıspanakla yiyin."]
        )
    ),
    Country(
        id: "malawi",
        name: "Malawi",
        flag: "🇲🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "malawi_dish",
            name: "Chambo",
            imageURL: "",
            description: "Malavi Gölü'nün taptaze tilapia balığının körfez baharatlarıyla Nshima üstü muazzam sotesi.",
            ingredients: ["Tilapia (chambo) balığı", "Mısır unu", "Köri"],
            steps: ["Balığı sosla pişirip Mısır (Nsima) lapası üstüne demlendirin."]
        )
    ),
    Country(
        id: "mozambique",
        name: "Mozambique",
        flag: "🇲🇿",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "mozambique_dish",
            name: "Piri Piri İzgara Tavuk (Frango Piri-Piri)",
            imageURL: "",
            description: "Portekiz rüzgarlı Mozambik'in dünya yıldızı; Kuşbaşı biber, limon ve bol sarımsakla şok marine edilmiş devasa alev ızgara tavuğu.",
            ingredients: ["1 tam tavuk", "Piri-Piri (Thai chili) biber", "Limon", "Bol sarımsak ve tereyağı"],
            steps: ["Biber, limon ve sarımsak karışımıyla tavuğu kelebek usulü keserek 24 saat bekletin.", "Tavuğu ızgada ateşi yakarak kömür ateşinde dışındaki tereyağını erite erite efsanevi çıtırlıktan mühürleyin."]
        )
    ),
    Country(
        id: "eswatini",
        name: "eSwatini",
        flag: "🇸🇿",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "eswatini_dish",
            name: "Karoo Roast Ostrich",
            imageURL: "",
            description: "Devekuşu veya sığır etinin ateşte baharatı ile buluştuğu yüksek krallık töreni.",
            ingredients: ["Büyük sığır/devekuşu butu", "Deniz tuzu"],
            steps: ["Hafifçe ateş mangalında sulu kalarak demlendirin."]
        )
    ),
    Country(
        id: "angola",
        name: "Angola",
        flag: "🇦🇴",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "angola_dish",
            name: "Muamba de Galinha",
            imageURL: "",
            description: "Angola'nın palmiye vizyonu, Okra (Bamya) banyosunda acılı sarımsaklı tavuk.",
            ingredients: ["Taze tavuk", "Okra", "Palmiye Ezmesi", "Acı Limon"],
            steps: ["Tavuk sarımsak asidiyle yatırılır.", "Bamya fırınlanmış soslara tavuk eklenip palmiye sütüyle ezilir."]
        )
    ),
    Country(
        id: "burundi",
        name: "Burundi",
        flag: "🇧🇮",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "burundi_dish",
            name: "Boko Boko Harees",
            imageURL: "",
            description: "Özel ezilmiş buğday (keşkek) ve ağır ateşte didiklenmiş tavuk etinin görkemli safranlı karışımı.",
            ingredients: ["3 su bardağı haşalık aşurelik buğday", "500 g tavuk göğsü", "Safran veya zerdeçal", "Terayağı"],
            steps: ["Buğdayı geceden ıslatıp tam lapa olana kadar kaynatın.", "Tavuğu baharatlarla lif olup parçalanana dek pişirin.", "Tavuk lifleri ve aşurelik buğdayı büyük ahşap kepçeyle döverek macunlaştırın. Üstüne eritilmiş saf tereyağı dökün."]
        )
    ),
    Country(
        id: "palestine",
        name: "Palestine",
        flag: "🇵🇸",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "palestine_dish",
            name: "Musakhan",
            imageURL: "",
            description: "Bol sumaklı soğan ve tavuğun geleneksel Taboon ekmeği üzerindeki şöleni.",
            ingredients: ["Tavuk butları", "Bol soğan", "Sumak", "Zeytinyağı", "Taboon veya lavaş ekmeği"],
            steps: ["Soğanları sumak ve bol zeytinyağında iyice karamelize edin.", "Tavukları fırında kızartın.", "Ekmeği tavuk suyuyla nemlendirip üzerine soğanları ve tavuğu koyup fırınlayarak servis edin."]
        )
    ),
    Country(
        id: "gambia",
        name: "Gambia",
        flag: "🇬🇲",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "gambia_dish",
            name: "Domoda",
            imageURL: "",
            description: "Gambia'ya has; ezilmiş yer fıstığı sosuna fırtına gibi batan tavuk veya kuzu fıstık yahnisi.",
            ingredients: ["Tavuk eti", "1 bardak tatlandırılmamış yer fıstığı ezmesi", "Domates salçası", "Tatlı patates, bal kabağı", "Habanero acı biberi"],
            steps: ["Eti suyu çekene kadar soteleyin. İçine kabak ve patatesleri atarak fokurdayan suya ulaştırın.", "Ayrı bir tabakta sıcak et suyuyla dev bir fıstık ezmesini açıp krema formuna getirin ve kazana atın.", "Acı Habanero biberini (bütün olarak) patlatmadan tencereye atıp lezzet salınımı yaptırın.", "Yağ tam yüzeye vurunca bal kabağının eridiğinden emin olun, beyaz pilav üzerinde dökerek Afrika harikası yaratın."]
        )
    ),
    Country(
        id: "qatar",
        name: "Qatar",
        flag: "🇶🇦",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "qatar_dish",
            name: "Machboos",
            imageURL: "",
            description: "Kavruk baharatların, bütün kurutulmuş siyah limonun (Loomi) basmati pirinciyle dansı.",
            ingredients: ["Sığır veya Kuzu eti", "Loomi (Kurutulmuş Siyah Limon)", "Basmati pirinci", "Baharat (Karanfil, Kakule, Zerdeçal, Gül suyu)", "Domates"],
            steps: ["Etleri, ikiye delinmiş siyah loomilerle, soğanla, yoğun karanfil kokularıyla suya gömüp basınçlı şekilde pişirin.", "Etin kendi lezzet suyuna basmati pirincini dökerek Loomilerin o hafif küflü tatlı esrarengiz asidini pirince sızdırın.", "Tam dinlenmedeyken üstüne gül suyu serpilip ızgaralanmış bademle servis tabağına devirin."]
        )
    ),
    Country(
        id: "kuwait",
        name: "Kuwait",
        flag: "🇰🇼",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "kuwait_dish",
            name: "Mutabbaq Samak (Zubaidi Pilavı)",
            imageURL: "",
            description: "Büyük pomfret balığının kızartılarak asidik pirinç tepsisinde safranla taçlandırılması.",
            ingredients: ["Bütün Taze Zubaidi balığı (Gümüş pomfret)", "Basmati Pirinci", "Kakule, Safran, Loomi"],
            steps: ["Balığı özel safranla marine ederek una bulayıp altınlaşana dek çıtırlaştırın.", "Et suyunu balığın başıyla ve sebzelerle fırınlayarak pirince dökün.", "Tatlı soğan, badem ve çıtır balıkla kule kurun."]
        )
    ),
    Country(
        id: "oman",
        name: "Oman",
        flag: "🇴🇲",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "oman_dish",
            name: "Shuwa",
            imageURL: "",
            description: "Baharatlı kuzu etinin yer altında saatlerce yavaşça pişmesiyle hazırlanan bayram yemeği.",
            ingredients: ["Bütün kuzu kol veya but", "Özel Shuwa baharatı", "Muz yaprakları", "Sarımsak ve sirke"],
            steps: ["Eti sirke ve baharatla 24 saat marine edin.", "Muz yapraklarına sarıp özel yer altı fırınında veya çok kısık fırın ateşinde 12-24 saat pişirin.", "Lif lif ayrılan eti safranlı pilav üstünde servis edin."]
        )
    ),
    Country(
        id: "vanuatu",
        name: "Vanuatu",
        flag: "🇻🇺",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "vanuatu_dish",
            name: "Laplap",
            imageURL: "",
            description: "Geleneksel muz yaprağı pastası lapası.",
            ingredients: ["Rendelenmiş muz veya yam", "Hindistan cevizi sütü", "Domuz eti", "Yabani ıspanak"],
            steps: ["Yöresel bitkileri muz yaprağına dizin.", "Püreyi üzerine sürüp hindistan cevizi sütü ekleyin.", "Bohça yapıp toprak fırında pişirin."]
        )
    ),
    Country(
        id: "north_korea",
        name: "North Korea",
        flag: "🇰🇵",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "north_korea_dish",
            name: "Pyongyang Naengmyeon (Buzlu Kuzey Eriştesi)",
            imageURL: "",
            description: "Karabuğday eriştesinin doğrudan buzlu efsane sığır eti/turşu suyu (Dongchimi) sosunda serinletilmesi.",
            ingredients: ["Sert, siyahımsı Karabuğday Noodle'ı", "Dongchimi (su beyaz turşusu ve sığır kombine)", "Kore armutu", "Haşlanmış yumurta"],
            steps: ["Karabuğday eriştesi sadece 2 dk kaynar suya girip hemen buz banyosunda çitilenip esnemesi ve kauçuğumsu bir sertlik hissi vermesi sağlanır.", "Tabağın zeminine dizilen erişte yumağına buz küpleri, salatalık ve armut konur.", "Sirke-Hardal ekseni kurulmuş efsanevi berrak sığır / dongchimi suyu tepesinden aşağı buzlar içinde boşaltılarak sıcak yazları yıdar."]
        )
    ),
    Country(
        id: "bhutan",
        name: "Bhutan",
        flag: "🇧🇹",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "bhutan_dish",
            name: "Ema Datshi",
            imageURL: "",
            description: "Bhutan'ın meşhur acı biber ve peynir yahnisi.",
            ingredients: ["Acı yeşil biber", "Yerel peynir", "Soğan", "Sarımsak", "Tereyağı"],
            steps: ["Biber ve soğanları yumuşayana dek haşlayın.", "Peyniri ekleyip eriyene dek karıştırarak servis edin."]
        )
    ),
    Country(
        id: "afghanistan",
        name: "Afghanistan",
        flag: "🇦🇫",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "afghanistan_dish",
            name: "Kabuli Pulao",
            imageURL: "",
            description: "Havuç, kuru üzüm ve etle zenginleştirilmiş Afgan pilavı.",
            ingredients: ["Basmati pirinci", "Kuzu eti", "Sarı havuç", "Kuru üzüm", "Kimyon"],
            steps: ["Eti haşlayıp kavrulmuş havuç ve üzümlerle harmanlayın.", "Pirinçle beraber demlendirerek servis edin."]
        )
    ),
    Country(
        id: "tajikistan",
        name: "Tajikistan",
        flag: "🇹🇯",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "tajikistan_dish",
            name: "Qurutob",
            imageURL: "",
            description: "Tahta tabakta sunulan; yoğurt güneşte kurutulmuş Qurut toplarının sulandırılmasıyla yapılan sıcak salata-ekmek ziyafeti.",
            ingredients: ["2 adet Qurut (Güneşte kurutulmuş yoğurt topu) veya 1 su bardağı Süzme Yoğurt", "1 bütün Fatir ekmeği (katmerli ekmek)", "1 demet taze yeşillik (dereotu, maydanoz)", "2 adet büyük soğan", "3 yemek kaşığı keten tohumu yağı (kızartılmış) veya tereyağı"],
            steps: ["Qurut toplarını sıcak suda eritip sıvı, hafif tuzlu bir süzme yoğurt sosu (chalop) oluşturun.", "Ahşap, yayvan geleneksel bir tabağın içine Fatir ekmeğini fındık büyüklüğünde kopararak tamamen doldurun.", "Yoğurt sosunu ekmeklerin tamamını ıslatacak biçimde tahta tabağa güzelce dökün.", "Soğanları ince piyazlık doğrayın, keten tohumu yağında (veya tavada bol yağda) iyice kızartıp çıtır yapın. Yağla beraber yoğurdun üstüne boca edin, taze yeşillik serpip ortaya koyun."]
        )
    ),
    Country(
        id: "kyrgyzstan",
        name: "Kyrgyzstan",
        flag: "🇰🇬",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "kyrgyzstan_dish",
            name: "Beshbarmak",
            imageURL: "",
            description: "Beş parmak ile yenen, at, kuzu veya sığır etinden bol soğanlı taze el açması erişte.",
            ingredients: ["800 g kemikli kuzu veya sığır eti", "2 adet soğan", "3 su bardağı un", "1 adet yumurta", "Karabiber (taze çekilmiş)"],
            steps: ["Büyük tencerede eti soğuk suya alın, kaynamaya başlayınca kefini alıp 2 saat ağır ağır haşlayın.", "Un, yumurta ve tuzla sert bir hamur yoğurun. İncecik açıp kareler (noodle) şeklinde kesin.", "Et pişince sudan alın, aynı suya kestiğiniz hamurları atıp yumuşayana dek haşlayın.", "Soğanları halka halka doğrayın, et suyundan az miktar alarak soğanları 5 dakika içinde öldürün. En alta hamur, üste doğranmış et ve en üste soğanlı sos gezdirerek servis edin."]
        )
    ),
    Country(
        id: "turkmenistan",
        name: "Turkmenistan",
        flag: "🇹🇲",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "turkmenistan_dish",
            name: "Doğrama",
            imageURL: "",
            description: "Özel ekmeğin elde ufalanıp kuzu eti ve çiğ soğan ile et suyunda harmanlanması.",
            ingredients: ["1 adet Turkmen Çöreği (tandır ekmeği)", "500 g kuzu inciği (veya kemikli haşlamalık)", "2 iri beyaz soğan", "1 adet domates"],
            steps: ["Kuzu etini içine soğan ve domates katarak çok uzun süre, lime lime dağılana kadar tencerede haşlayın.", "Tandırda pişmiş özel sert kurutulmuş ekmeği (Çörek), elinizle bıçak kullanmadan tel tel ufak boyutlara koparın.", "Taze beyaz soğanı zar gibi ufak ufak doğrayıp ekmek kırıklarıyla ovun.", "Liflenen sıcak etleri ve etlerin yoğun suyunu ekmek ve soğan tabağının üstüne boca edip sıcak sıcak yenmek üzere servis edin."]
        )
    ),
    Country(
        id: "belarus",
        name: "Belarus",
        flag: "🇧🇾",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "belarus_dish",
            name: "Draniki",
            imageURL: "",
            description: "Rendelenmiş çiğ patates ile hazırlanan ikonik Belarus mücveri; ekşi krema fırtınası.",
            ingredients: ["5 büyük boy doğal nişastalı eski patates", "1 taze kuru soğan", "1 büyük yumurta", "2 yemek kaşığı un", "1 çay kaşığı tuz", "Ayçiçek yağı (bol bol kızartmak için)", "Ekşi krema (servis)"],
            steps: ["Patatesleri ve soğanı kalın dişli rendeden geçirin (soğan, patatesin kararmasını önler). Oluşan fazla sulu nişastayı avucunuzda sıkarak atın.", "Yumurta, un ve tuzu patateslerin içine ekleyip tahta bir kaşıkla yoğurur gibi karıştırın.", "Tavada ayçiçek yağını iyice kızdırın. Patates karışımından birer kaşık alarak tavaya bırakın ve yassı krepler haline getirin.", "Altı ve üstü nar gibi kızarıp dışı çıtır, içi yumuşak olana dek pişirin. Üstüne bir kaşık tam yağlı ekşi krema koyup sımsıcak tüketin."]
        )
    ),
    Country(
        id: "ukraine",
        name: "Ukraine",
        flag: "🇺🇦",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "ukraine_dish",
            name: "Ukrayna Borş (Borscht) Çorbası",
            imageURL: "",
            description: "Yakut kırmızısı rengindeki muhteşem rengini pancardan alan, içinde bütün bir bahçe barındıran kültür çorbası.",
            ingredients: ["500 g kemikli sığır eti (iliği çok olmalı)", "3 adet büyük taze pancar (rendelenmiş)", "Yarım beyaz lahana (ince kıyılmış)", "2 havuç", "1 soğan", "2 patates", "1 yemek kaşığı sirke", "Domates salçası", "Dereotu ve ekşi krema"],
            steps: ["Eti 2 litre suya alarak sebze kökleri (defne, karabiber vb.) ile yavaşça 2 saat kaynatıp şeffaf ve harika bir et suyu (bouillon) çıkarın.", "Tavada soğan, havuç ve en önemlisi rendelenmiş pancarları az yağda kavurun. Rengini koruması için mutlaka 1 yemek kaşığı asit (sirke veya limon) ekleyin ve domates salçasıyla tatlandırın.", "Et suyunu süzüp etleri tiftikleyin. Kaynayan berrak et suyuna doğranmış patatesleri ve şerit lahana parçalarını atın. 15 dakika haşlayın.", "Tavadaki pancar sosunu ve tiftiklenmiş etleri çorbaya ekleyin. Kısık ateşte çorba yakut rengini alana dek 10 dakika pişirin. Taze dereotu ve ekşi kremayla taçlandırın."]
        )
    ),
    Country(
        id: "moldova",
        name: "Moldova",
        flag: "🇲🇩",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "moldova_dish",
            name: "Mămăligă",
            imageURL: "",
            description: "Kalın ve yoğun mısır irmiği ekmeğinin kızarmış domuz/kuzu eti, lor peyniri ve sarımsakla birleşimi.",
            ingredients: ["2 su bardağı mısır unu", "1 tatlı kaşığı tuz", "2.büyük dilim tereyağı", "300 g koyun peyniri (Bryndza)", "200 g kavurmalık dana veya domuz eti (Tokana)", "Ekşi krema"],
            steps: ["Demir veya döküm bir tencerede suyu kaynatın. Mısır irmiğini azar azar selseyle döküp ahşap oklava (facallet) ile sürekli çok güçlü çırpın. Püre değil, kesildiğinde dağılmayan kalıp gibi ekmek kıvamına gelmesi 30 dakika sürecek.", "Tavada ufak et parçalarını soğanla beraber suyu çıkıp kuruyana dek yoğun bir Tokana (sote) şeklinde kavurun.", "Pişen kalın Mămăligă'yı tencereden ahşap bir tepsiye ters çevirin ve iplik kullanarak dilimlere kesin.", "Mısır dilimini tabağa alın, yanına koyun peyniri, ev yapımı ekşi krema ve kavrulmuş eti (Tokana) dizerek yepyeni bir tat şöleni yaratın."]
        )
    ),
    Country(
        id: "lithuania",
        name: "Lithuania",
        flag: "🇱🇹",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "lithuania_dish",
            name: "Cepelinai (Zeppelin Köftesi)",
            imageURL: "",
            description: "Uçan dev zeplinlere benzediği için bu ismi alan, çiğ ve pişmiş patatesin birleşiminden doğan dolgulu iri patates mantıları.",
            ingredients: ["6 adet çiğ patates (rendelenmiş ve suyu çok sıkı sıkılmış)", "2 adet haşlanmış ve ezilmiş püre patates", "250 g iyi kalite domuz veya dana kıyma", "1 adet soğan", "Tuz ve Karabiber", "Pastırma (veya bacon) parçacıkları (servis için)"],
            steps: ["Çiğ patateslerin rendesini çok iyi sıkın (nişastasını tutun). Sıkılmış kuru çiğ patatesi, haşlanmış püre patatesle yoğurarak sert, oyun hamuru kıvamı elde edin.", "İnce kıyılmış soğanı tava terletip kıymayla birleşin, harcı tuz ve tuzla yoğurun (iç çiğ konur).", "Patates hamurundan tenis topundan biraz küçük bezeler koparıp içini açın. Ortasına kıymadan koyun, hamuru elinizde yuvarlayarak pürüzsüz dev bir damla veya zeplin füzeleri şekline getirin.", "Kaynayan nişastalı suda 25 dakika haşlayın. Üstüne kızılötesi çıtır pastırma küpleri (Lajis) ve ekşi krema atıp dağıtmadan keserek yiyin."]
        )
    ),
    Country(
        id: "latvia",
        name: "Latvia",
        flag: "🇱🇻",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "latvia_dish",
            name: "Pelēkie Zirņi ar Speķi",
            imageURL: "",
            description: "Gri bezelyenin çıtır domuz/dana pastırması yağıyla pişirildiği bir Noel başyapıtı.",
            ingredients: ["400 g gri bezelye (büyük cins nohut benzeri kuru bezelye)", "150 g yoğun yağlı pastırma veya domuz göbek eti (speķis)", "1 dev soğan", "Tuz", "Kefir (içecek eşlikçisi)"],
            steps: ["Bezelyeleri (taş gibi serttirler) tam bir gece karbonatlı suda ıslatın. Ertesi gün taze bol suyla 2-3 saat iyice yumuşayana dek haşlayın.", "Soğanı çok ufak küpler halinde piyaz değil zar zar doğrayın. Speķis eti aynı eşitlilikte küpleştirin.", "Tavaya gram yağ koymadan et parçalarını atın. Yağı çıkıp kendisi kraker (cızbız) gibi çıtırdayana dek kavurun. Sonra soğanı yağın içine atıp altın yaldız olmasını izleyin.", "Susuz kalınan gri bezelyeleri bu şahane yağ fırtınasının içine katın. Tuz serpip 5 dakika tavada ezin. Servis edip yanına serin kefirle içerek tadını doruklayın."]
        )
    ),
    Country(
        id: "estonia",
        name: "Estonia",
        flag: "🇪🇪",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "estonia_dish",
            name: "Verivorst",
            imageURL: "",
            description: "Arpa ezmesi ile karıştırılmış geleneksel domuz kanı sosisi olan estonya gurur noel ziyafeti (Kan Sosis).",
            ingredients: ["Yarım kilo kan sosisi (verivorst)", "Domuz yağı (veya sıvıyağ)", "Yaban mersini veya kızılcık marmeladı (lingonberry)", "Fırınlanmış patates"],
            steps: ["Kan sosislerini hafifçe çatalla çok az delik açarak fırın tepsisine dizin.", "Özel fırınlanmış patateslerle birlikte az miktar domuz veya dana yağında kızıl kase olacak şekilde 180C'de 30 dakika ağır pişmeye sunun.", "Fırın sonrası derisi gevrekleşen ve tamamen pürüzleşen koyu siyah sosisleri sıcak tavada da isterseniz mühürleyin.", "Dilimleyin, yaban mersini (lingonberry) ekşi-tatlı asidik reçeli ile yan yana ekleyip keskin bir et ziyafeti verin."]
        )
    ),
    Country(
        id: "luxembourg",
        name: "Luxembourg",
        flag: "🇱🇺",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "luxembourg_dish",
            name: "Judd mat Gaardebounen",
            imageURL: "",
            description: "Tütsülenmiş tütsülü domuz kellesinin devasa bakla ile hardal sosunda haşlanması.",
            ingredients: ["1 Kg tütsülenmiş domuz gerdanı (Judd)", "2 Pırasa, Kereviz sapı, Havuç", "500 g geniş taze veya dondurulmuş bakla (Gaardebounen)", "3 Yemek kaşığı tereyağı ve 1 yemek kaşığı un (meyane)", "Beyaz şarap"],
            steps: ["Eti tuzundan arındırmak için gece boyunca hafif suda bekletin. Ertesi sabah geniş suda; pırasa, havuç, kereviz ile 2 ile 3 saat ağır ateşte çatal batana kadar haşlayın.", "Ayrı bir yerde baklaları 10 dk haşlayıp kabuklarını sıyırarak zümrüt yeşili kalplerini çıkarın.", "Tereyağını eritip unu kavurun. Etin o şahsına münhasır haşlama suyundan kepçeyle ekleyip, maydanoz, baklalar ve bolca luxembourg şarabı koyun. Koyu bir sos elde edin.", "Eti kalın biftek halinde kesin, tabana bakla sosunu basıp eti üstüne kurun. Lokul lukum!"]
        )
    ),
    Country(
        id: "new_caledonia",
        name: "New Caledonia",
        flag: "🇳🇨",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "new_caledonia_dish",
            name: "Bougna",
            imageURL: "",
            description: "Yer domuz/tavuk etinin muz yaprağı ve tatlı patatesle yer fırınında saatlerce tütsülenmesi.",
            ingredients: ["1 tam Tavuk (veya balık iri doğranmış)", "Tatlı patates, Manyok (cassava) ve muz (plantain)", "1 Tam Hindistan cevizi suyu ve sütü", "Büyük yapraklı taze Muz yaprağı", "Tuz", "Kiraz domates (aroma vermek için)"],
            steps: ["Büyük düz taze bir muz yaprağını ateşin üstünde esnetin. Tabanına iri yapboz parçaları gibi tatlı patatesleri ve muzları (plantain) kule şeklinde döşeyin.", "Tavuk veya domuz etlerini çiğ olarak bu bitki tepesinin tam merkezine piramit gibi kurun. Kiraz domates ve yeşil biber atın.", "Kalın kremamsı taze Hindistan cevizi sütünü tuz ile çırparak tamamen piramidin üstüne yağdırın.", "Muz yapraklarını bohça haline geitirip palmiye yaprağı lifi ile dört boğum bağlayın. (Gelenek olarak saatlerce korlarda yeraltında gömülür), alternatif olarak 180 derece ev fırınında 3 saat ağır ateşte pişirin."]
        )
    ),
    Country(
        id: "solomon_islands",
        name: "Solomon Islands",
        flag: "🇸🇧",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "solomon_islands_dish",
            name: "Poi ile Birlikte Taze Resif Balığı",
            imageURL: "",
            description: "Yerel adaların deniz suyunda fermente edilmiş devasa tatlı Taro köklerinin çiğ (veya buharda pişmiş) resif balıklarıyla seremonisi.",
            ingredients: ["1 kg Taro kökü", "Taze Okyanus balığı (Mercan balığı veya Snapper)", "Yeşil limon", "Tuz ve Chili biberi", "Sıcak Su"],
            steps: ["Dev Taro köklerini yıkayıp soyun. Kaynayan suda yumUşacık ipeksi olana dek yaklaşık bir saat kapağı kapalı çalkalayarak pişirin.", "Pişen Taroları yerel geniş tahta havana aktarıp taş bir havan tokmağıyla vurarak tamamen pürüzsüz yapışkan bir püreye (Poi) çevirin. Su ekleyerek kıvamı pürüzleştirin.", "Taze resif balığını kafa altından fileto ederek ince sashimi formatında dilimleyin. Lime suyunda veya domates asidinde 10 dakika marine edip doğal usulde pişirin.", "Parmaklarınızı (veya kaşığı) tatlı poi ezmesine daldırıp ağzınıza atın ve üzerine marinasyonlu ekşi deniz mahsulünden bir lokma alarak muazzam pasifik uyumunu yaşayın."]
        )
    ),
    Country(
        id: "hong_kong",
        name: "Hong Kong",
        flag: "🇭🇰",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "hong_kong_dish",
            name: "Dim Sum",
            imageURL: "",
            description: "Buharda pişmiş geleneksel Çin mantısı.",
            ingredients: ["250 g karides", "Mantı hamuru", "Soya sosu"],
            steps: ["İç harcı hazırlayın.", "Hamurları doldurup buharda pişirin.", "Sıcak servis edin."]
        )
    ),
    Country(
        id: "cambodia",
        name: "Cambodia",
        flag: "🇰🇭",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "cambodia_dish",
            name: "Fish Amok",
            imageURL: "",
            description: "Hindistan cevizi sütlü balık körisi.",
            ingredients: ["500 g beyaz balık", "Hindistan cevizi sütü", "Limon otu", "Muz yaprağı"],
            steps: ["Sos hazırlayın.", "Balıkları muz yaprağında pişirin."]
        )
    ),
    Country(
        id: "laos",
        name: "Laos",
        flag: "🇱🇦",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "laos_dish",
            name: "Larb",
            imageURL: "",
            description: "Kıymalı baharatlı salata.",
            ingredients: ["400 g tavuk göğsü kıyma", "3 yemek kaşığı taze limon suyu", "2 yemek kaşığı balık sosu", "1 demet taze nane", "1 demet taze kişniş", "2 adet kırmızı biber", "Kavrulmuş pirinç tozu", "Göbek marul"],
            steps: ["Tavuk kıymayı yağsız tavada pişirin.", "Limon suyu ve balık sosunu ekleyin.", "Pirinç tozunu ve yeşillikleri karıştırın.", "Marul yapraklarıyla servis edin."]
        )
    ),
    Country(
        id: "portugal2",
        name: "Portugal",
        flag: "🇵🇹",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "portugal2_dish",
            name: "Pastel de Nata",
            imageURL: "",
            description: "Kremalı milföy tart.",
            ingredients: ["Krema: 250 ml süt, 3 yumurta sarısı, 80 g şeker, 20 g un", "250 g hazır milföy hamuru", "Tarçın"],
            steps: ["Kremayı pişirip soğutun.", "Milföyü kalıplara yayın.", "250 derece fırında pişirin."]
        )
    ),
    Country(
        id: "scotland",
        name: "United Kingdom",
        flag: "🇬🇧",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "scotland_dish",
            name: "Haggis",
            imageURL: "",
            description: "İskoçya mirası; yulaf ve baharatlı et harcının eşsiz karışımı.",
            ingredients: ["Kuzu sakatatı", "Yulaf ezmesi", "Soğan", "Don yağı", "Hindistan cevizi (muskat)"],
            steps: ["Sakatatları haşlayıp kıyın, kavrulmuş yulaf ve baharatla karıştırın.", "Karışımı fırında veya haşlayarak pişirin.", "Püre patates ve şalgam ile servis yapın."]
        )
    ),
    Country(
        id: "wales",
        name: "United Kingdom",
        flag: "🇬🇧",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "wales_dish",
            name: "Cawl",
            imageURL: "",
            description: "Kuzu ve sebze çorbası.",
            ingredients: ["700 g kuzu boyun eti", "Patates", "Pırasa", "Havuç"],
            steps: ["Eti mühürleyin.", "Sebzeleri ekleyip kısık ateşte pişirin."]
        )
    ),
    Country(
        id: "trinidad",
        name: "Trinidad and Tobago",
        flag: "🇹🇹",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "trinidad_dish",
            name: "Doubles",
            imageURL: "",
            description: "Nohutlu sandviç.",
            ingredients: ["Nohut körisi", "Bara hamuru", "Acı sos"],
            steps: ["Hamuru mayalayıp kızartın.", "Ortasına nohut koyarak iki hamuru birleştirin."]
        )
    ),
    Country(
        id: "guatemala",
        name: "Guatemala",
        flag: "🇬🇹",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "guatemala_dish",
            name: "Pepián",
            imageURL: "",
            description: "Kavrulmuş baharatlarla yapılan zengin Guatemala yahnisi.",
            ingredients: ["Tavuk", "Susam", "Kabak çekirdeği", "Domates", "Kuru biber"],
            steps: ["Tavuğu haşlayın.", "Kavrulmuş tohumları sebzelerle çekip sos yapın ve tavukla pişirin."]
        )
    ),
    Country(
        id: "honduras",
        name: "Honduras",
        flag: "🇭🇳",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "honduras_dish",
            name: "Baleada",
            imageURL: "",
            description: "Un tortillası ile fasulye.",
            ingredients: ["4 adet un tortillası", "Kızarmış fasulye ezmesi", "Taze peynir", "Ekşi krema"],
            steps: ["Tortillayı ısıtın.", "İçine malzemeleri koyup katlayın."]
        )
    ),
]
