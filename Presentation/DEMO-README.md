# Demo kit for the Cardano introduction

    rise-of-form-cardano-intro.pptx   20 slides with speaker notes, five blocks and a break
    Demo.idr                          the live module: two moves, the crown, the ledger, no-mint, a trace engine

## Running the demo
    cd demo
    idris2 --check Demo.idr           # silence = every theorem in the file is proved (%default total)
    idris2 Demo.idr                   # REPL
    :exec traceCrown                  # prints the walk S K K (K S) -> K (K S) (K (K S)) -> K S
    :t stepsNoMintK                   # show a theorem's statement
    :doc skIdentity                   # doc comment plus type

## What each block shows live
- Block 1: `skIdentity`, then `:exec traceCrown`.
- Block 3: `kForgets` and `sShares` (the per-rule ledger equations), then `stepNoMintK` walked case by case,
  and `stepsNoMintK` as the two-line induction over walks.
- Block 4: open w1-noquoter-working-paper-v0.1.pdf at the `noQuoter` statement (the deck reproduces it verbatim).

## Rehearsal notes
- Block 3 is the one to stretch; it is where the audience's own intuitions (ledger preservation, cost models) live.
- Two prepared answers on slide 19: Plutus Core / cost models, and confluence (P1, P1b).
- The vessel slide (13) is optional; drop it if block 3 runs long.
