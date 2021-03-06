BEGIN CPMelvin

IF ~!Global("CPQuestPart","GLOBAL",5)NumTimesTalkedTo(0)~ THEN BEGIN InitialTalk
SAY ~Hmpf, geht mir aus der Sonne, <RACE>.~
IF ~~ THEN EXIT
END

IF ~Global("CPQuestPart","GLOBAL",5)NumTimesTalkedTo(0)~ THEN BEGIN InitialTalk2
SAY ~Hmpf, was wollt Ihr, <RACE>? ~
IF ~HasItem("CPscrl1",LastTalkedToBy())Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY ~(Die Befehle �berreichen) Ich hei�e <CHARNAME>, ich soll hier f�r Euch arbeiten.~ GOTO Mage
IF ~HasItem("CPscrl1",LastTalkedToBy())!Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY ~(Die Befehle �berreichen) Ich hei�e <CHARNAME>, ich soll hier f�r Euch arbeiten.~ GOTO Work
IF ~~ THEN REPLY ~Seid Ihr Melvin? Ich suche ein M�dchen Namens Alienne und ich glaube, dass Ihr ganz genau wisst wo ich suchen muss!~ GOTO Fight
IF ~~ THEN REPLY ~Nichts, Auf wiedersehen.~ GOTO EndTalk
END

IF ~~ THEN BEGIN Mage
SAY ~Soso, arbeiten wollt Ihr, ja? Ihr k�nnt mich nicht t�uschen, Magier. Ich denke ich wei� ganz genau warum Ihr wirklich hier seid, und Ihr werdet bald erfahren, dass es mit uns nicht zu Spa�en ist.~
= ~Travin hat gerade eine geh�rige Menge Spa� mit der G�re in einem Haus s�dlich von hier. Und ich werde nun meinen Spa� mit euch haben.~
= ~ANGRIFF M�NNER!!~
//Melvin greift zusammen mit seinen Wachen an.
IF ~~ THEN DO ~Enemy()SetGlobal("CPSideQuest","GLOBAL",0)~ UNSOLVED_JOURNAL %Aliennes Entf�hung

Melvin erkannte sofort, dass ich ein Magier bin und griff mich mit seinen Wachen an.
Nun habe ich jegliche Verbindung zu Alienne verloren. Mir bleibt nichts anderes �brig als in Beregost nach dem Versteck zu suchen. Ich sollte mich beeilen um Alienne lebend aus den H�nden dieses Travin zu retten.% EXIT
END

IF ~~ THEN BEGIN Work
SAY ~Soso, man schickt Euch also direkt aus Amn hier her, <PRO_GIRLBOY>? Hmpf, anscheinend traut man uns hier nicht einmal derart simple Auftr�ge zu. Eure Papiere scheinen echt zu sein, aber Ihr versteht sicherlich wenn ich Euch nicht direkt zum Hauptquartier geleiten kann. Wir unterstehen zwar den Meistern in Amn, aber wir haben einen gewissen Qualit�tsstand zu halten, wenn Ihr versteht was ich meine...~
= ~Nun, Ihr wisst sicher wie gef�hrlich unsere Arbeit bisweilen sein kann, wir k�nnen uns dabei nicht auf irgendwelche St�mper aus Amn verlassen. Ich habe einen kleinen Auftrag f�r Euch, sozusagen um Eure F�higkeiten unter Beweis zu stellen.~
= ~Wir sind schon seit einigen Wochen hinter einem Magier her. Er ist �u�erst m�chtig und verf�gt �ber einige nicht minder m�chtige und daher wertvolle Gegenst�nde! Da Ihr vorgebt ein im Umgang mit Magiern versierter Krieger zu sein d�rfte diese Aufgabe f�r Euch jedoch kaum ein Problem darstellen. T�tet die Zielperson und bringt mir den Stab den sie bei sich tr�gt! Kann ich mich auf Euch verlassen?~
IF ~~ THEN REPLY ~Wer ist die Zielperson?~ GOTO Zielperson
IF ~~ THEN REPLY ~Zeigt in die Richtung und betrachtet die Sache als erledigt!~ GOTO Accept
IF ~~ THEN REPLY ~Ich habe kein Interesse Euren Handlanger zu spielen, zeigt mir den Weg zum Unterschlupf oder schmeckt Stahl!~ GOTO Fight2
END

IF ~~ THEN BEGIN Zielperson
SAY ~Ich kann Euch leider nicht mehr �ber den Auftrag erz�hlen bevor ich nicht Eure Zusage habe. Nehmt den Auftrag an, dann erl�utere ich die Einzelheiten.~
IF ~~ THEN REPLY ~Also gut, ich bin dabei.~ GOTO Accept
IF ~~ THEN REPLY ~Ich habe kein Interesse Euren Handlanger zu spielen, zeigt mir den Weg zum Unterschlupf oder schmeckt Stahl!~ GOTO Fight2
END

IF ~~ THEN BEGIN Accept
SAY ~Ihr scheint zumindest nicht auf den Kopf gefallen zu sein. Also passt auf, der Auftraggeber m�chte einen Magier namens Firebead Elfenhaar tot sehen. Wir sind ihm bereits seit Wochen auf den Fersen, aber der Feigling hat sich lange Zeit in Kerzenburg versteckt. Vor ein paar Tagen kehrte er allerdings in sein Haus hier in Beregost zur�ck. Und hier kommt Ihr ins Spiel. Ihr werdet in sein Haus eindringen, den alten Kerl um die Ecke bringen und mir seinen Stab beschaffen.~
= ~Seid jedoch gewarnt, er ist ein hinterh�ltiger alter Knacker, und verf�gt �ber einige magische F�higkeiten. Kommt zur�ck wenn Ihr den Stab habt, er d�rfte einige �beraus m�chtige Verzauberungen beherbergen.~
IF ~~ THEN REPLY ~Tut mir Leid f�r Euch, aber ich habe es mir anders �berlegt. Nun f�hrt mich zu eurem Unterschlupf, dann verschone ich Euch vielleicht.~ GOTO Fight2
IF ~~ THEN REPLY ~Ich mache mich dann mal auf den Weg.~ GOTO EndTalk2
END

IF ~~ THEN BEGIN Fight
SAY ~Achso ist das? Seht, ich mache mir die H�nde nicht mit Affen wie Euch schmutzig. Beregost ist gro�, es wird Euch nicht gelingen unseren Unterschlupf zu finden bevor das M�dchen tot ist...~
= ~ANGRIFF M�NNER!!~
// Melvin flieht, seine Wachen greifen an.
// Wachen fehlen noch
IF ~~ THEN DO ~EscapeAreaMove("AR6754",255,251,6)SetGlobal("CPSideQuest","GLOBAL",0)~ UNSOLVED_JOURNAL %Aliennes Entf�hung

Ich habe Melvin direkt mit meiner Suche nach Alienne konfrontiert. Leider zeigte er sich davon nicht sonderlich beeindruckt und verschwand, jedoch nicht ohne seine Wachen auf uns zu hetzen.
Nun habe ich jegliche Verbindung zu Alienne verloren. Mir bleibt nichts anderes �brig als in Beregost nach dem Versteck zu suchen. Ich sollte mich beeilen um Alienne lebend aus den H�nden dieses Travin zu retten.% EXIT
END

IF ~~ THEN BEGIN Fight2
SAY ~Achso ist das? Seht, ich mache mir die H�nde nicht mit Affen wie Euch schmutzig. Ich sch�tze ich verstehe langsam, warum Ihr wirklich hier seid. Beregost ist gro�, es wird Euch nicht gelingen unseren Unterschlupf zu finden bevor das M�dchen tot ist...~
= ~ANGRIFF M�NNER!!~
// Melvin flieht, seine Wachen greifen an.
// Wachen fehlen noch
IF ~~ THEN DO ~EscapeAreaMove("AR6754",255,251,6)SetGlobal("CPSideQuest","GLOBAL",0)~ UNSOLVED_JOURNAL %Aliennes Entf�hung

Melvin verlangte von mir, dass ich einen Magier namens Firebead Elfenhaar ermorde, um meine F�higkeiten unter Beweis zu stellen. Ich habe mich jedoch dagegen entschieden, woraufhin seine Wachen auf mich hetzte.
Nun habe ich jegliche Verbindung zu Alienne verloren. Mir bleibt nichts anderes �brig als in Beregost nach dem Versteck zu suchen. Ich sollte mich beeilen um Alienne lebend aus den H�nden dieses Travin zu retten.% EXIT
END

IF ~~ THEN BEGIN EndTalk
SAY ~Hmpf...~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN EndTalk2
SAY ~Hmpf... Ich werde hier auf Euch warten. Aber beeilt euch, ich habe keine Lust den ganzen Tag hier zu stehen.~
IF ~~ THEN DO ~SetGlobal("CPSideQuest","GLOBAL",1)~ UNSOLVED_JOURNAL %Aliennes Entf�hung

Ich habe mich mit Brols Kontaktmann getroffen, dieser war jedoch nicht bereit mich ohne eine Pr�fung zum Unterschlupf zu f�hren. Um meinen Nutzen f�r die Organisation zu beweisen soll ich Firebead Elfenhaar, einen alten Bekannten aus Kerzenburg, t�ten und dessen Stab als Beweis mitbringen. Er wohnt irgendwo hier in Beregost.% EXIT
END