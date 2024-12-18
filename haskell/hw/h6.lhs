1. Aproveite Records nos teus programas até agora e brinque com a sintaxe

> data DecAlg =
>  Zero
>     | One
>     | Two
>     | Three
>     | Four
>     | Five
>     | Six
>     | Seven
>     | Eight
>     | Nine

2. Dadas funções:
f : α → γ
    e
g : β → δ

Mostre como definir:

α × β → γ × δ 
    (i) manualmente;

foo :: ((α -> γ), (β -> δ)) -> ((α, β) -> (γ, δ))
foo (f x, g y) = ((x, y), (f x, g y))

> foo :: ((a -> c), (b -> d)) -> ((a, b) -> (c, d))
> foo (f, g) = 

    (ii) aproveitando algo sobre um (×) que aparece aí (qual dos dois, e qual é o tal algo?)
3. Dadas funções f : α → γ e g : β → δ mostra como definir ? : α + β ← γ + δ 
    (i) manualmente;
    (ii) aproveitando algo sobre um (+) que aparece aí (qual dos dois, e qual é o tal algo?)
4. Adivinhe e demonstre:
        1.⟨outl, outr⟩ = ?
        2.⟨f,g⟩ = ⟨k,h⟩ ⇒ ?
        3.⟨f∘h,g∘h⟩ = ?
        4.(f×h)∘⟨g,k⟩ = ?
        5.1A×1B=?
        6.(f×h)∘(g×k) = ?
