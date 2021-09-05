<ROUTINE PRINT-DESC1 (OBJ)
    <COND (.OBJ
        <TELL D .OBJ>)>>

<ROUTINE PRINT-ID (ID "OPT" (CONDITION T))
    <COND (.CONDITION
        <TELL "[ID: " .ID ", PRSO: "> <PRINT-DESC1 ,PRSO> <TELL ", PRSI: "> <PRINT-DESC1 ,PRSI> <TELL "]">
        )>>

<ROUTINE PRINT-DEBUG (TEXT "OPT" (CONDITION T))
    <COND (.CONDITION
        <TELL "DEBUG FLAG: " .TEXT>
        )>>

<ROUTINE IS-THEFT? ()
    <EQUAL? ,PRSO ,ALTAR ,ATTIC-TABLE ,AXE ,BAG-OF-COINS ,BAR
    ,BAUBLE ,BELL ,BLUE-BUTTON ,BOARD
    ,BOAT-LABEL ,BOLT ,BOOK ,BOTTLE ,BRACELET ,BUOY
    ,CANDLES ,CHALICE ,COFFIN ,CONTROL-PANEL ,EMERALD
    ,GARLIC ,GRATE
    ,JADE ,KEYS ,KITCHEN-TABLE ,KNIFE ,LADDER ,LAMP ,LARGE-BAG
    ,LUNCH ,MACHINE ,MACHINE-SWITCH ,MAILBOX ,MAP ,MIRROR-1 ,MIRROR-2
    ,PAINTING ,PEDESTAL ,POT-OF-GOLD ,PUMP ,PUTTY
    ,RAISED-BASKET ,RED-BUTTON ,ROPE ,RUG ,RUSTY-KNIFE ,SANDWICH-BAG ,SCARAB
    ,SCEPTRE ,SCREWDRIVER ,SHOVEL ,SKULL ,STILETTO ,SWORD ,TORCH
    ,TROPHY-CASE ,TUBE
    ,WRENCH ,YELLOW-BUTTON ,ZORKMID>>

<ROUTINE IS-OBJECT-OR-PROPERTY? ()
    <EQUAL? ,PRSO ,ADVERTISEMENT ,ALTAR ,ATTIC-TABLE ,AXE ,BAG-OF-COINS ,BAR
    ,BARROW ,BARROW-DOOR ,BAUBLE ,BELL ,BLUE-BUTTON ,BOARD ,BOARDED-WINDOW
    ,BOAT-LABEL ,BOLT ,BOOK ,BOTTLE ,BRACELET ,BUOY ,BURNED-OUT-LANTERN ,CANARY
    ,CANDLES ,CHALICE ,COFFIN ,CONTROL-PANEL ,DAM ,EGG ,EMERALD ,ENGRAVINGS
    ,FRONT-DOOR ,GRATE ,GUIDE ,HOT-BELL ,INFLATABLE-BOAT ,INFLATED-BOAT
    ,JADE ,KEYS ,KITCHEN-TABLE ,KITCHEN-WINDOW ,KNIFE ,LADDER ,LAMP ,LARGE-BAG
    ,LUNCH ,MACHINE ,MACHINE-SWITCH ,MAILBOX ,MAP ,MATCH ,MIRROR-1 ,MIRROR-2
    ,NEST ,PAINTING ,PEDESTAL ,POT-OF-GOLD ,PUMP ,PUNCTURED-BOAT ,PUTTY ,RAILING
    ,RAISED-BASKET ,RED-BUTTON ,ROPE ,RUG ,RUSTY-KNIFE ,SANDWICH-BAG ,SCARAB
    ,SCEPTRE ,SCREWDRIVER ,SHOVEL ,SKULL ,STAIRS ,STILETTO ,SWORD ,TORCH ,TRAP-DOOR
    ,TREE ,TRIDENT ,TROPHY-CASE ,TRUNK ,TUBE ,WALL ,WHITE-HOUSE ,WOODEN-DOOR
    ,WRENCH ,YELLOW-BUTTON ,ZORKMID>>

<ROUTINE DANGEROUS-TO-GIVE-TROLL? ()
    <OR <EQUAL? ,PRSO ,PUTTY ,TUBE> <FSET? ,PRSO ,WEAPONBIT>>>

; "for compatibility with zork-substrate"
<ROUTINE BOMB? (TMP)
    <RFALSE>>

<ROUTINE IS-BAD-TO-PICK? ()
    <EQUAL? ,PRSO ,FRONT-DOOR>>

<ROUTINE IS-PERSON? ()
    <EQUAL? ,PRSO ,TROLL ,CYCLOPS ,THIEF>>

;[" <ROUTINE IS-PERSON-INCLUDE-SELF? ()
    <OR <EQUAL? ,PRSO ,ME> <IS-PERSON?>>> "]

<ROUTINE DANGEROUS-DRINK? ()
    <EQUAL? ,PRSO ,PUTTY>>

<ROUTINE DANGEROUS-FOOD? ()
    <OR <IS-PART-OF-SELF?> <IS-OBJECT-OR-PROPERTY?>>>

<ROUTINE IS-ANIMAL? ()
    <EQUAL? ,PRSO ,GRUE ,BAT>>

<ROUTINE IS-OBJ-PROP-ANIMAL? ()
    <OR <IS-OBJECT-OR-PROPERTY?>
        <IS-ANIMAL?>>>

<ROUTINE IS-SELF? ()
    <EQUAL? ,PRSO ,ME>>

<ROUTINE IS-PART-OF-SELF? ()
    <EQUAL? ,PRSO ,HANDS>>

<ROUTINE IS-PART-OF-SELF-OR-SELF? ()
    <OR <IS-SELF?> <IS-PART-OF-SELF?>>>



;[" <ROUTINE HARM-VERB? ()
	 <VERB? HIT BITE KICK PUSH THROW MOVE>>

<ROUTINE KILL-VERB? ()
    <VERB? KILL MUNG>> "]