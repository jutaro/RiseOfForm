module FirstProof

export
CombI : a -> a
CombI a = a

export
CombK : a -> b -> a
CombK a b = a

CombS : (a -> b -> c) -> (a -> b) -> a -> c
CombS a b c = a c (b c)

export
CombC : (a -> b -> c) -> b -> a -> c
CombC a b c = a c b

export
CombB : (a -> b) -> (c -> a) -> c -> b
CombB a b c = a (b c)

export
CombB' : (a -> b) -> (b -> c) -> a -> c
CombB' a b c = b (a c)

export
CombW : (a -> a -> b) -> a -> b
CombW a b = a b b

---------------

-- CombK : a -> b -> a
-- CombI : b -> (v -> v)
-- rename : a -> b -> b

export
PrfKi : a -> b -> b
PrfKi = CombK CombI

-- CombC : (a -> b -> c) -> b -> a -> c
-- PrfKI a -> b -> b => b -> a -> b
-- rename: a -> b -> a

export
PrfK : a -> b -> a
PrfK = CombC PrfKi

export
PrfKk : a -> b -> c -> b
PrfKk = CombK CombK