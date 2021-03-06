INCLUDE "constants.asm"

; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Trainer Parties", ROMX[$5110], BANK[$E]

INCLUDE "data/trainers/party_pointers.inc"

; TODO: decode all data

HayatoGroup::

SECTION "Trainer Parties 1 TEMPORARY", ROMX[$51BF],BANK[$E]
AkaneGroup::
BugCatcherBoyGroup::
	; BUG_CATCHER_BOY_JUNICHI
	db "じゅんいち@", TRAINERTYPE_ITEM_MOVES
	db  7, DEX_PARAS, ITEM_NONE, MOVE_STUN_SPORE, MOVE_LEECH_LIFE, MOVE_NONE, MOVE_NONE
	db -1 ; end

	; BUG_CATCHER_BOY_SOUSUKE
	db "そうすけ@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_REDIBA, ITEM_NONE, MOVE_SCRATCH, MOVE_QUICK_ATTACK, MOVE_NONE, MOVE_NONE
	db -1 ; end

; Leftover Bug Catcher data from Red/Blue
	db  6, MON_BEEDLE, MON_CATERPIE, 0
	db  7, MON_BEEDLE, MON_COCOON, MON_BEEDLE, 0
	db  9, MON_BEEDLE, 0
	db 10, MON_CATERPIE, MON_BEEDLE, MON_CATERPIE, 0
	db  9, MON_BEEDLE, MON_COCOON, MON_CATERPIE, MON_TRANSEL, 0
	db 11, MON_CATERPIE, MON_TRANSEL, 0
	db 11, MON_BEEDLE, MON_COCOON, 0
	db 10, MON_CATERPIE, MON_TRANSEL, MON_CATERPIE, 0
	db 14, MON_CATERPIE, MON_BEEDLE, 0
	db 16, MON_BEEDLE, MON_CATERPIE, MON_BEEDLE, 0
	db 20, MON_BUTTERFREE, 0
	db 18, MON_TRANSEL, MON_CATERPIE, MON_KONGPANG, 0
	db 19, MON_SPEAR, MON_SPEAR, 0
	db 20, MON_CATERPIE, MON_BEEDLE, MON_KONGPANG, 0

TsukishiGroup::
LassGroup::
	; LASS_ATSUKO
	db "あつこ@", TRAINERTYPE_ITEM_MOVES
	db  8, DEX_NAZONOKUSA, ITEM_NONE
	; No moves?
	db -1 ; end

; Leftover Lass data from Red/Blue
	db  9, MON_POPPO, MON_POPPO, 0
	db 10, MON_KORATTA, MON_NIDORAN_M, 0
	db 14, MON_PURIN, 0
	db 31, MON_PARAS, MON_PARAS, MON_PARASECT, 0
	db 11, MON_NAZONOKUSA, MON_MADATSUBOMI, 0
	db 14, MON_PIPPI, 0
	db 16, MON_POPPO, MON_NIDORAN_F, 0
	db 14, MON_POPPO, MON_NIDORAN_F, 0
	db 15, MON_NIDORAN_M, MON_NIDORAN_F, 0
	db 13, MON_NAZONOKUSA, MON_POPPO, MON_NAZONOKUSA, 0
	db 18, MON_POPPO, MON_NIDORAN_F, 0
	db 18, MON_KORATTA, MON_PIKACHU, 0
	db 23, MON_NIDORAN_F, MON_NIDORINA, 0
	db 24, MON_NYARTH, MON_NYARTH, MON_NYARTH, 0
	db 19, MON_POPPO, MON_KORATTA, MON_NIDORAN_M, MON_NYARTH, MON_PIKACHU, 0
	db 22, MON_PIPPI, MON_PIPPI, 0
	db 23, MON_MADATSUBOMI, MON_UTSUDON, 0
	db 23, MON_NAZONOKUSA, MON_KUSAIHANA, 0

EnokiGroup::
; Leftover Sailor data from Red/Blue
	db 18, MON_WANRIKY, MON_SHELLDER, 0
	db 17, MON_WANRIKY, MON_MENOKURAGE, 0
	db 21, MON_SHELLDER, 0
	db 17, MON_TATTU, MON_SHELLDER, MON_MENOKURAGE, 0
	db 18, MON_MENOKURAGE, MON_HITODEMAN, 0
	db 17, MON_TATTU, MON_TATTU, MON_TATTU, 0
	db 20, MON_WANRIKY, 0
	db 21, MON_PIKACHU, MON_PIKACHU, 0

OkeraGroup::
; Leftover Jr.Trainer♂ data from Red/Blue
	db 11, MON_DIGDA, MON_SAND, 0
	db 14, MON_KORATTA, MON_ARBO, 0
	db 18, MON_MANKEY, 0
	db 20, MON_ZENIGAME, 0
	db 16, MON_ONISUZUME, MON_RATTA, 0
	db 18, MON_DIGDA, MON_DIGDA, MON_SAND, 0
	db 21, MON_GARDIE, MON_HITOKAGE, 0
	db 19, MON_KORATTA, MON_DIGDA, MON_ARBO, MON_SAND, 0
	db 29, MON_NIDORAN_M, MON_NIDORINO, 0

SECTION "Trainer Parties 4 TEMPORARY", ROMX[$52B4],BANK[$E]
MikanGroup::

SECTION "Trainer Parties 5 TEMPORARY", ROMX[$5320],BANK[$E]
BlueGroup::

SECTION "Trainer Parties 6 TEMPORARY", ROMX[$533D],BANK[$E]
GamaGroup::

SECTION "Trainer Parties 7 TEMPORARY", ROMX[$5375],BANK[$E]
RivalGroup::
	db  5, DEX_KURUSU, 0
	db  5, DEX_HAPPA, 0
	db  5, DEX_HONOGUMA, 0

SECTION "Trainer Parties 8 TEMPORARY", ROMX[$53BC],BANK[$E]
OkidoGroup::

SECTION "Trainer Parties 9 TEMPORARY", ROMX[$5404],BANK[$E]
SakakiGroup::

SECTION "Trainer Parties 10 TEMPORARY", ROMX[$5427],BANK[$E]
ProtagonistGroup::

SECTION "Trainer Parties 11 TEMPORARY", ROMX[$5433],BANK[$E]
SibaGroup::
KasumiGroup::
FisherGroup::
	; FISHER_HISASHI
	db "ひさし@", TRAINERTYPE_ITEM_MOVES
	db  8, DEX_PUKU, ITEM_NONE
	; No moves?
	db -1 ; end

SECTION "Trainer Parties 12 TEMPORARY", ROMX[$5472],BANK[$E]
KannaGroup::

SECTION "Trainer Parties 13 TEMPORARY", ROMX[$54B6],BANK[$E]
WataruGroup::

SECTION "Trainer Parties 14 TEMPORARY", ROMX[$54DC],BANK[$E]
GerugeMemberMGroup::

SECTION "Trainer Parties 15 TEMPORARY", ROMX[$54FA],BANK[$E]
Trio1Group::
BeautyGroup::
	; BEAUTY_MEGUMI
	db "めぐみ@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_NYARTH, ITEM_NONE, MOVE_PAY_DAY, MOVE_GROWL, MOVE_NONE, MOVE_NONE
	db -1 ; end

SECTION "Trainer Parties 16 TEMPORARY", ROMX[$554B],BANK[$E]
Trio2Group::

SECTION "Trainer Parties 17 TEMPORARY", ROMX[$555D],BANK[$E]
Trio3Group::

SECTION "Trainer Parties 18 TEMPORARY", ROMX[$5566],BANK[$E]
RocketFGroup::

SECTION "Trainer Parties 19 TEMPORARY", ROMX[$5587],BANK[$E]
YoungsterGroup::

SECTION "Trainer Parties 20 TEMPORARY", ROMX[$55F4],BANK[$E]
FledglingGroup::

SECTION "Trainer Parties 21 TEMPORARY", ROMX[$5658],BANK[$E]
ProdigyGroup::

SECTION "Trainer Parties 22 TEMPORARY", ROMX[$567C],BANK[$E]
ProfessionalMGroup::
ProfessionalFGroup::

SECTION "Trainer Parties 23 TEMPORARY", ROMX[$56D7],BANK[$E]
PokeManiacGroup::

SECTION "Trainer Parties 24 TEMPORARY", ROMX[$5795],BANK[$E]
RocketMGroup::

SECTION "Trainer Parties 25 TEMPORARY", ROMX[$57C5],BANK[$E]
GentlemanGroup::

SECTION "Trainer Parties 26 TEMPORARY", ROMX[$57E9],BANK[$E]
TeacherMGroup::
; Leftover Bruno data from Red/Blue
	db -1, 53, MON_IWARK, 55, MON_EBIWALAR, 55, MON_SAWAMULAR, 56, MON_IWARK, 58, MON_KAIRIKY, 0

TeacherFGroup::
; Leftover Brock data from Red/Blue
	db -1, 12, MON_ISITSUBUTE, 14, MON_IWARK, 0

ManchildGroup::
; Leftover Misty data from Red/Blue
	db -1, 18, MON_HITODEMAN, 21, MON_STARMIE, 0

; Leftover Lt.Surge data from Red/Blue
	db -1, 21, MON_BIRIRIDAMA, 18, MON_PIKACHU, 24, MON_RAICHU, 0

; Leftover Erika data from Red/Blue
	db -1, 29, MON_UTSUBOT, 24, MON_MONJARA, 29, MON_RUFFRESIA, 0

SwimmerFGroup::
; Leftover Koga data from Red/Blue
	db -1, 37, MON_DOGARS, 39, MON_BETBETON, 37, MON_DOGARS, 43, MON_MATADOGAS, 0

SwimmerMGroup::
	db 10, DEX_BARIRINA, DEX_KIRINRIKI, DEX_PUCHICORN, 0

SailorGroup::
; Leftover Sabrina data from Red/Blue
	db -1, 38, MON_YUNGERER, 37, MON_BARRIERD, 38, MON_MORPHON, 43, MON_FOODIN, 0

SuperNerdGroup::

SECTION "Trainer Parties 27 TEMPORARY", ROMX[$583C],BANK[$E]
EngineerGroup::

SECTION "Trainer Parties 28 TEMPORARY", ROMX[$58CC],BANK[$E]
RockerGroup::

SECTION "Trainer Parties 29 TEMPORARY", ROMX[$58FB],BANK[$E]
HikerGroup::

SECTION "Trainer Parties 30 TEMPORARY", ROMX[$5907],BANK[$E]
BikerGroup::
; Leftover Channeler data from Red/Blue
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 24, MON_GHOST, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 23, MON_GHOST, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 22, MON_GHOST, 0
	db 22, MON_GHOS, MON_GHOS, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 24, MON_GHOS, 0
	db 34, MON_GHOS, MON_GHOST, 0
	db 38, MON_GHOST, 0
	db 33, MON_GHOS, MON_GHOS, MON_GHOST, 0

SECTION "Trainer Parties 31 TEMPORARY", ROMX[$5956],BANK[$E]
RockClimberGroup::
; Leftover Agatha data from Red/Blue
	db -1, 56, MON_GANGAR, 56, MON_GOLBAT, 55, MON_GHOST, 58, MON_ARBOK, 60, MON_GANGAR, 0

BurglarGroup::
; Leftover Lance data from Red/Blue
	db -1, 58, MON_GYARADOS, 56, MON_HAKURYU, 56, MON_HAKURYU, 60, MON_PTERA, 62, MON_KAIRYU, 0

JugglerGroup::
	db  6, DEX_MARIL, DEX_GYOPIN, 0

BlackbeltGroup::
	db  6, DEX_PY, DEX_GYOPIN, 0

PsychicGroup::
KungFuMasterGroup::
FortuneTellerGroup::
HooliganGroup::
SageGroup::
MediumGroup::
SoldierGroup::
GerugeMemberFGroup::
	db 12, DEX_SHIBIREFUGU, DEX_MADAME, 0

TwinsGroup::
	db 13, DEX_MADAME, DEX_ELEBABY, DEX_MIZUUO, 0

SchoolboyGroup::
	; SCHOOLBOY_TETSUYA
	db "てつや@", TRAINERTYPE_ITEM_MOVES
	db  9, DEX_YADOKING, ITEM_NONE, MOVE_DISABLE, MOVE_CONFUSION, MOVE_NONE, MOVE_NONE
	db -1 ; end

FirebreatherGroup::
	; FIREBREATHER_AKITO
	db "あきと@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_BOOBY, ITEM_NONE, MOVE_SCRATCH, MOVE_SMOG, MOVE_NONE, MOVE_NONE
	db -1 ; end

SportsmanGroup::
	; SPORTSMAN_SHIGEKI
	db "しげき@", TRAINERTYPE_ITEM
	db  8, DEX_DONPHAN, ITEM_NONE
	db -1 ; end

KimonoGirlGroup::
	; KIMONO_GIRL_TAMAO
	db "たまお@", TRAINERTYPE_ITEM_MOVES
	db 12, DEX_PURIN, ITEM_NONE, MOVE_CHARM, MOVE_ENCORE, MOVE_POUND, MOVE_NONE
	db -1 ; end

	; KIMONO_GIRL_KOUME
	db "こうめ@", TRAINERTYPE_ITEM_MOVES
	db 10, DEX_PIPPI, ITEM_NONE, MOVE_CHARM, MOVE_SWEET_KISS, MOVE_POUND, MOVE_NONE
	db -1 ; end
