
TELENET
415 117E 

TERMINAL=

@70339l*!here


703 39L CONNECTED
lSystem/32, VOS Roelease 6.0, Module %cvideo#m3
Please login  22:13:37
gin chip -modul eme m1
Password?
work
gudest.lucas logged in on % cvideo#m1 at 88-03-03 22:13:50 EST.
Misc>hea
Welcome to the Quantum Stratus System.



  You have no mail.

Actions>actions_help.pl1

%cvideo#d010>lucas>microcosm>Actions>actions_help.pl1  88-03-03 22:14:10 EST

/*
 *   actions_help.pl1
 *
 *   Behavior routines for the help protocol.
 *
 *   Chip Morningstar
 *   Lucasfilm Ltd.
 *   19-August-1986
 */

/*
 * %include 'microcosm.incl.pl1';
 * %include 'defs_helper.incl.pl1';
 */

generic_HELP: procedure;
     declare the_message character(114) varying;
     declare help_messages(0:158) character(114) varying static init(
'i',                                     /*   0 -- region */
'i',                                     /*   1 -- avatar */
'i',                                     /*   2 -- amulet */
'-',                                     /*   3 */
'ATM: DO displays account balance.  GET withdraws tokens.  PUT deposits tokens into your account.',                    /*   4 -- atm */
'i',                                     /*  5 -- game piece */
'i',                                     /*  6 -- bag */
'Recommended for ages 3 through adult.', /*   7 -- ball */
'-',                                     /*   8 */
'-',                                     /*   9 */
'i',                                     /*  10 -- book */
'Do not use in enclosed spaces.',        /*  11 -- boomerang */
'BOTTLE: GET from water source to fill.  PUT at target to pour.',                                                      /*  12 -- bottle */
'i',                                     /*  13 -- box */
'-',                                     /*  14 */
'-',                                     /*  15 */
'User assumes all responsibility for consequences of use.', /*  16 -- club */
'COMPASS: Arrow points towards West Pole.',/*  17 -- compass */
'Acme Countertop Co.',         /*  18 -- countertop */
'-',                                     /*  19 */
'Fragile, do not drop.',                 /*  20 -- crystal ball */
'DIE: DO rolls the die',                                /*  21 -- die */
'Acme Display Case Co., Fnelia',         /*  22 -- display case */
'i',                                     /*  23 -- door */
'Don''t ever antagonize the horn.',/*  24 -- dropbox */
'Take only as directed.  Select DO to consume.',/*  25 -- drugs */
'Select DO to activate.',                /*  26 -- escape device */
'Use with care.',                        /*  27 -- fake gun */
'i',                                     /*  28 -- elevator */
'"Soldier ask not, now or ever, where to war your banners go..."',                                                      /*  29 -- flag */
'i',                                     /*  30 -- flashlight */
'Do not use near powerlines.',           /*  31 -- frisbee */
'GARBAGE CAN: DO flushes contents.',     /*  32 -- garbage can */
'i',                                     /*  33 -- gemstone */
'-',                                     /*  34 */
'i',                                     /*  35 -- grenade */
's',                                     /*  36 -- ground */
'Use with care.',                        /*  37 -- gun */
'How dare you!',                         /*  38 -- hand of god */
'i',                                     /*  39 -- hat */
'Add water to activate.',                /*  40 -- instant object pill */
'i',                                     /*  41 -- jacket */
'KEY: Hold while opening or closing door or container, if key matches lock, it will lock or unlock it.' ,              /*  42 -- key */
'i',                                     /*  43 -- knick knack */
'Point sharp end towards victim.',       /*  44 -- knife */
'MAGIC LAMP: DO rubs lamp and calls Genie.  TALK to Genie to make wish.  Phrase your wish *carefully*!',               /*  45 -- magic lamp */
'i',                                     /*  46 -- magic staff */
'i',                                     /*  47 -- magic wand */
'We Await Silent Tristero''s Empire',             /*  48 -- mailbox */
'You too can be a highly paid universe designer.  Contact... (the rest is illegible, I''m afraid)',                    /*  49 -- matchbook */
'-',                                     /*  50 */
'-',                                     /*  51 */
'Select DO to turn on or off.',          /*  52 -- movie camera */
'-',                                     /*  53 */
'PAPER: Select DO to read from or write on paper.', /*  54 -- paper */
'i',                                     /*  55 */
'What''s the matter?  Can''t you read?', /*  56 -- short sign */
'What''s the matter?  Can''t you read?', /*  57 -- sign */
'Acme Landscaping Company',              /*  58 -- plant */
'-',                                     /*  59 */
'i',                                     /*  60 -- ring */
'Acme Quarries, Ltd.',                   /*  61 -- rock */
'-',                                     /*  62 */
'Select DO to turn on or off.',          /*  63 -- security device */
'i',                                     /*  64 -- sensor */
'-',                                     /*  65 */
'-',                                     /*  66 */
'-',                                     /*  67 */
'-',                                     /*  68 */
's',                                     /*  69 -- sky */
'u',                                     /*  70 -- stereo */
'u',                                     /*  71 -- tape */
'-',                                     /*  72 */
'-',                                     /*  73 */
'i',                                     /*  74 -- teleport booth */
'i',                                     /*  75 -- ticket */
'TOKENS: DO displays denomination.',     /*  76 -- tokens */
'-',                                     /*  77 */
'-',                                     /*  78 */
'-',                                     /*  79 */
's',                                     /*  80 -- wall */
'-',                                     /*  81 */
'Select DO to wind.',                    /*  82 -- windup toy */
'-',                                     /*  83 */
'CHANGE-O-MATIC: Point at wall or furniture, then select DO.  Works only in your Turf.',                               /*  84 -- changomatic */
'VENDO: DO displays next selection.  PUT tokens here to purchase item on display.',                                    /*  85 -- vendo front */
'i',                                     /*  86 -- vendo inside */
's',                                     /*  87 -- trapezoid */
's',                                     /*  88 -- hole */
'SHOVEL: Point at ground and select DO to dig.',                                                                       /*  89 -- shovel */
'CHANGE MACHINE: Select DO for change.', /*  90 -- sex changer */
'STUN GUN: do not overuse.',             /*  91 -- stun gun */
's',                                     /*  92 -- super trapezoid */
's',                                     /*  93 -- flat */
'This is a test.  Had this been an actual object this message would have meaningful content.',                         /*  94 -- test */
'BODY SPRAYER: Point at desired limb, then select DO to color that limb.',                                             /*  95 -- spray can */
'PAWN MACHINE: PUT item inside, then DO to receive tokens in exchange for item',   /*  96 -- pawn machine */
'i',                                     /*  97 -- switch / immobile magic */
's',                                     /*  98 -- "glue" */
'-',                                     /*  99 */
'-',                                     /* 100 */
'-',                                     /* 101 */
'-',                                     /* 102 */
'-',                                     /* 103 */
'-',                                     /* 104 */
'-',                                     /* 105 */
'-',                                     /* 106 */
'-',                                     /* 107 */
'-',                                     /* 108 */
'-',                                     /* 109 */
'-',                                     /* 110 */
'-',                                     /* 111 */
'-',                                     /* 112 */
'-',                                     /* 113 */
'-',                                     /* 114 */
'-',                                     /* 115 */
'-',                                     /* 116 */
'-',                                     /* 117 */
'-',                                     /* 118 */
'-',                                     /* 119 */
'-',                                     /* 120 */
'-',                                     /* 121 */
'-',                                     /* 122 */
'-',                                     /* 123 */
'-',                                     /* 124 */
'-',                                     /* 125 */
'-',                                     /* 126 */
'i',                                     /* 127 -- head */
'-',                                     /* 128 */
'Something fishy is going on here.',     /* 129 -- aquarium */
'BED: If standing by bed, point at it and select GO to sit.  If sitting, point at bed and GO to stand again.',         /* 130 -- bed */
'"Beware of troll"',                     /* 131 -- bridge */
'"An Avatar''s Turf is his castle."',    /* 132 -- building */
'Acme Landscaping Co.',                  /* 133 -- bush */
'CHAIR: If standing by chair, point at it and select GO to sit.  If sitting, point at chair and GO to stand again.',   /* 134 -- chair */
'i',                                     /*  135 -- chest */
'"Have A Choke!"  Insert coin.',         /* 136 -- coke machine */
'COUCH: If standing by couch, point at it and select GO to sit.  If sitting, point at couch and GO to stand again.',   /* 137 -- couch */
'Acme Fence Co.',                        /* 138 -- fence */
'i',                                     /* 139 -- floor lamp */
'PUT tokens for significant message.',   /* 140 -- fortune machine */
'FOUNTAIN: TALK sends message to the Oracle.  Phrase your question or request *carefully*!',                           /* 141 -- fountain */
'-',                                     /* 142 */
'"Meow!"',                               /* 143 -- house cat */
'Acme Hot Tub Co., Marin, California',   /* 144 -- hot tub */
'u',                                     /* 145 -- jukebox */
'-',                                     /* 146 */
's',                                     /* 147 -- pond */
's',                                     /* 148 -- river */
'i',                                     /* 149 -- roof */
'i',                                     /*  150 -- safe */
'-',                                     /* 151 */
'What''s the matter?  You blind?  It''s a picture.', /* 152 -- picture */
's',                                     /* 153 -- street */
'Acme Streetlamp Co.',                   /* 154 -- streetlamp */
'Acme Table Co.',                        /* 155 -- table */
'Acme Landscaping Co.',                  /* 156 -- tree */
'Acme Window Co.',                       /* 157 -- window */
'BUREAUCRAT: TALK sends your request to the bureaucracy.  Please be sure this is the right bureaucrat.'                        /* 158 -- bureaucrat */
     );

     the_message = help_messages(self.class);
     if (the_message = '-') then /* non-existant objects */
          the_message = 'This object does not exist.';
     else if (the_message = 's') then /* background scenic objects */
          the_message = 'For HELP, point at an object and press the F7 key.';
     else if (the_message = 'u') then /* unimplemented help features */
          the_message = 'Sorry, no help here yet.';
     else if (the_message = 'i') then do; /* impossible to get messages */
          call trace_msg('Impossible help request, class '||ltrim(self.class));
          the_message = 'How did you do that?';
     end;
     call r_msg_s(the_message);
end generic_HELP;

eh? logout
guest.lucas logged out.

703 39L DISCONNECTED 00 40 00:00:02:55 247 7 
