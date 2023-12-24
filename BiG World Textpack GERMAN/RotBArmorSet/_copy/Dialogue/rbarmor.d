BEGIN RBARMOR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY @0
IF ~~ THEN REPLY @1 GOTO BuyStuff
IF ~~ THEN REPLY @2 GOTO GoodBye
IF ~~ THEN REPLY @3 GOTO BackOff
END

IF ~~ THEN BEGIN BuyStuff
SAY @4
IF ~~ THEN DO ~StartStore("rbarmor",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN GoodBye
SAY @5 
END

IF ~~ THEN BEGIN BackOff
SAY @6
IF ~~ THEN REPLY @7 DO ~StartStore("rbarmor",LastTalkedToBy())~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN HiAgain
SAY @8 
IF ~~ THEN REPLY @9 DO ~StartStore("rbarmor",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @2 EXIT
END