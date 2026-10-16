#import "../template.typ": *
#show: book-setup.with(title: "Rise of Form: Concordance of Papers, Module, and Chapters", lang: "en", running: "Rise of Form: Concordance v0.3")

= Rise of Form: Concordance of Papers, Module, and Chapters
#draftline[Concordance v0.3, Project secret3, August 25, 2026. Supersedes v0.2 of August 11.]

Purpose: one table joining the two rows. For every chapter and section of the book, the formal claims it leans on, the module anchors by name, and the working paper that carries the verification. This document is the seed of the book's appendix, The Receipts. It is the companion of the secret3 concordance v0.10, which maps the book to the module by part; this one maps the book to the papers. Status marks: [d] delivered, [h] delivered and held, [p] planned. What changed since v0.2: chapters four through seven went from planned to delivered, chapter eight moved to v0.10 with its sections renamed, chapter sixteen was delivered ahead of Parts Two and Three, and twenty new papers and notes entered the shelf (the assembly ledger, the valence pair, the nucleic alphabet, the two chiral papers, BCWI, the fast-lane campaigns W1 through W4, P1, P1b, D1, M1, M1b, CH2, CH3, and the concept notes). Section 3 is new: an anchor index derived mechanically from the sources, listing for every module name a chapter uses the paper whose code first defines it.

== 1. The papers, current inventory

The shelf is listed in the order a reader of the book meets it, verification papers first. Each entry names the anchors it carries.

+ Tree Numbers (v0.5, appendix synchronized): tree numerals, grafting, leavesGraft, Theorem A in both directions.
+ Transparent Arithmetic (v0.9, appendix synchronized): the rewriting arithmetic R1 to R4, Theorem B via the value ledger (boxReduces, the invariant family, afUnique), the cost formula boxLen, sumSteps with rLenSum, probeCert.
+ The Linearity Ladder (v0.1): the occurrence counter occ, kStepOcc and sStepOcc, r1Occ and r4Occ, R2 as the arithmetic's only erasing clause, R1 its only duplicating clause.
+ The Entropy Budget of Multiplication (v0.1): stepDup, stepErase, dupMass, eraseMass, boxDup, boxErase, sumDup, sumErase, tSizeNum.
+ Combinator Soup (v0.3): the conserving reactor, tauAbsorbs, tauFix, tauNormal, upsAbsorbs, condMass, kBalanced, sBalanced, the null-model census, the recycling core.
+ Freezing and Flux (v0.1): the phase campaign, flux non-monotone with its maximum at the balanced melting fraction, diversity peaking with it, the two starvation regimes.
+ The Assembly Ledger (v0.1): kBonds, sBonds, condBonds, stepsNeverMint (the law of the mint), tauMealMint and tauMealBurn (the furnace's metered meal).
+ Valence (v0.1) and Valence Two (v0.1): the bond-counting reading of the ledger, valence as the concrete measure of the gap.
+ The Nucleic Combinators (v0.1): the nucleic alphabet line, sense and antisense as combinator strands.
+ Chiral Base (v0.1) and Chiral Two (v0.1): Chiral.idr, the chiral program's seed and its second movement; the checker disciplines for function-valued indices.
+ CH2, The Polymerase's Constitution (v0.1) and CH3, The Polymerase Built (v0.1): four movements, the silence lemmas with the clean-reagent finding, the concrete polymerase as one closed term, polRun, polMirror, polTwin.
+ BCWI Assessment Note (v0.1): the other alphabet assessed against the K and S basis.
+ No Bird Sings Peirce (v0.1): the three-graded matrix, matSound, peirceNoProof, dneNoProof, tTyped with tSteps, fondPoint, iTyped, bTyped.
+ A Verified Coin: Type Preservation (v0.1): derivAppInv, kInvTy, sInvTy, arrInj, derivPreserved, derivSteps.
+ Every Typed Song Ends (v0.1): strongNorm, strong normalization for the coin by reducibility.
+ A Quoted Alphabet (v0.1, C5 stage one): Code, embed, quote, quoteClosed, quoteInj.
+ The Reader's Engine (v0.1, C5 stage two): simStep, simSound, simNormal, simRun, simRunSteps.
+ The First Eye (v0.1), The Second Eye and the Assembler (v0.1), The Dispatcher (v0.1), The Knot (v0.1): the four movements to the verified self-reader; readK, readS, rootRead, simT, simCorrectJ, simCorrectN; C5 complete.
+ Two Refusals, One Ledger (v0.1): occStepEq, occRunEq, noClone, noDelete, cloneBill, deleteBill.
+ W1, The No-Quoter Theorem (v0.1): noQuoter, parametric over any normal-valued separating coding, UNF as the explicit classical hypothesis; noQuoterSN and noQuoterGarden close the chain for typed quoters.
+ W2, Provenance (v0.1): stepNoMint through custody; absence hereditary along walks.
+ W3, Purity (v0.1): the registration-costs-bonds family, the silence ladder, the two firing bills.
+ W4, The Recruit (working note, v0.1): the stochastic recruit demonstration, eight seeds, six histories, one arrival; engine tier, illustration only.
+ P1, Confluence (v0.1) and P1b, GardenSN (v0.1): local confluence by head-inversion helpers and Newman's lemma; strong normalization re-proved via the Sat column machine, satRed and satCol.
+ D1, The Tagged Choice (working note, v0.1): leftTag and rightTag with explicit eliminations, the or-row of the Machine Room dictionary.
+ M1 Working Note (v0.1) and M1b Anomalies Report (v0.1): the modularization campaign, package v0.7 with seventeen modules, and the two environment anomalies with their reproductions (CoverageRepro.idr, MemoryRepro.idr).
+ Governance, not verification: the KS program note (v0.6), the research agenda (v0.37), the formalization plan (v0.3), the transparent arithmetic specification (v1.0), the concept notes on Part Three and on space, and the book's sources note on the inner life (v0.2).

The module: Proofs.idr, 3,787 lines, %default total, no postulates, no holes, the canonical monolith; package v0.7 derived from it. The one command: idris2 \-\-check Proofs.idr. Chiral.idr, 610 lines, standalone.

== 2. The concordance

#table(
  columns: (1.15fr, 1.4fr, 1.3fr, 1.25fr),
  align: left,
  inset: (x: 6pt, y: 5pt),
  table.header([Book location], [Claim carried], [Module anchors], [Paper]),
  [1 Two Moves, The Law of Three [d]], [the two rules and application as the triad of the machinery; the crown as a two-move derivation], [the Step relation, RedK, RedS, skIdentity], [module only, by design; skIdentity in Tree Numbers],
  [1 Two Moves, The Price of Forgetting [d]], [K is the only mover that discards, and forgetting pays; the two reactors as the chapter in a bottle], [kStepOcc, r1Occ, r4Occ; tauAbsorbs, tauNormal, condMass, kBalanced, sBalanced], [The Linearity Ladder; The Entropy Budget; Combinator Soup for the reactors],
  [1 Two Moves, The Answer [d]], [composition and the crown; the portfolio of the share], [fusionFact, bSteps, sStepOcc, skIdentity], [Tree Numbers; Transparent Arithmetic; The Linearity Ladder],
  [1 Two Moves, The Law of Seven, and the Circle [d]], [the sterile circle, the mirror, the ladder and the knot], [omegaCycle, mirror, yKnot, yUnfolds], [module; program note],
  [2 Everything from Two, The Workshop [d]], [true, false, the box and its openings; the eight-move run], [kTrue, skFalse, pairBeta, pairFst, pairSnd, skIdentity, rLenSum, boxLen], [module part M; costs in Transparent Arithmetic],
  [2 Everything from Two, One Mountain [d]], [completeness of the two moves], [abs, absCorrect, absGone], [module part N (the vanishing engine); completeness classical],
  [2 Everything from Two, The Empty Symbol [d]], [the moves never look at the names; the checker understands nothing], [substSteps, absCorrect], [module; the closure claim rests on the mountain],
  [2 Everything from Two, The One-Second Test and The Inside [d]], [the border and the gate], [none, and saying so is the point], [none, by design],
  [3 The Unreachables, The Buttons and The Trees [d]], [numbers as trees, grafting multiplies leaves, Theorem A both ways, Theorem B by the ledger, the cost formula], [leavesGraft, boxReduces, the invariant family, afUnique, boxLen, tSizeNum], [Tree Numbers; Transparent Arithmetic; The Entropy Budget for tSizeNum],
  [3 The Unreachables, The Alphabet of Refusals and The Open Country [d]], [Euclid, unique factorization, the distribution], [classical, cited], [none needed],
  [4 The Price List, The Schoolteacher's Rule [d]], [costs are exact and nobody's opinion; the compiled asymmetry of multiplication], [boxLen, rLen, rLenSum], [Transparent Arithmetic],
  [4 The Price List, The Demon's Bill [d]], [Maxwell, Szilard, Landauer, Bennett; judgment paid in erasures], [historical, cited], [none; The Entropy Budget carries the Landauer reading],
  [4 The Price List, The Free and the Billed [d]], [only erasure pays; the one door of loss and the one door of abundance; the free item], [kStepOcc, sStepOcc, boxDup, boxErase, dupMass, eraseMass, omegaCycle, skIdentity, iTyped], [The Linearity Ladder; The Entropy Budget; No Bird Sings Peirce for iTyped],
  [4 The Price List, The Portrait [d]], [the self-maintaining pattern, mint zero, burn four; no growth under conservation], [stepsNeverMint, tauMealMint, tauMealBurn], [The Assembly Ledger],
  [4 The Price List, The Price of the Ego [d]], [the reading, register-marked; the stone: only forgetting is ever billed], [recalls only: kStepOcc, stepsNeverMint, tauMealMint, tauMealBurn, skIdentity, iTyped], [reading over the anchors above; contract register],
  [5 The Vessel, The Question of the Atom [d]], [Democritus, Dalton, Cayley, Mach, Einstein and Perrin], [historical, cited], [none needed],
  [5 The Vessel, The First Evening [d]], [the devourer's rise; selfish as a ledger property], [tauAbsorbs, tauFix, tauNormal, upsAbsorbs], [Combinator Soup v0.3],
  [5 The Vessel, The Law of the Mint [d]], [no reaction ever creates a click; building belongs to the weather], [kBonds, sBonds, condBonds, stepsNeverMint], [The Assembly Ledger; Valence for the bond count],
  [5 The Vessel, The Furnace [d]], [the devourer's metered meal; extinction as corollary], [tauMealMint, tauMealBurn], [The Assembly Ledger],
  [5 The Vessel, Glass, Gas, and the Busy Middle [d]], [flux and diversity peak together at the balanced share; illustration, not evidence], [the sweep, seeds eleven and seventy seven], [Freezing and Flux v0.1],
  [5 The Vessel, What Rose, and the Question [d]], [the audit of loans; the chemist's question registered], [recalls only], [research agenda, Row A open line],
  [6 The Machine That Runs Itself, The Forest [d]], [the forest's laws as display equations; the fondness proof; the crown as exercise], [fondPoint, yKnot, mirror, skIdentity], [No Bird Sings Peirce for fondPoint; module],
  [6 The Machine That Runs Itself, The Songs [d]], [the quoted alphabet; songs never call back and never lie], [quote, quoteClosed, quoteInj], [A Quoted Alphabet],
  [6 The Machine That Runs Itself, The Song-Reader [d]], [the verified self-reader raised in four seasons and sung its own song], [readK, readS, rootRead, simT, simCorrectJ, simCorrectN; simSound, simNormal, simRunSteps], [The Reader's Engine; The First Eye; The Second Eye; The Dispatcher; The Knot],
  [6 The Machine That Runs Itself, The Nest-Builder [d]], [von Neumann's architecture in feathers; the constructor gap priced by the mint law], [stepsNeverMint], [The Assembly Ledger; von Neumann 1948 classical],
  [6 The Machine That Runs Itself, The Seer and the Song of the Forest [d]], [the halting rim; Church and Rosser with the arrival condition; the Empty Symbol gate held shut], [yKnot; confluence cited], [module; P1 and P1b now compile the arrival joint, so the citation can narrow],
  [7 The Question, The Question, Received and One Sentence, Three Speakers [d]], [the three meanings held apart; Hempel's dilemma; the completeness theorem as the only theorem among the speakers], [completeness classical], [none, by design],
  [7 The Question, The Coin [d]], [S K K certified on both faces: matter reading and thought reading, two theorems one subject], [skIdentity, iTyped], [Tree Numbers; No Bird Sings Peirce],
  [7 The Question, The Border [d]], [the part's ambition; the 1879 handoff], [none], [none],
  [8 Coin, The Mapmaker [d]], [Boole, Frege, Russell's letter, the integrity], [historical, cited], [none needed],
  [8 Coin, The Two Laws [d]], [Frege's first two laws are the types of K and S; Schoenfinkel minted them without knowing], [iTyped, the Deriv frame], [A Verified Coin; No Bird Sings Peirce],
  [8 Coin, Run the Proof [d]], [the proof of A implies A executed; the specification riding the computation], [bTyped, derivPreserved, derivSteps], [A Verified Coin: Type Preservation],
  [8 Coin, The Lesson of the Mapmaker [d]], [validity is not truth; the engine impartial, the enrollment not], [peirceNoProof as the fence], [No Bird Sings Peirce],
  [8 Coin, The Garden and the Rewinder [d]], [the classical border fenced; the open half; constructive infinity; Griffin's rewinder], [matSound, peirceNoProof, dneNoProof, tTyped, tSteps, probeCert, strongNorm; yUnfolds], [No Bird Sings Peirce; Every Typed Song Ends; Transparent Arithmetic for probeCert; Griffin 1990 classical],
  [8 Coin, The Three Sayings [d]], [the reading of I, K, S; independence and forgetting are one move; the shared ground], [skIdentity, iTyped; the K ledger; S as the share], [reading over the anchors above; contract register],
  [9 The Machine Room [p]], [the fence, the quantifier craft, the full dictionary, the referee's booth], [Deriv, iTyped, bTyped, tTyped, derivPreserved, derivSteps, probeCert, leftTag, rightTag, the impossibility lemmas, peirceNoProof, strongNorm; the module's totality], [D1 for the or-row; A Verified Coin; No Bird Sings Peirce; Every Typed Song Ends; P1b for the garden; all papers as worked examples],
  [10 Thought Unbound [p]], [three unbindings; classical logic as one point in a space; distribution is S], [kStepOcc, sStepOcc as the structural rules priced; peirceNoProof, dneNoProof; the linearity ladder], [The Linearity Ladder; No Bird Sings Peirce; Two Refusals; Birkhoff and von Neumann classical],
  [11 The Witness [p]], [the silhouette: four compiled refusals; no-quoter as the summit; purity as the gentleness-ignorance identity], [noQuoter, noQuoterSN, noQuoterGarden; the W3 family, the silence ladder, the two firing bills; simT; the rim], [W1; W3; The Knot; P1b],
  [12 The Receiver [p]], [reception; the provenance lemma; the emergence laboratory; simT as the self-model nobody calls aware; The Sudden Spark], [stepNoMint through custody; simT; the W4 demonstration as illustration], [W2; The Knot; W4],
  [13 The Unfinished Physics [p]], [the cut, the grammar, the ledger and the beginning; no-cloning beside no-quoter as cousins; Church-Rosser as our general covariance], [noClone, noDelete; noQuoter; the P1 arrival joint; stepsNeverMint], [Two Refusals; W1; P1; The Assembly Ledger; all quantum theorems classical],
  [14 Spirit, Soul, and Form [p]], [the triad named; the lineage], [recalls only], [the whole shelf],
  [15 The Two Courses [p]], [the traditions named whole; the correspondences reference delivered results by name], [recalls only, each tracked above], [the whole shelf; the sources note],
  [16 The Reading [d]], [the return; the two readings; The Frozen Century with The Infinite Alibi; the last words], [the gate and simT for the falsifiability beat; stepsNeverMint for the Alibi; Everett distinction classical], [The Knot; The Assembly Ledger; Solvay, Malin, Einstein historical],
  [Appendix, The Receipts [p]], [claim to theorem to paper], [this concordance, matured], [all],
)

== 3. Anchor index

Every module name that a written chapter uses, with the paper whose code first defines it, derived mechanically from the Typst sources (the chapters' camel-case identifiers matched against the papers' Idris blocks) and corrected by hand where the paper carries the anchor in prose only. Chapters are given by number.

#table(
  columns: (8em, 1fr, 6em),
  align: left,
  inset: (x: 6pt, y: 4pt),
  table.header([Anchor], [Paper], [Chapters]),
  [abs, absCorrect, absGone], [module part N, with chapter two; recalled in The Knot], [2],
  [afUnique], [Transparent Arithmetic], [3],
  [bSteps, fusionFact], [Tree Numbers; module part B], [1],
  [bTyped], [No Bird Sings Peirce; A Verified Coin], [8],
  [boxDup, boxErase, dupMass, eraseMass], [The Entropy Budget], [4],
  [boxLen, rLen, rLenSum], [Transparent Arithmetic], [2, 3, 4],
  [condBonds, kBonds, sBonds], [The Assembly Ledger], [5],
  [condMass, kBalanced, sBalanced], [Combinator Soup], [1],
  [derivPreserved, derivSteps], [A Verified Coin], [8],
  [dneNoProof, peirceNoProof, matSound], [No Bird Sings Peirce], [8],
  [fondPoint], [No Bird Sings Peirce; module part F], [6],
  [iTyped], [No Bird Sings Peirce], [4, 7, 8],
  [kStepOcc, sStepOcc, r1Occ, r4Occ], [The Linearity Ladder], [1, 4],
  [kTrue, skFalse, pairBeta, pairFst, pairSnd], [module part M, with chapter two], [2],
  [leavesGraft], [Tree Numbers], [3],
  [probeCert], [Transparent Arithmetic], [8],
  [quoteClosed, quoteInj], [A Quoted Alphabet], [6],
  [readK], [The First Eye], [6],
  [readS], [The Second Eye and the Assembler], [6],
  [rootRead], [The Dispatcher], [6],
  [simT, simCorrectJ, simCorrectN], [The Knot], [6],
  [skIdentity], [Tree Numbers; formalization plan; module part A], [1, 2, 4, 6, 7, 8],
  [stepsNeverMint, tauMealMint, tauMealBurn], [The Assembly Ledger], [4, 5, 6],
  [tTyped, tSteps], [No Bird Sings Peirce], [8],
  [tauAbsorbs, tauFix, tauNormal], [Combinator Soup], [1, 5],
  [yKnot, yUnfolds, mirror, omegaCycle], [module part G; program note], [1, 6],
)

== 4. Gaps and open items, honestly

Chapter six still cites confluence classically in its closing section; P1 and P1b have since compiled local confluence and the arrival joint on the typed garden, so the citation can be narrowed to exactly the untyped case at the next revision of the chapter, as the plan foresaw. Chapter eight's Garden section cites strongNorm from Every Typed Song Ends; the same theorem is now re-proved as gardenSN in module GardenSN by P1b, and the chapter may name either. The Vessel's German text is at v0.3 against the English v0.5 and its anchors (kBonds, sBonds, condBonds) are not yet in the German chapter. Chapters nine through fifteen carry their anchors as plans, not receipts, and the table lists them so the writing queue starts oriented. Nothing in the written chapters claims an anchor the papers do not carry.
