: msg-home 1 #23 at-xy ;

: clr-msg msg-home #40 spaces ;

: msg clr-msg msg-home ;

: info-home 1 #15 at-xy ;

: array create dup c, * allot does> rot 1- over c@ * + + ;

#120 constant srl variable src #47 constant lrl variable lrc

: does_scan does> swap 2 * + dup c@ dup #15 > if #256 - then swap 1+ c@ dup #15 > if #256 - then ; decimal

create sr does_scan
5 c, 5 c, 6 c, 5 c, 6 c, 6 c, 5 c, 6 c, 4 c, 6 c, 4 c, 5 c, 4 c, 4 c, 5 c, 4 c, 6 c, 4 c, 7 c, 4 c, 7 c, 5 c, 7 c, 6 c, 7 c, 7 c, 6 c, 7 c, 5 c, 7 c, 4 c, 7 c, 3 c, 7 c, 3 c, 6 c, 3 c, 5 c, 3 c, 4 c, 3 c, 3 c, 4 c, 3 c, 5 c, 3 c, 6 c, 3 c, 7 c, 3 c, 8 c, 3 c, 8 c, 4 c, 8 c, 5 c, 8 c, 6 c, 8 c, 7 c, 8 c, 8 c, 7 c, 8 c, 6 c, 8 c, 5 c, 8 c, 4 c, 8 c, 3 c, 8 c, 2 c, 8 c, 2 c, 7 c, 2 c, 6 c, 2 c, 5 c, 2 c, 4 c, 2 c, 3 c, 2 c, 2 c, 3 c, 2 c, 4 c, 2 c, 5 c, 2 c, 6 c, 2 c, 7 c, 2 c, 8 c, 2 c, 9 c, 2 c, 9 c, 3 c, 9 c, 4 c, 9 c, 5 c, 9 c, 6 c, 9 c, 7 c, 9 c, 8 c, 9 c, 9 c, 8 c, 9 c, 7 c, 9 c, 6 c, 9 c, 5 c, 9 c, 4 c, 9 c, 3 c, 9 c, 2 c, 9 c, 1 c, 9 c, 1 c, 8 c, 1 c, 7 c, 1 c, 6 c, 1 c, 5 c, 1 c, 4 c, 1 c, 3 c, 1 c, 2 c, 1 c, 1 c, 2 c, 1 c, 3 c, 1 c, 4 c, 1 c, 5 c, 1 c, 6 c, 1 c, 7 c, 1 c, 8 c, 1 c, 9 c, 1 c, 10 c, 1 c, 10 c, 2 c, 10 c, 3 c, 10 c, 4 c, 10 c, 5 c, 10 c, 6 c, 10 c, 7 c, 10 c, 8 c, 10 c, 9 c, 10 c, 10 c, 9 c, 10 c, 8 c, 10 c, 7 c, 10 c, 6 c, 10 c, 5 c, 10 c, 4 c, 10 c, 3 c, 10 c, 2 c, 10 c, 1 c, 10 c, 0 c, 10 c, 0 c, 9 c, 0 c, 8 c, 0 c, 7 c, 0 c, 6 c, 0 c, 5 c, 0 c, 4 c, 0 c, 3 c, 0 c, 2 c, 0 c, 1 c, 0 c, 0 c, 1 c, 0 c, 2 c, 0 c, 3 c, 0 c, 4 c, 0 c, 5 c, 0 c, 6 c, 0 c, 7 c, 0 c, 8 c, 0 c, 9 c, 0 c, 10 c, 0 c, 

create lr does_scan
11 c, 2 c, 11 c, 5 c, 11 c, 8 c, 11 c, 11 c, 8 c, 11 c, 5 c, 11 c, 2 c, 11 c, -1 c, 11 c, -1 c, 8 c, -1 c, 5 c, -1 c, 2 c, -1 c, -1 c, 2 c, -1 c, 5 c, -1 c, 8 c, -1 c, 11 c, -1 c, 13 c, 1 c, 13 c, 5 c, 13 c, 9 c, 13 c, 13 c, 9 c, 13 c, 5 c, 13 c, 1 c, 13 c, -3 c, 13 c, -3 c, 9 c, -3 c, 5 c, -3 c, 1 c, -3 c, -3 c, 1 c, -3 c, 5 c, -3 c, 9 c, -3 c, 13 c, -3 c, 15 c, 0 c, 15 c, 5 c, 15 c, 10 c, 15 c, 15 c, 10 c, 15 c, 5 c, 15 c, 0 c, 15 c, -5 c, 15 c, -5 c, 10 c, -5 c, 5 c, -5 c, 0 c, -5 c, -5 c, 0 c, -5 c, 5 c, -5 c, 10 c, -5 c, 15 c, -5 c, hex

: input 0 begin key 2dup emit 8 = if drop 10 / 0 else dup '9' > if drop 1 else dup '0' < if drop 1 else '0' - swap 10 * + 0 then then then until ;

#30 constant size size 2 * constant no-of-stars size 3 * 2 / constant no-of-planets 4 constant no-of-b-holes #200 constant w1 5 constant w2 #10 constant w3 #20000 constant speed variable temp1 variable vtax variable c-legions variable class-totals variable c-fleets variable len variable troops variable rand1 variable rand2 variable x variable y variable buy-v variable leg variable new variable comp-start variable computer variable diff variable c-planets variable planets variable fleet-flag variable credit variable start size size array galaxy size size array info1 size size array info2 2 6 array fleets

: clear-msg #23 #15 do 1 i at-xy #29 spaces loop ;

: xy@ x @ y @ ;

: clear-screen page ;

: clear-galaxy 1 1 galaxy size size * 0 fill ;

: clear-info 1 1 info1 size size * 0 fill 1 1 info2 size size * 0 fill ;

: random1 rand1 @ #37 * #651 + dup rand1 ! abs size mod 1+ ;

: random2 rand2 @ #53 * #773 + dup rand2 ! abs size mod 1+ ;

: edge-check size 1- + size mod 1+ ;

: f fleet-flag @ swap fleets ;

: scan-sr src @ sr 2dup #6 + swap 2 * #45 + swap at-xy 1 f c@ + 5 - edge-check swap 2 f c@ + 5 - edge-check galaxy c@ ;

: sr-scan scan-sr case 2 of '*' endof 4 of 'O' endof 5 of '0' endof #132 of '@' endof #16 of 'P' endof #17 of 'E' endof >r $20 r> endcase emit src @ 1+ dup srl > if drop 0 then src ! ;

: scan-lr lrc @ lr 2dup #6 + swap 2 * #45 + swap at-xy 1 f c@ + 5 - edge-check swap 2 f c@ + 5 - edge-check galaxy c@ ;

: lr-scan scan-lr if '.' else $20 then emit lrc @ 1+ dup lrl > if drop 0 then lrc ! ;

: delay #500 ms ( lr-scan) ;

: end-msg msg ." End of game Commander" ;

: set-up-galaxy no-of-stars 0 do 2 random1 random2 galaxy c! loop no-of-planets 0 do random1 random2 2dup 4 rot rot galaxy c! random1 4 * 8 + rot rot info1 c! loop no-of-b-holes 0 do 8 random1 random2 galaxy c! loop ;

: initialize cr ." Difficulty level [1-4]: " key '0' - dup 5 < if 1 else drop then diff ! cr ." Game length [1-3]: " key '0' - case 1 of #350 len ! endof 2 of #700 len ! endof #1500 len ! endcase cr ." Initializing" clear-galaxy clear-info set-up-galaxy 1 fleet-flag ! #250 credit ! 0 planets ! 0 c-planets ! #20 1 3 fleets ! #20 2 3 fleets ! #50 1 5 fleets ! #50 2 5 fleets ! diff @ 4 * 0 do random1 random2 2dup #17 rot rot galaxy c! #15 rot rot info2 c! loop #16 #22 #18 galaxy c! #16 #18 #22 galaxy c! #22 1 1 fleets c! #18 1 2 fleets c! #18 2 1 fleets c! #22 2 2 fleets c! #29 3 diff @ * - new ! #15 diff @ 4 * * troops ! #20 diff @ * c-legions ! diff @ 4 * c-fleets ! speed dup computer ! comp-start ! 1 buy-v ! 0 src ! 0 lrc ! ;

: draw-borders clear-screen ." Score:" cr cr ." Empire:" cr 3 4 at-xy ." Fleets:" 3 5 at-xy ." Planets:" cr cr ." Player:" 3 8 at-xy ." Credits:" 3 9 at-xy ." Planets:" 2 #10 at-xy ." Fleet:      1     2" 3 #11 at-xy ." X,Y:     ,     ," 3 #12 at-xy ." Ships:" 3 #13 at-xy ." Legions:" ;

: find-direction msg ." Which direction? " key $20 or case 'w' of -1 0 endof 'z' of 1 0 endof 's' of 0 1 endof 'a' of 0 -1 endof 0 0 rot endcase clr-msg 2 f c@ + edge-check swap 1 f c@ + edge-check swap ;

: draw-figures #15 1 at-xy planets @ c-planets @ - w1 * 1 3 fleets @ 2 3 fleets @ + w2 * + 1 5 fleets @ 2 5 fleets @ + w2 * + troops @ w3 * - 6 .r #16 4 at-xy c-fleets @ 5 .r #16 5 at-xy c-planets @ 5 .r #15 8 at-xy credit @ 6 .r #16 9 at-xy planets @ 5 .r #10 #11 at-xy 1 2 fleets c@ 2 .r #13 #11 at-xy 1 1 fleets c@ 2 .r #16 #11 at-xy 2 2 fleets c@ 2 .r #19 #11 at-xy 2 1 fleets c@ 2 .r #11 #12 at-xy 1 3 fleets @ 4 .r #17 #12 at-xy 2 3 fleets @ 4 .r #11 #13 at-xy 1 5 fleets @ 4 .r #17 #13 at-xy 2 5 fleets @ 4 .r msg-home ;

: draw-display 0 src ! 0 lrc ! draw-figures ;

: new-fleet 0 1 f c@ 2 f c@ galaxy c! 0 3 f ! 0 5 f ! ;

: move-fleet 2dup 0 1 f c@ 2 f c@ galaxy c! #16 rot rot galaxy c! 2 f c! 1 f c! ;

: check-position edge-check swap edge-check swap 2dup galaxy c@ case 0 of move-fleet endof 8 of msg ." Fleet in black hole" move-fleet delay new-fleet clr-msg endof drop drop endcase draw-display ;

: other-fleet fleet-flag @ 1 = if 2 fleet-flag ! else 1 fleet-flag ! then draw-display ;

: move-left 1 f c@ 2 f c@ 1- check-position ;

: move-right 1 f c@ 2 f c@ 1+ check-position ;

: move-down 1 f c@ 1+ 2 f c@ check-position ;

: move-up 1 f c@ 1- 2 f c@ check-position ;

: enlist clear-msg buy-v @ 0= if 5 buy-v ! random1 8 / xy@ info1 c@ 7 / + dup temp1 ! info-home ." Enlist troops:" cr ." Cost per legion = " 3 .r xy@ info1 c@ 6 / dup leg ! cr ." Legions available = " 3 .r msg ." How many do you require? " input leg @ min dup temp1 @ * credit @ > if msg ." Not enough credit" else 5 f @ over + 5 f ! temp1 @ * credit @ swap - credit ! draw-figures then else msg ." No troops available" then ;

: buy clear-msg buy-v @ 0= if 5 buy-v ! random1 5 / xy@ info1 c@ #10 / + 1+ dup temp1 ! 1 #16 at-xy ." Cost per ship = " 2 .r msg ." How many do you want? " input credit @ temp1 @ / min dup 3 f @ + 3 f ! temp1 @ * credit @ swap - credit ! #16 1 f c@ 2 f c@ galaxy c! else msg ." No ships available" then ;

: gather msg ." How many do you wish to take? " input xy@ info2 c@ min temp1 ! 5 f @ temp1 @ + 5 f ! xy@ info2 c@ temp1 @ - xy@ info2 c! ;

: leave msg ." Leave how many? " input 5 f @ min temp1 ! 5 f @ temp1 @ - 5 f ! xy@ info2 c@ temp1 @ + #255 min xy@ info2 c! ;

: friendly-planet begin clear-msg 1 #15 at-xy ." Class " xy@ info1 c@ 8 / 2 .r ."  planet" cr ." Local garrison is " xy@ info2 c@ 3 .r ."  legions" cr ." Do you wish to:" cr ." 1. leave legions on planet" cr ." 2. gather legions from planet" cr ." 3. buy ships" cr ." 4. enlist troops" cr ." any other key to leave" msg key '0' - case 1 of leave 0 endof 2 of gather 0 endof 3 of buy 0 endof 4 of enlist 0 endof clear-msg 1 swap endcase until draw-display ;

: colonize clear-msg xy@ info1 c@ 8 / random1 1- 5 / 7 + * #10 / dup temp1 ! 5 f @ > if msg ." Your forces retreat. " ." Your losses = " 5 f @ 2 / dup 3 .r 5 f @ swap - 5 f ! draw-figures delay delay else msg ." Planet captured. " ." Your losses = " temp1 @ 3 .r 5 f @ temp1 @ - 5 f ! 1 planets +! #132 xy@ galaxy c! draw-figures delay delay friendly-planet then ;

: empty-planet clear-msg info-home ." Uncolonized class " xy@ info1 c@ 8 / 2 .r ."  planet" msg ." Do you wish to attack? " key $20 or 'y' = if colonize then clr-msg ;

: not-planet msg ." No planet there" delay clear-msg ;

: attack clear-msg xy@ info2 c@ random1 1- 5 / 7 + * #10 / dup temp1 ! 5 f @ > if msg ." Your forces retreat. " ." Your losses = " xy@ info2 c@ 5 f @ * temp1 @ / 2 / xy@ info2 c@ swap - xy@ info2 c! 5 f @ 2 / dup 3 .r 5 f @ swap - 5 f ! else 0 xy@ info2 c! msg ." Planet captured . " ." Your losses = " temp1 @ 3 .r 5 f @ temp1 @ - 5 f ! #132 xy@ galaxy c! 1 planets +! -1 c-planets +! xy@ info1 c@ 8 / negate class-totals +! delay friendly-planet then delay clear-msg ;

: enemy-planet xy@ info1 c@ 8 / info-home ." Class " 2 .r ."  planet" cr ." Enemy garrison is " xy@ info2 c@ 3 .r ."  legions" msg ." Do you wish to attack?" key $20 or 'y' = if attack then clear-msg ;

: land find-direction 2dup y ! x ! galaxy c@ case 4 of empty-planet endof 5 of enemy-planet endof #132 of friendly-planet endof not-planet endcase ;

: revolt? msg ." Planet at " x @ . y @ . ."  revolts " delay xy@ info1 c@ 8 / xy@ info2 c@ 2dup > if drop 4 xy@ galaxy c! 8 * 7 + xy@ info1 c! 0 xy@ info2 c! -1 planets +! 7 emit ." Succeeds" else swap 2 / - xy@ info2 c! xy@ info1 c@ 7 or xy@ info1 c! ." Fails" then delay clr-msg ;

: tax 0 vtax ! msg ." Tax collected = 0" size 1+ 1 do size 1+ 1 do i j galaxy c@ #132 = if i j info1 c@ 3 * 5 / vtax @ + dup vtax ! #17 #23 at-xy 5 .r i j info1 c@ 7 and if i j info1 dup c@ 1- swap c! else i x ! j y ! revolt? then then loop loop credit @ vtax @ + credit ! clr-msg draw-display ;

: computer-turn -1 new +! new @ 0= if 7 emit 1 c-fleets +! #29 4 diff @ * - new ! class-totals @ 8 / dup c-legions +! dup troops +! begin random1 random2 2dup galaxy c@ 0= if 2dup #17 rot rot galaxy c! info2 c! 1 else drop drop drop 0 then until then diff @ 0 do random1 random2 2dup galaxy c@ case 4 of 2dup 2dup 5 rot rot galaxy c! c-legions @ 2 / dup c-legions ! rot rot info2 c! 1 c-planets +! info1 c@ 8 / class-totals +! endof #132 of 2dup y ! x ! info2 c@ c-legions @ 2 / < if c-legions @ 3 / c-legions ! 5 xy@ galaxy c! xy@ info1 c@ 8 / class-totals +! 1 c-planets +! -1 planets +! 5 0 do 7 emit loop then endof drop drop endcase loop draw-figures ;

: fire 0 x ! 2 f c@ 2 + dup 3 - do 1 f c@ 2 + dup 3 - do i edge-check j edge-check galaxy c@ #17 = if i edge-check x ! j edge-check y ! then loop loop x @ 0= if msg ." No enemy fleet in range" else 3 f @ xy@ info2 c@ over 4 * #10 / over 4 * #10 / dup msg ." Fleet hit by " 5 .r ."  units" rot rot - 0 max dup 0= if drop troops @ xy@ info2 c@ - troops ! 0 xy@ galaxy c! -1 c-fleets +! else xy@ info2 c@ over - troops @ swap - troops ! xy@ info2 c! then - 0 max dup 0= if drop new-fleet else 3 f ! then then delay delay draw-display clr-msg ;

: information key ;

: obey-command buy-v @ ?dup if 1- buy-v ! then key $20 or case 'a' of move-left endof 's' of move-right endof 'w' of move-up endof 'z' of move-down endof 'o' of other-fleet endof 'i' of information endof 'l' of land endof 't' of tax endof 'f' of fire endof 'x' of cr ." Ok" quit endof endcase ;

: computer? computer @ 1- dup 0= if comp-start @ computer ! drop 1 else computer ! 0 then sr-scan lr-scan ;

: game-end? len @ 0= ;

: restart draw-borders draw-display begin key? if obey-command -1 len +! computer-turn then computer? if computer-turn then game-end? until end-msg ;

: conquest page ." Hit any key" key rand1 ! cr ." and again " key rand2 ! cr cr ." Welcome to Cosmic Conquest" cr ." Devised and written by" cr ." Alan Sartori-Angus, 1982" cr ." Ported/modified by" cr ." Terrance Robertson, 2021" cr decimal initialize restart ; cr quit 