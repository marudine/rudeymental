
Cussword.destroy_all
strings = %w(anus
 anal
 anus-face
 anus-mouth
 arse
 ass
 ass-clown
 assface
 asshole
 asswipe
 ass-rag
 ball-breaker
 ball-buster
 bastard
 batshit
 beaver
 beener
 berk
 bimbo
 bollock
 bollocks
 bullshit
 bullpiss
 camel\ toe
 cameltoe
 condom
 corn\ hole
 cornhole
 crack-spackler
 crabface
 crap
 crapface
 craphead
 crapper
 crack-sweat
 cum-bucket
 cum-bubble
 cum-stain
 dangleberry
 devil
 dick\ wad
 dick\ weed
 dicknose
 dickwad
 dickweed
 dingleberry
 dipstick
 douche
 douchebag
 dragon-fart
 ejacu-rag
 ejaculator
 face
 finger\ bang
 finger\ banged
 finger\ banger
 finger\ fuck
 fingerbang
 fingerbanged
 fingerbanger
 fingerfuck
 foreskin
 fuck
 fucked
 fucker
 fuckers
 fuckface
 fuckhead
 fuckhole
 fucking
 fucknut
 fucknuts
 fucks
 fuckshit
 fuckstick
 fungus
 fur\ burger
 furburger
 furry\ burger
 git
 gnat-piss
 gooch
 go\ wipe
 hairy\ hatchet\ wound
 hairy\ taco
 hairytaco
 hell
 horse\ shit
 horseshit
 hot-beef\ injection
 juicer
 juice-monger
 koochie
 kootch
 nipple-munch
 limpdick
 love\ canal
 mangina
 motherfucker
 motherfucker
 motherfucker
 mummified
 nipple
 nose-wipe
 nose-rag
 nutter
 panocha
 pecker
 peckerhead
 peckernose
 phelch
 phelcher
 pheltch
 pheltcher
 phlegm
 penis\ wrinkle
 peniswrinkle
 piss
 piss-face
 pee-face
 pee-drinker
 piss-worm
 pito
 plunge\ hole
 polesmoker
 pillock
 poontang
 poop\ chute
 poop\ stain
 poopchute
 poopstain
 pox
 puke-breath
 puta
 pustule
 rectum
 rim\ job
 rimjob
 rotter
 sack
 schlong
 schmuck
 shit
 shits
 shit\ eater
 shit\ face
 shit\ faced
 shit\ head
 shit\ kicker
 shiteater
 shitface
 shitfaced
 shithead
 shitkicker
 shitter
 skank
 smegma
 spawn
 sphincter\ boy
 sphincter\ face
 sphincterboy
 sphincterface
 toad
 toad-spawn
 testes
 testicles
 titty
 titty\ twisted
 toe-jam
 wally
 wanker
 wipe)
cusswords_hash = strings.map do |w|
  threes = ['anal', 'shit', 'fuck', 'anus', 'fvck', 'cum', 'penis', 'testicles', 'poop', 'rim job', 'rimjob', 'kootch', 'wanker']
  twos = ['sphincter', 'ass', 'dick', 'arse', 'hole', 'bimbo', 'poontang', 'titty',
     'puta', 'furburger', 'fur burger', 'furry burger', 'hairy taco', 'hairytaco',
      'hot-beef injection', 'foreskin', 'hairy hatchet wound', 'beaver', 'ejaculator',
       'fingerbang', 'finger bang', 'finger banged', 'finger banger', 'finger fuck',
        'fingerbanged', 'fingerbanger', 'fingerfuck', 'crack spackler', 'cameltoe', 'camel toe', 'ejacu-rag']
  if threes.any? {|x| w.include?(x)}
    r = 3
  elsif twos.any? {|x| w.include?(x)}
    r = 2
  else
    r = 1
  end
    {word: w, rating: r}
end

words = Cussword.create(cusswords_hash)
puts "Hoorah! A fresh list of #{Cussword.count} swear words now lives in your machine!"
