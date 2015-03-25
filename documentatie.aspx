<%@ Page Language="C#" AutoEventWireup="true" CodeFile="documentatie.aspx.cs" Inherits="documentatie" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns:fb="http://ogp.me/ns/fb#" xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>PBL in educatia biotehnologica</title>
	<link rel="stylesheet" href="style.css" type="text/css" media="screen,projection" charset="utf-8" />
	<link rel="stylesheet" href="reset.css" type="text/css" media="screen,projection" charset="utf-8" />
	<script type="text/javascript" src="scripts/jquery-2.0.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="scripts/jquery.localscroll-1.2.7-min.js"></script>
	<script type="text/javascript" src="scripts/jquery.scrollTo-1.4.2-min.js"></script>
	
	<script type="text/javascript" src="script.js"></script>
	
</head>

<body>
<div id="wrapper">

<div id="header">	
	<div class="head">
		<div class="mycss"><a href="Default.aspx"><img src="images/header_logo.png" id="header_logo" style="float: left;"/></a></div>
	</div>
		
	<div class="nav-container">
		<div class="nav">
			<div id="logo"><a href="Default.aspx"><img src="images/header_logo.png" height="40px" /></a></div>
			<ul>
				<li><a href="Default.aspx">Acasa</a></li>
            			<li><a href="documentatie.aspx">Documentatie</a></li>
            			<li><a href="quiz.aspx">Start quiz</a></li>
            			<li><a href="clasament.aspx">Clasament</a></li>
            			<li><a href="Contact.aspx">Contact</a></li>
			</ul>
		</div>
	</div>
</div>


	<div id="right">			
	<div id='cssmenu'>
	<ul>
		<li><a href='#intro'><span>1. Introducere</span></a></li>
   		<li><a href='#second'><span>2. Modele nesegregate si nestructurate</span></a>
    		<ul>
        		<li><a href='#third'><span>2.1 Modele nestructurate</span></a></li>
         			<ul>
         				<li><a href='#fifth'>2.1.1 Punctul a)</a></li>
         				<li><a href='#six'>2.1.2 Punctul b)</a></li>
         				<li><a href='#seven'>2.1.3 Punctul c)</a></li>
         				<li><a href='#eight'>2.1.4 Punctul d)</a></li>
         				<li><a href='#nine'>2.1.5 Punctul e)</a></li>
         				<li><a href='#ten'>2.1.6 Punctul f)</a></li>
         			</ul>
         		<li><a href='#eleven'>2.2 Modele Structurate</a></li>
      		</ul>
   		</li>
   		<li><a href='#twelve'><span>3. Modele segregate</span></a></li>
   		<li><a href='#treispe'><span>4. Bioreactoare</span></a></li>
   		<li><a href='#paispe'><span>5. Sisteme de cultivare a microorganismelor</span></a></li>
   			<ul>
   				<li><a href="#cincispe">5.1 Sistem submers</a></li>
   				<li><a href="#saispe">5.2 Culturi de suprafata</a></li>
   			</ul>
   		<li><a href='#saptispe'><span>6. Bioreactoare pentru fermentatii aerobe</span></a></li>
   		<li><a href='#optispe'><span>7. Factori de mediu</span></a></li>
	</ul>
	</div>
	</div>

	
	
		<div id="intro">
		<div class="slide">
			
		<div class="story">
	    	<div class="float-left">
			<h1 id="introducere">1. Introducere</h1>
                <p class="text">Ansamblul variabilelor bio-fizico-chimice ce descriu starea unui bioproces la un moment 
                    dat manifesta o inter-conexiune ce face imposibila discernerea influentelor reciproce.De aceea ecuatia generala
                    <img src="images/formule/f1.jpg" />
                    ,este posibila doar teoretic.
                    In modelarea biosistemelor sunt de preferat modelele deterministice celor probabilistice.Acestea sunt de 2 tipuri:
                    <ul>
                        <li class="text"><strong>-</strong> nestructurate(celulele sunt de tip black box,conteaza cantitatea si sunt influentate doar din exterior)</li>
                        <li class="text"><strong>-</strong> structurate(au structura celulara,introducandu-se varsta,forma,dimensiune)</li>
                    </ul>
                </p>
                <p class="text">
                    Ele mai sunt clasificate astfel:
                    <ul>
                        <li class="text"><strong>-</strong> nesegregate(continue)-se ia in considerare existenta celulelor individuale</li>
                        <li class="text"><strong>-</strong> segregate-se explica existenta celulelor individuale cu proprietati distincte</li>
                    </ul>
                </p><br />
	        </div>
	    </div> <!--.story-->
	
	</div>
	
	</div> <!--#intro-->
	
	<div id="second">
		<div class="slide">
			
			<h1 id="modele-nes-nes">2. Modele nesegregate si nestructurate</h1>
                <p class="text">
                    Acestea pot reprezenta 
                    <ul>
                        <li class="text">
                            <strong>-</strong> ecuatii constitutive:
                            <ul>
                                <li class="text"><strong>-</strong> nesegregate(continue)-se ia in considerare existenta celulelor individuale</li>
                                <li class="text"><strong>-</strong> segregate-se explica existenta celulelor individuale cu proprietati distincte</li>
                            </ul>
                        </li>
                        <li class="text">
                            <strong>-</strong> ecuatii de bilant: stoechiometrie

                        </li>
                    </ul>
                </p>
						
		</div>
	    
	</div> <!--#second-->
	
	<div id="third">
		<div class="slide">
			
			<h2 class="a-sub" id="md-cin">2.1. Modele cinetice nestructurate pentru crestere si utilizarea substratului</h2>
                <p class="text">
                    Variabila cheie este viteza specifica de crestere <img src="images/formule/f2.jpg" style="margin-bottom:10px;"/><img src="images/formule/f3.jpg" />
                </p>
                <p class="text">Variabila µ depinde de timp si e influentata,cum se vede in formula de mai sus,de multi factori(S-substrat,X-concentratia de celule,P-concentratia de produs,T-temperatura,I-inhibitori ai cresterii)</p>
                			
		</div>
	</div> <!--#third-->
	
	<div id="fifth">
		<div class="slide">
			
			<h3 id="pcta">2.1.1. a) <img src="images/formule/f4.jpg" /> Modele cinetice limitare de catre substrat</h3>
                    <p class="text"><br />Cinetica cresterii microbiene e dominata de legea lui Monod:<br />
                    <img src="images/formule/f5.jpg" /> ,µmax-viteza maxima specifica de crestere [1/h]; Ks-const de saturatie[g/L]
                    <br />
                    <img src="images/formule/f6.jpg" style="text-align:center;"/><br />
                    Similar,viteza de consum a substratului este: <img src="images/formule/f7.jpg" /><br />
                    Aceste expresii sunt legate intre ele prin coeficientul de conversie astfel: <img src="images/formule/f8.jpg" /><br />
                    Avem si ecuatii alternative: 
                    <ul>
                        <li class="text"> <br /> <strong>-</strong> Ecuatia Teissier: <img src="images/formule/f9.jpg" width="230px" style="margin-top:-13px" /><br /><img src="images/formule/f10.jpg" /></li>
                        <li class="text"><strong>-</strong> Ecuatia Moser: <img src="images/formule/f11.jpg" /></li>
                        <li class="text"><strong>-</strong> Ecuatia Powell: exprima prin Kd influenta permeabilitatii celulare,difuziei substratului si dimensiunii celulare.
                            <br />
                            <img src="images/formule/f12.jpg" /> <img src="images/formule/f13.jpg" /><br />
                            Dezvoltarea unui model cinetic ajuta la stabilirea unei descrieri a cresterii microbiene.<br />
                            Modelul Konak,a carei formula e o analogie catre legea puterii(cinetica chimica): <img src="images/formule/f14.jpg" />
                            ,p-ordin de reactie; k-constanta cinetica<br />
                            Daca introducem conceptul de viteza relativa de crestere => <img src="images/formule/f15.jpg" /> ,iar daca inlocuim in modelul Konak=> <img src="images/formule/f16.jpg" style="margin-top:-25px" />; si se demonstreaza ca pentru p=1 vom avea o relatie Teissier iar pentru p=2 va rezulta o relatie Monod.<br />
                            De asemenea s-a gasit o relatie intre µmax si Ks: <img src="images/formule/f16.jpg" /> <br />
                            Kargi si Schuler au derivat ecuatiile generale si au obtinut: <img src="images/formule/f17.jpg" /> ,k,m,p-const.
                        </li>
                    </ul>
                    <table border="1" class="text" style="margin-left:50px">
                        <tr><td style="width:110px; text-align:center">Model</td><td  style="width:110px; text-align:center">k</td><td style="width:110px; text-align:center">m</td><td style="width:110px; text-align:center">p</td></tr>
                        <tr><td>Monod</td><td>1/Ks</td><td>0</td><td>2</td></tr>
                        <tr><td>Teissier</td><td>1/Ks</td><td>0</td><td>1</td></tr>
                        <tr><td>Hill-Moser</td><td>n/(Ks^(1/n))</td><td>1-1/n</td><td>1+1/n</td></tr>
                    </table> 
                </p>
			
		</div>
	</div> <!--#fifth-->
	
	<div id="six">
		<div class="slide">
			
			<h3 id="pctb">2.1.2. b) <img src="images/formule/f19.jpg" /> Modele cu influenta concentratiei celulare si a concentratiei substratului limitator.<br /></h3>
                    <p class="text">S-a observat ca viteza de evolutie a culturii scade la concentratii ridicate ale lui X, se obtine ecuatia Verhulst(cunoscuta si ca modelul logistic al cresterii):<br />
                    <img src="images/formule/f20.jpg" /><img src="images/formule/f21.jpg" /><br />
                    O ecuatie mai realista,ce exprima si limitarea prin concentratia substratului a fost introdusa de Meyrath:<br />
                    <img src="images/formule/f22.jpg" /> ,Y-randamentul de transformare a substratului la celule.<br />
                    Cel mai cunoscut model µ=f(X,S) este modelul Contois,aplicat pentru simplitatea lui: <img src="images/formule/f23.jpg" />
                    Preluand modul de gandire al cineticii chimice,Kono si Asai au derivat o ecuatie
                    de crestere ce include coeficientul aparent al activitatii de crestere:<img src="images/formule/f24.jpg" /> ,unde Kx- const. de viteza de crestere:<br />
                    &Phi; = 0, faza de inductie <br />
                    &Phi; = a, 0< a<1, faza de tranzitie(a=a*t) <br />
                    &Phi; = 1, faza exponentiala de crestere <br />
                    Alte modele interesante in acest domeniu sunt:
                    <ul>
                           <li class="text"><strong>-</strong> Modelul Kishimoto: <img src="images/formule/f25.jpg" />, Q1,Q2-coeficienti de regresie
                               <img src="images/formule/f26.jpg" /> valorile de medie aritmetica.
                           </li>
                           <li class="text"><strong>-</strong> Modelul Staniskis si Levisauskas <img src="images/formule/f27.jpg" /></li>
                    </ul>
                    </p>
			
		</div>
	</div>
	
	<div id="seven">
		<div class="slide">
			<h3 id="pctc">2.1.3. c) Cinetica cu inhibitie prin concentratia substratului</h3>
                <p class="text">    
                Cele mai uzuale modele sunt:
                    <ul class="text">
                        <li><strong>-</strong> Modelul Andrews(in regim chemostat): <img src="images/formule/f28.jpg" style="margin-bottom:-20px" /> ,Ki-constante de inhibitie in raport cu substratul <br /><br />
                            <img src="images/formule/f29.jpg" />

                        </li>
                        <li class="text"><strong>-</strong> Modelul Webb: <img src="images/formule/f30.jpg" /></li>
                        <li class="text"><strong>-</strong> Modelul Yano(multi complecsi inactivi enzima-substrat): <img src="images/formule/f31.jpg" style="margin-bottom: -10px; margin-top: 20px;" /></li>
                    </ul>
                    <p class="text">Un tip diferit de ecuatie pentru a exprima cinetica(cu inhibitie prin substrat) a fost 
                    propusa Wayman si Tseng,concentratiile de substrat care sunt mai mari decat o concentratie prag 
                    Sc inhiba cresterea liniara conform modelului: <img src="images/formule/f32.jpg" /> <br />
                    Aceasta relatie se poate folosi cand curba µ=f(S) nu are forma Andrews ci o descrestere liniara a lui µ,astfel:<br /></p>
                    <img src="images/formule/f33.jpg" />
                 </p>
		</div>
	</div>
	
	<div id="eight">
		<div class="slide">
			<h3 id="pctd">2.1.4. d) µ=f(S,P) Cinetica de crestere cu inhibitie prin concentratia de produs</h3>
                     <p class="text"> Se manifesta mai multe tipuri de efecte asupra vitezei specifice:descrestere liniara,exponentiala,stopare a cresterii.Cand nu apare o concentratie prag de la care sa inceapa efectele,modelul Hinshelwood poate exprima fenomenul.
                    <br />
                    <img src="images/formule/f34.jpg" /> , k-constanta de inhibitie in raport cu produsul P.<br />
                    Aceasta relatie a fost modificata,obtinandu-se modelul Holzberg:
                    <img src="images/formule/f35.jpg" /> , K1,K2 constante si pozitive.<br />
                    Reprezentarea grafica a acestui model:<br />
                    <img src="images/formule/f36.jpg" /><br />
                    Un alt model important este cel dat de Ghose si Tyagi: <img src="images/formule/f37.jpg" /> , Pmax-concentratia maxima de produs din mediu.<br /><br />
                    <img src="images/formule/f38.jpg" /><br />
                    O ecuatie de tipul µ=f(P,S) poate fi modelata in analogie cu cinematica enzimatica, Ierusalimsky recomandand aceasta ecuatie,care este cea mai folosita pentru acest domeniu:
                    <img src="images/formule/f39.jpg" /> , Ki,p-constanta de inhibitie in raport cu P.
                </p>
		</div>
	</div>
	
	<div id="nine">
		<div class="slide">
			<h3 id="pcte">2.1.5. e) µ(S,C) ,  Influenta oxigenului dizolvat ca al doilea substrat asupra vitezei specifice de crestere<br /></h3>
                   <p class="text"> Cel mai utilizat model este acela al lui Olsson(model de tip cinetica cu saturatie): <img src="images/formule/f40.jpg" /> , Kc-constanta de saturatie in raport cu O2.
                </p>
		</div>
	</div>
	
	<div id="ten">
		<div class="slide">
			<h3 id="pctf">2.1.6. f)Influenta altor factori asupra vitezei specifice de crestere <br /></h3> 
                   <p class="text"> Efectul pH-ului,se prezinta modelele:
                    <ul>
                         <li class="text"><strong>-</strong> Andreyeva si Biriukov (dezvoltare polinomiala): <img src="images/formule/f41.jpg" /></li>
                         <li class="text"><strong>-</strong> Jackson si Edwards(cu inhibitie): <img src="images/formule/f42.jpg" /></li>
                        <p class="text" style="margin-left:-40px">Pentru efectul simultan µ = f(S,pH) avem modelele:</p>
                        <li class="text"><strong>-</strong> Andreyeva si Biriukov: <img src="images/formule/f43.jpg" style="margin-bottom:-32px" /></li><br /><br />
                    </ul>
                </p>
                <p class="text">
                    Influenta temperaturii e modelata printr-o lege de tip Arrhenius conform modelului Topiwala si Sinclair:<br />
                    <img src="images/formule/f44.jpg" /><br />
                    De altfel,Constantinides modeleaza µ(T,X) prin ecuatia:<br />
                    <img src="images/formule/f45.jpg" /> unde: <img src="images/formule/f46.jpg" /><br /><br />
                    <strong>-</strong> Modele cinetice nestructurate pentru formarea produsului-aceasta cinetica se ia in raport cu cinetica cresterii,a ramas valabila clasificarea Gaden,cu 4 tipuri de cinetica pentru formarea produsului:<br />
                    <span class="text" style="margin-left:20px;">Tipul 0-productia are loc in celule in faza stationara(transformarile steroizilor si sinteza vitaminei E de catre Saccharomyces cerevisiae). </span><br />
                    <span class="text" style="margin-left:20px;">Tipul 1-acumularea produsului e direct legata de crestere(producerea acidului gluconic).</span><br />
                    <span class="text" style="margin-left:20px;">Tipul 2-acumularea produsului e partial legata de crestere(producerea acidului citric).</span><br />
                    <span class="text" style="margin-left:20px;">Tipul 3-acumularea produsului nu e asociata cu cresterea(obtinerea metabolitilor secundari gen penicilina).</span><br />
                    Recunoasterea fiecarui tip se poate face cu diagrame caracteristice rs,rx,rp=f(t), considerand vitezele specifice qs, µ(viteza de crestere),qp (viteza de productie).
                    <img src="images/formule/f48.jpg" /><br />
                    Pentru tipul 1,vom avea relatiile:<br />
                     <img src="images/formule/f49.jpg" /> ;  <img src="images/formule/f50.jpg" /> =>  <img src="images/formule/f51.jpg" /><br />
                    <img src="images/formule/f52.jpg" /> (Constantinides)
                </p>
                <p class="text">
                    Considerand pentru qp o dezvoltare de tip Monod,se va obtine o functie pentru viteza de productie in asociere cu cresterea.<br />
                    Pentru al doilea tip,datorita asocierii partiale a formarii produsului,se recomanda o combinatie a ecuatiilor,astfel: <img src="images/formule/f53.jpg" /><br />
                    Kono si Asai au introdus o  ecuatie generala,bazata pe coeficientul de consum F: <img src="images/formule/f54.jpg" /> <br />
                    Pentru tipul 3, rp = f(X),este reprezentata prin relatia rp=Kp*X<br />
                </p>
		</div>
	</div>
	
	<div id="eleven">
		<div class="slide">
			<h3>2.2 MODELE STRUCTURATE</h3>
                <p class="text">cele mai importante sunt cele chimice.Formularea riguroasa implica introducerea concentratiei intrinseci a unui component (cantitatea de volum celular).Fredrickson introduce bilantul intr-un bioreactor discontinuu:</p>
                    <img src="images/formule/f55.jpg" /><br />
                    <ul class="text">
                        <li><strong>-</strong> m-biomasa la timpul t;</li>
                        <li><strong>-</strong> cj-masa componentei j pe unitatea de volum celular</li>
                        <li><strong>-</strong> rj-viteza de aparitie/disparitie in procesul i a componentei j</li>
                        <li><strong>-</strong> V-volumul ocupat de celule(daca acesta este constant</li>
                    </ul>
                    <p class="text">vom avea: <img src="images/formule/f56.jpg" /> , si se va obtine: <img src="images/formule/f57.jpg" /></p>
                    <p class="text">Elementul Cj poate fi neglijat,avand un Xj=Cj*V care il poate inlocui.
                        Harder si Roels au trecut in revista aplicatiile in biotehnologie ale modelelor simplu-structurate,in primul rand principiile de baza:
                        <ul class="text">
                            <li><strong>-</strong> modificari ale concentratiilor substratelor -> schimbari in viteza de reactie</li>
                            <li><strong>-</strong> interactiunea enzimelor cu efectori -> modificari ale actiunii catalitice a acestora</li>
                            <li><strong>-</strong> concentratiile macromoleculelor se adapteaza la mediu prin schimbarea vitezei de sinteza(concentratia ARN creste odata cu cresterea ratei de dilutie)</li>
                            <li><strong>-</strong> schimbarile de mediu pot duce la schimbari in raportul dintre diferite specii</li>


                        </ul>
                        <p class="text">Autorii propun o serie de modele structurale:</p>
                        <ul class="text">
                            <li><strong>-</strong> cresterea biomasei cu modelul bicompartimental</li>
                            <li><strong>-</strong> cresterea biomasei cu modelul tricompartimental</li>
                            <li><strong>-</strong> sinteza enzimelor(modelul operonului,al represiei catabolice,al cresterii diauxice)</li>
                        </ul>
                    </p>
                    <p class="text">In acelasi timp,modelele cineticii structurale pot descrie dinamica bioprocesului cu celule modificate genetic
                         <br />Pentru cinetica formarii produsului, avem ecuatia:
                    </p>
                    <img src="images/formule/f58.jpg" /><br />
                    <ul class="text">
                            <li><strong>-</strong> K0-const. vitezei globale de biosinteza</li>
                            <li><strong>-</strong> e-eficienta exprimarii genetice</li>
                            <li><strong>-</strong> Gp-concentratia ADN-ului in plasmide</li>
                            <li><strong>-</strong> b-const.</li>
                            <li><strong>-</strong> µ+ :viteza specifica de crestere a celulelor purtatoare de plasmide</li>
                    </ul>
                    <p class="text">Aceasta ecuatie poate fi comparata cu modelul nestructurat Luedeking-Piret,ce poate fi exprimat pentru fermentatia cu celule recombinante:
                        <img src="images/formule/f59.jpg" /> , X+ :concentratia celulelor cu plasmide<br />
                        <img src="images/formule/f60.jpg" />
                    </p>
		</div>
	</div>
	
	<div id="twelve">
		<div class="slide">
			  <h1 id="modele-corpusculare">3. Modele cinetice segregate (corpusculare).<br /></h1>
                        <p class="text">Acestea sunt nestructurate,au abilitatea ca pornind de la o unica variabila(eg: varsta celulelor),ele pot descrie complet toate celulele cu aceeasi varsta ca avand aceeasi compozitie.
                        <br />Avem un model propus de Bley,pornit de la celule in 2 stari diferite: neinmugurite/ inmugurite.Avem concentratiile X1 si X2 si S concentratia substratului.
                        <br />Astfel vom avea sistemul de relatii:<br />
                        <img src="images/formule/f61.jpg" /><br />
                        Unde K1(S) reprezinta viteza specifica a trecerii de la starea X1 la X2, K2(s)
                        este viteza procesului invers, a1(S) si a2(S) coeficientii de randament a conversiei  de la S la X1 respectiv S la X2.
                        <br />Modelele segregate si structurate sunt insuficiet aplicate in bioprocese(preluate din biologia moleculara),pentru utilizarea lor trebuie:
                     <ul class="text">
                            <li><strong>-</strong> evolutia rapida a tehnicilor analitice folosindu-se proprietatile optice,electrice sau electromagnetice ale celulelor sau a unor componente celulare( rezonanta magnetica,nucleara).</li>
                            <li><strong>-</strong> progrese in modelarea matematica.</li>
                    </ul>

                    </p>
                
		</div>
	 </div>
	 
	 <div id="treispe">
		<div class="slide">
			  <h1>4. Bioreactoare.<br /></h1>
                        <p class="text">Procesul de baza in biotehnologie este "procesul biologic",acesta se realizeaza intr-un bioreactor.<br />
							<div style="text-decoration: underline; display: inline; font-weight: bold">Bioreactor</div>   -instalatie tehnologica in interiorul careia are loc transformarea materiilor prime cu ajutorul sistemului enzimatic pus la dispozitie de microorganismele vii,celulele animale si vegetale,sau de enzimele izolate din acestea. <br /><p></p>
							<img src="images/bioreactor.png" />
							<p class="text">
								Alegerea unui bioreactor se face in functie de tipul de organism,sistemul de cultivare,caracteristicile biochimice ale intregului proces si natura procesului biotehnologic.In functie de ultimul criteriu avem:
								<ul>
									<li>
										-bioreactoare biologice
										<ul>
											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-proces de fermentatie(cu biomasa)</li>
											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-pot fi:pentru fermentatii anaerobe sau aerobe</li>
										</ul>
									</li>
									<li>
										-bioreactoare biochimice
										<ul>
											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-proces enzimatic</li>
											<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-pot fi:cu enzime libere,imobilizate sau cu faza solida</li>
										</ul>
									</li>
								</ul>
								Avem urmatoarele etape:
								<img src="images/etape.png" />
							</p>

                    </p>
                
		</div>
	 </div>
	 
	<div id="paispe">
		<div class="slide">
			  <h1>5. Sisteme de cultivare a microorganismelor.<br /></h1>
                        <p class="text">Avem parte de 2 majore:
                        	<ul>
                        		<li>-sistem submers</li>
                        		<li>-culturi de suprafata</li>
                        	</ul>
                    </p>
		</div>
	</div>
	
	<div id="cincispe">
		<div class="slide">
			  <h3>5.1 Sistem submers.<br /></h3>
                    <p class="text">Mediul de cultura poate fi lichid,aerat sau agitat.
									Exista 3 moduri de operare:discontinuu,continuu si semicontinuu.<br />
									Cel mai important este cel continuu,reactorul fiind construit astfel incat exista o aprovizionare cu nutrienti si o evacuare permanente.Avem 2 tipuri de reactoare ideale(tip R-cu recirculare,tip D-cu deplasare):
									<img src="images/submers1.png" /><br /><img src="images/submers2.png" /><br />
									Avem cateva tipuri de bioreactoare submerse:
									<ul>
										<li>-cu agitare mecanica</li>
										<li>-cu convectie fortata</li>
										<li>-cu aer comprimat</li>
									</ul>
                    </p>
		</div>
	</div>
	<div id="saispe">
		<div class="slide">
			  <h3>5.2 Culturi de suprafata.<br /></h3>
                    <p class="text">Primele sisteme de fermentatie folosite,iar mediul de cultura poate fi solid,semisolid sau e reprezentat de starturi lichide in repaus.
									In sisteme omogene compozitia mediului de fermentatie e uniforma in orice parte a bioreactorului,in orice moment.<br />
									In sisteme heterogene microorganismele sunt expuse la diferite conditii de mediu.<br /><br />
									Avem cateva tipuri de bioreactoare:
									<ul>
										<li>-cu tavi</li>
										<li>-tip coloana cu umplutura</li>
										<li>-in strat fluidizat si cu strat fix</li>
									</ul>
                    </p>
		</div>
	</div>
	
	<div id="saptispe">
		<div class="slide">
			  <h1>6.Bioreactoare pentru fermentatii aerobe.<br /></h1>
                    <p class="text">Dupa modul de introducere a energiei necesare amestecarii fazei lichide(substrat si microorganisme) si dispersarii fazei gazoase(aer) ele sunt:
                    	<ul>
                    		<li>-cu amestecare mecanica<br /><img src="images/aerobe1.png" /></li>
                    		<li>-cu pompa de recirculare<br /><img src="images/aerobe2.png" /></li>
                    		<li>-cu aer comprimat<br /><img src="images/aerobe3.png" /></li>
                    	</ul><br />
                    	Caracteristici:
                    	<ul>
                    		<li>∙Omogenizarea mediului- sicane</li>
                    		<li>∙Degajarea bulelor de aer- spargator de spuma</li>
                    		<li>∙Transferul de caldura- prin agitare si turbulenta:</li>
                    			<ul>
                    				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-in timpul sterilizarii(cand se realizeaza in bioreactor)</li>
                    				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-in timpul fermentatiei(sterilizarea se realizeaza in alt vas)</li>
                    			</ul>
                    		<li>∙Preluarea caldurii de reactie degajata in timpul fermentatiei:</li>
                    			<ul>
                    				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-sistem de racire cu serpentine,cel mai des intalnit.Are dezavantajul ca este greu de spalat si sterilizat</li>
                    				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-sistem de racire cu schimbator de caldura exterior</li>
                    			</ul>
                    	</ul> 
                    </p>
		</div>
	</div>
	
	<div id="optispe">
		<div class="slide">
			  <h1>7. Factori de mediu.<br /></h1>
                    <p class="text">-temperatura,concentratia de O2 si PH-ul influenteaza rata de crestere a celulelor.<br /><br />
									TEMPERATURA-celulele sunt in majoritatea cazurilor cultivate la 37 grade Celsius, insa acest factor a fost studiat intens deoarece el afecteaza efecte ca rata de crestere,metabolismul si viabilitatea sintezei proteinelor.
									Astfel,dupa experimente indelungate s-a dovedit ca la temperaturi de peste 37 grade Celsius rata de crestere este scazuta,de asemenea micsorandu-se si concentratia maxima de celule,daca trecem de temperatura de 39 grade,cresterea celulelor se opreste,viabilitatea celulelor scazand foarte mult.
									Mai mult,la temperaturi de sub 37 grade Celsius rata de crestere scade,non-linear, pe cand la temperaturi de sub 35 de grade celulele isi mentin o viabilitate mare pe masura ce timpul trece iar producerea de derivate toxice scade.
									<img src="images/fact.png" />
                    </p>
		</div>
	</div>
		

<br /><br /><br /><br />
<footer style="background-color: transparent;"><div class="corp" style="padding-left: 200px;"><a href="Default.aspx"><img src="images/footer_logo.png" height="80px"/></a></div></footer>

</div>
</body>

</html>