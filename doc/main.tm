<TeXmacs|2.1.1>

<style|<tuple|generic|british>>

<\body>
  <chapter|Stochastics>

  <section|Ordinary Differential Equation>

  Let <math|<with|font|cal|M>> a smooth manifold, and
  <math|f:<with|font|cal|M>\<times\>\<bbb-R\>\<rightarrow\>T<with|font|cal|M>>,
  we have ordinary differential equation<\footnote>
    We employ Einstein's convension of summation thoroughly.
  </footnote>

  <\equation>
    <frac|\<mathd\>x<rsup|a>|\<mathd\>t><around*|(|t|)>=f<rsup|a><around*|(|x,t|)>.
  </equation>

  This ordinary differential equation induces a push-forward operator,
  <math|<wide|T|^><rsub|t\<rightarrow\>t<rprime|'>>:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<cal-M\>\<rightarrow\>\<cal-M\>><\footnote>
    The notation <math|A\<rightarrow\>B\<rightarrow\>C> in declarations
    always means <math|A\<rightarrow\><around*|(|B\<rightarrow\>C|)>>.
    Further, <math|A\<rightarrow\>B\<rightarrow\>\<cdots\>> means
    <math|A\<rightarrow\><around*|(|B\<rightarrow\><around*|(|\<cdots\>|)>|)>>.
    This is a useful convension from <samp|Haskell>.
  </footnote>, which pushes the particle on position on
  <math|<with|font|cal|M>> at time <math|t> to another position on
  <math|<with|font|cal|M>> at time <math|t<rprime|'>>.

  \;

  Let <math|\<Omega\><rsup|k><around*|(|\<cal-M\>|)>> the space of
  <math|k>-forms on <math|\<cal-M\>>, where
  <math|k\<leqslant\>dim<around*|(|<with|font|cal|M>|)>>. This ordinary
  differential equation also induces a pull-back operator on
  <math|k>-forms<\footnote>
    Even though we call it something-back, but it pushes forward the
    <math|k>-forms. The name comes from the fact that forward pushing of
    <math|k>-forms is equivalent to backward pushing the mass unit, as the
    following discussion shows.
  </footnote>, <math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>:\<bbb-R\>\<times\>\<bbb-R\>\<rightarrow\>\<Omega\><rsup|k><around*|(|\<cal-M\>|)>\<rightarrow\>\<Omega\><rsup|k><around*|(|\<cal-M\>|)>>,
  which describes the transition of <math|k>-form from time <math|t> to
  <math|t<rprime|'>>.

  Precisely, consider <math|\<forall\>\<psi\><rsup|<around*|(|k|)>>\<in\>\<Omega\><rsup|k><around*|(|\<cal-M\>|)>>,
  we can write it explicitly by indices, as

  <\equation>
    \<psi\><rsup|<around*|(|k|)>><around*|(|x|)>=<around*|(|1/k!|)>
    \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x|)>
    \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>,
  </equation>

  where the indices in <math|\<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x|)>>
  is anti-symmetric. Regardless of the <math|1/k!> factor, the
  <math|\<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x|)>>
  can be viewed as the local density at <math|x> and the
  <math|\<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>>
  as area or volume unit. Thus, <math|\<psi\><rsup|<around*|(|k|)>><around*|(|x|)>>,
  as a whole, is the mass unit. <math|<wide|T|^><rsup|\<ast\>>> is thus is a
  forward pushing transition of mass unit.

  <\lemma>
    Explicitly, we have

    <\equation>
      <wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>
      \<psi\><rsup|<around*|(|k|)>><around*|(|x<rprime|'>|)>=<around*|(|1/k!|)>
      \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>
      x<rprime|'>|)><big|wedge><rsub|i=1><rsup|k><around*|(|T
      <wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>|)><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>><around*|(|x<rprime|'>|)>
      \<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>,
    </equation>

    where <math|T <wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>> denotes the
    Jacobian of <math|<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>.>
  </lemma>

  <small|<\proof>
    Let <math|x<rprime|'>=<wide|T|^><rsub|t\<rightarrow\>t<rprime|'>> x> and
    <math|\<psi\><rprime|'><rsup|<around*|(|k|)>>=<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>
    \<psi\><rsup|<around*|(|k|)>>>, by conservation of mass during the
    pushing, we have

    <\equation*>
      \<psi\><rprime|'><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x<rprime|'>|)>
      \<mathd\>x<rprime|'><rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rprime|'><rsup|\<alpha\><rsub|k>>=\<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x|)>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>.
    </equation*>

    Replace <math|x> by <math|x=<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>
    x<rprime|'>>, we get

    <\equation*>
      \<psi\><rprime|'><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x<rprime|'>|)>
      \<mathd\>x<rprime|'><rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rprime|'><rsup|\<alpha\><rsub|k>>=\<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>
      x<rprime|'>|)><big|wedge><rsub|i=1><rsup|k><around*|(|T
      <wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>|)><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>><around*|(|x<rprime|'>|)>
      \<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>.
    </equation*>

    Inserting back the <math|<around*|(|1/k!|)>> factor, we arrive at

    <\equation*>
      <wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>
      \<psi\><rsup|<around*|(|k|)>><around*|(|x<rprime|'>|)>=<around*|(|1/k!|)>
      \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>
      x<rprime|'>|)><big|wedge><rsub|i=1><rsup|k><around*|(|T
      <wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>|)><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>><around*|(|x<rprime|'>|)>
      \<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>.
    </equation*>
  </proof>>

  <subsection|Infinitesimal Pull-back>

  Now, we try to derive the explicit expression of
  <math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>> depending
  on <math|f<rsup|a>> in the limit <math|t<rprime|'>\<rightarrow\>t>. This
  infinitesimal version of pull-back can be described by Lie derivative.

  <\definition>
    [Lie Derivative] Given <math|f:<with|font|cal|M>\<times\>\<bbb-R\>\<rightarrow\>T<with|font|cal|M>>,
    Lie derivative <math|<wide|L|^><rsub|f>:\<bbb-R\>\<rightarrow\>\<Omega\><rsup|k><around*|(|<with|font|cal|M>|)>\<rightarrow\>\<Omega\><rsup|k><around*|(|<with|font|cal|M>|)>>
    is defined as

    <\equation>
      <wide|L|^><rsub|f><around*|(|t|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0><frac|1-<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t>|\<Delta\>t>,
    </equation>

    where <math|<wide|T|^><rsup|\<ast\>>> is the pull-back induced by
    <math|f>.
  </definition>

  Some useful definitions in exterior algebra are recalled. Operators
  <math|<wide|\<mathd\>|^>\<assign\>\<mathd\>x<rsup|\<alpha\>>\<wedge\>\<partial\><rsub|\<alpha\>>><\footnote>
    Operator <math|\<partial\><rsub|\<alpha\>>> is short for
    <math|\<partial\>/\<partial\>x<rsup|\<alpha\>>>.
  </footnote> and, for <math|\<forall\>f>,
  <math|<wide|i|^><rsub|f>\<assign\>f<rsup|\<alpha\>> i<rsub|\<alpha\>>>,
  where <math|i<rsub|\<alpha\>>> is the interior product<\footnote>
    Interior product <math|i<rsub|a>:\<Omega\><rsup|k><around*|(|<with|font|cal|M>|)>\<rightarrow\>\<Omega\><rsup|k-1><around*|(|<with|font|cal|M>|)>>
    is defined as, for <math|\<forall\>\<psi\><rsup|<around*|(|k|)>>\<in\>\<Omega\><rsup|k><around*|(|<with|font|cal|M>|)>>,

    <\equation>
      i<rsub|\<alpha\>> \<psi\><rsup|<around*|(|k|)>>\<assign\><around*|(|1/k!|)><big|sum><rsub|i=1><rsup|k><around*|(|-1|)><rsup|i-1>\<psi\><rsub|\<alpha\><rsub|1>\<cdots\><around*|(|<with|color|#a0a0a0|\<alpha\><rsub|i>\<rightarrow\>>\<alpha\>|)>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>,
    </equation>

    where <math|<with|color|#a0a0a0|A>> means that <math|A> is deleted, and
    <math|<with|color|#a0a0a0|A\<rightarrow\>>B> means that the original
    <math|A> is replaced by <math|B>. That is, it annihilates a
    <math|\<mathd\>x<rsup|a>\<wedge\>>. The most useful property of interior
    product is the anti-commutator <math|<around*|[|\<mathd\>x<rsup|\<alpha\>>\<wedge\>,i<rsub|\<beta\>>|]><rsub|+>=\<delta\><rsup|\<alpha\>><rsub|\<beta\>>>.
  </footnote>. Let <math|A> and <math|B> compositions of
  <math|\<mathd\>x<rsup|a>\<wedge\>> and <math|i<rsub|a>>, then
  <math|<around*|[|A,B|]>> is commutator if both <math|A> and <math|B> have
  balanced <math|\<mathd\>x<rsup|a>\<wedge\>> and <math|i<rsub|a>>, otherwise
  anti-commutator.

  With these definitions, we conclude the explicit relatoin between <math|f>
  and <math|<wide|L|^><rsub|f>>, as follow.

  <\theorem>
    [Cartan's Magic Formula] We have

    <\equation>
      <wide|L|^><rsub|f>=<around*|[|<wide|\<mathd\>|^>,<wide|i|^><rsub|f>|]>.
    </equation>
  </theorem>

  <small|<\proof>
    As <math|t<rprime|'>=t+\<Delta\>t> with <math|\<Delta\>t> tiny, we have
    <math|<wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>
    x<rprime|'>=x<rprime|'>-f \<Delta\>t>. Then, <math|T
    <wide|T|^><rsub|t<rprime|'>\<rightarrow\>t>=1-T f \<Delta\>t>. Now we
    insert this two expressions into the definition of
    <math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>>
    \<psi\><rsup|<around*|(|k|)>>>, that is,

    <\equation*>
      <around*|(|1/k!|)>\<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><around*|(|x<rprime|'>-f<around*|(|x<rprime|'>|)>
      \<Delta\>t|)><big|wedge><rsub|i=1><rsup|k><around*|(|\<delta\><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>>-<around*|(|\<partial\><rsub|\<beta\><rsub|i>>f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      \<Delta\>t|)>\<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>.
    </equation*>

    First, consider the expansion of <math|<around*|(|1/k!|)>
    \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><big|wedge><rsub|i=1><rsup|k><around*|(|\<delta\><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>>-<around*|(|\<partial\><rsub|\<beta\><rsub|i>>f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
    \<Delta\>t|)>\<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>>, up to
    <math|<with|font|cal|O><around*|(|\<Delta\>t|)>>,

    <\align>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|1/k!|)>
      \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><big|wedge><rsub|i=1><rsup|k><around*|(|\<delta\><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>>-<around*|(|\<partial\><rsub|\<beta\><rsub|i>>f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      \<Delta\>t|)>\<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>>>|<row|<cell|=>|<cell|<around*|(|1/k!|)>
      \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>>\<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>>>|<row|<cell|->|<cell|\<Delta\>t
      <big|sum><rsub|i=1><rsup|k><around*|(|1/k!|)>
      \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>>
      <around*|(|\<partial\><rsub|\<beta\><rsub|i>>f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><around*|(|<with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>\<rightarrow\>>\<mathd\>x<rsup|\<beta\><rsub|i>>|)>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>,>>>>
    </align>

    where <math|<with|color|#a0a0a0|A\<rightarrow\>>B> means that the
    original <math|A> is replaced by <math|B>. Now, we show that summation in
    the last line equals to <math|\<partial\><rsub|\<beta\>>
    f<rsup|\<alpha\>><around*|(|x<rprime|'>|)>
    \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>
    \<psi\><rsup|<around*|(|k|)>>>. Recall that

    <\equation*>
      i<rsub|\<alpha\>> \<psi\><rsup|<around*|(|k|)>>\<assign\><around*|(|1/k!|)><big|sum><rsub|i=1><rsup|k><around*|(|-1|)><rsup|i-1>\<psi\><rsub|\<alpha\><rsub|1>\<cdots\><around*|(|<with|color|#a0a0a0|\<alpha\><rsub|i>\<rightarrow\>>\<alpha\>|)>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>,
    </equation*>

    where <math|<with|color|#a0a0a0|A>> means the original <math|A> is
    deleted. Indeed,

    <\align>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>
      \<psi\><rsup|<around*|(|k|)>>>>|<row|<cell|=>|<cell|<around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\><around*|(|1/k!|)><big|sum><rsub|i=1><rsup|k><around*|(|-1|)><rsup|i-1>\<psi\><rsub|\<alpha\><rsub|1>\<cdots\><around*|(|<with|color|#a0a0a0|\<alpha\><rsub|i>\<rightarrow\>>\<alpha\>|)>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>>>|<row|<cell|=>|<cell|<around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      <big|sum><rsub|i=1><rsup|k><around*|(|1/k!|)>
      \<psi\><rsub|\<alpha\><rsub|1>\<cdots\><around*|(|<with|color|#a0a0a0|\<alpha\><rsub|i>\<rightarrow\>>\<alpha\>|)>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><around*|(|<with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>\<rightarrow\>>\<mathd\>x<rsup|\<beta\>>|)>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>>>|<row|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k><around*|(|\<partial\><rsub|\<beta\><rsub|i>>
      f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      <around*|(|1/k!|)> \<psi\><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|i>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><around*|(|<with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>\<rightarrow\>>\<mathd\>x<rsup|\<beta\><rsub|i>>|)>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>>>|<row|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|k><around*|(|\<partial\><rsub|\<beta\><rsub|i>>
      f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      <around*|(|1/k!|)> \<psi\><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>>
      \<mathd\>x<rsup|\<alpha\><rsub|1>>\<wedge\>\<cdots\>\<wedge\><around*|(|<with|color|#a0a0a0|\<mathd\>x<rsup|\<alpha\><rsub|i>>\<rightarrow\>>\<mathd\>x<rsup|\<beta\><rsub|i>>|)>\<wedge\>\<cdots\>\<wedge\>\<mathd\>x<rsup|\<alpha\><rsub|k>>,>>>>
    </align>

    where in the last two lines, we replaced the dummy indices
    <math|\<alpha\>\<rightarrow\>\<alpha\><rsub|i>> and
    <math|\<beta\>\<rightarrow\>\<beta\><rsub|i>>, and then found that
    <math|\<psi\><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|i>\<cdots\>\<alpha\><rsub|k>>>
    can be written back to <math|\<psi\><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>>>.
    Thus,

    <\equation*>
      <around*|(|1/k!|)> \<psi\><rsup|<around*|(|k|)>><rsub|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>><big|wedge><rsub|i=1><rsup|k><around*|(|\<delta\><rsup|\<alpha\><rsub|i>><rsub|\<beta\><rsub|i>>-<around*|(|\<partial\><rsub|\<beta\><rsub|i>>f<rsup|\<alpha\><rsub|i>>|)><around*|(|x<rprime|'>|)>
      \<Delta\>t|)>\<mathd\>x<rprime|'><rsup|\<beta\><rsub|i>>=<around*|(|1-\<Delta\>t
      <around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>|)>
      \<psi\><rsup|<around*|(|k|)>>.
    </equation*>

    So, we find

    <\align>
      <tformat|<table|<row|<cell|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t>
      \<psi\><rsup|<around*|(|k|)>>=>|<cell|<around*|(|1-\<Delta\>t
      <around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>|)>
      \<psi\><rsup|<around*|(|k|)>><around*|(|x<rprime|'>-f
      \<Delta\>t|)>>>|<row|<cell|=>|<cell|<around*|(|1-\<Delta\>t
      <around*|(|\<partial\><rsub|\<beta\>>
      f<rsup|\<alpha\>>|)><around*|(|x<rprime|'>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>|)>
      <around*|(|1-\<Delta\>t f<rsup|\<alpha\>><around*|(|x<rprime|'>|)>
      \<partial\><rsub|\<alpha\>>|)>\<psi\><rsup|<around*|(|k|)>><around*|(|x<rprime|'>|)>>>|<row|<cell|=>|<cell|\<psi\><rsup|<around*|(|k|)>>-<around*|(|f<rsup|a>\<partial\><rsub|a>+<around*|(|\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>|)>
      \<psi\><rsup|<around*|(|k|)>>\<Delta\>t+<with|font|cal|O><around*|(|\<Delta\>t<rsup|2>|)>.>>>>
    </align>

    Thus,

    <\align>
      <tformat|<table|<row|<cell|<wide|L|^><rsub|f>\<assign\>>|<cell|lim<rsub|\<Delta\>t\<rightarrow\>0><frac|1-<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t>|\<Delta\>t>>>|<row|<cell|=>|<cell|f<rsup|a>\<partial\><rsub|a>+<around*|(|\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>>|)>
      \<mathd\>x<rsup|\<beta\>>\<wedge\>i<rsub|\<alpha\>>.>>>>
    </align>

    Since <math|<wide|\<mathd\>|^>\<assign\>\<mathd\>x<rsup|\<alpha\>>\<wedge\>\<partial\><rsub|\<alpha\>>>
    and <math|<wide|i|^><rsub|f>\<assign\>f<rsup|\<alpha\>>
    i<rsub|\<alpha\>>>, we have

    <\align>
      <tformat|<table|<row|<cell|<around*|[|<wide|\<mathd\>|^>,<wide|i|^><rsub|f>|]>=>|<cell|\<mathd\>x<rsup|\<alpha\>>\<wedge\>\<partial\><rsub|\<alpha\>>
      f<rsup|\<beta\>> i<rsub|\<beta\>>+f<rsup|\<beta\>>
      i<rsub|\<beta\>>\<mathd\>x<rsup|\<alpha\>>\<wedge\>\<partial\><rsub|\<alpha\>>>>|<row|<cell|=>|<cell|<around*|(|\<partial\><rsub|\<alpha\>>
      f<rsup|\<beta\>>|)>\<mathd\>x<rsup|\<alpha\>>\<wedge\>
      i<rsub|\<beta\>>+f<rsup|\<beta\>> \<mathd\>x<rsup|\<alpha\>>\<wedge\>
      i<rsub|\<beta\>> \<partial\><rsub|\<alpha\>>>>|<row|<cell|<around*|{|<around*|[|\<mathd\>x<rsup|a>\<wedge\>,i<rsub|\<beta\>>|]>=\<delta\><rsup|\<alpha\>><rsub|\<beta\>>|}>+>|<cell|f<rsup|\<beta\>>
      \<delta\><rsup|\<alpha\>><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>-f<rsup|\<beta\>>
      \<mathd\>x<rsup|\<alpha\>>\<wedge\>i<rsub|\<beta\>>
      \<partial\><rsub|\<alpha\>>>>|<row|<cell|=>|<cell|<around*|(|\<partial\><rsub|\<alpha\>>
      f<rsup|\<beta\>>|)>\<mathd\>x<rsup|\<alpha\>>\<wedge\>
      i<rsub|\<beta\>>+f<rsup|a>\<partial\><rsub|a>,>>>>
    </align>

    which is <math|<wide|L|^><rsub|f>>.
  </proof>>

  <section|Stochastic Differential Equation>

  A direct generalization of ordinary differential equatoin is adding a
  Gaussian noise, as stochastic differential equation

  <\equation>
    <frac|\<mathd\>x<rsup|a>|\<mathd\>t><around*|(|t|)>=f<rsup|a><around*|(|x,t|)>+g<rsup|a><rsub|\<beta\>><around*|(|x,t|)>
    \<eta\><rsup|\<beta\>><around*|(|t|)>,
  </equation>

  where, for <math|\<forall\>t> and <math|\<alpha\>>,
  <math|\<eta\><rsup|\<alpha\>><around*|(|t|)>\<sim\><with|font|cal|N><around*|(|0,1/\<mathd\>t|)>>.
  For any functional <math|F<around*|[|\<eta\>|]>>, split the time interval
  <math|<around*|[|t,t<rprime|'>|]>> by <math|t=t<rsub|1>\<less\>t<rsub|2>\<less\>\<cdots\>\<less\>t<rsub|N>=t<rprime|'>>,
  with <math|t<rsub|i+1>-t<rsub|i>\<equiv\>\<Delta\>t>, then define the
  expectation as

  <\align>
    <tformat|<table|<row|<cell|<around*|\<langle\>|F|\<rangle\>>\<assign\>>|<cell|<big|int>D<around*|[|\<eta\>|]>
    exp<around*|(|-<frac|1|2> <big|int>\<mathd\>t
    \<delta\><rsub|\<alpha\>\<beta\>> \<eta\><rsup|a><around*|(|t|)>
    \<eta\><rsup|\<beta\>><around*|(|t|)>|)>
    F<around*|[|\<eta\>|]>>>|<row|<cell|\<assign\>>|<cell|lim<rsub|\<Delta\>t\<rightarrow\>0>Z<rsup|-1>
    <big|int>\<mathd\>\<eta\><around*|(|t<rsub|1>|)>
    \<cdots\>\<mathd\>\<eta\><around*|(|t<rsub|N>|)>
    exp<around*|(|-<frac|1|2> <big|sum><rsub|i>\<Delta\>t
    \<delta\><rsub|\<alpha\>\<beta\>> \<eta\><rsup|a><around*|(|t<rsub|i>|)>
    \<eta\><rsup|\<beta\>><around*|(|t<rsub|i>|)>|)>
    F<around*|[|\<eta\>|]>,>>>>
  </align>

  where <math|Z> the normalization factor so that
  <math|<around*|\<langle\>|1|\<rangle\>>=1>. Notice that the dimension of
  <math|\<eta\>> and that of <math|f> may not equal.

  <subsection|Infinitesimal Pull-back Expectation>

  For any configuration <math|\<eta\>> given, the stochastic differential
  equation is reduced to an ordinary differential equation. In this case, the
  pull-back depends on <math|\<eta\>>, that is,
  <math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>><around*|[|\<eta\>|]>>.
  We care about the expectation <math|<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>><around*|[|\<eta\>|]>|\<rangle\>>>
  over all possible configuration of <math|\<eta\>>, especially it's
  infinitesimal version.

  As before, define the stochastic version of Lie derivative, as

  <\equation>
    <wide|H|^><rsub|<around*|(|f,g|)>><around*|(|t|)>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0><frac|1-<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t><around*|[|\<cdummy\>|]>|\<rangle\>>|\<Delta\>t>,
  </equation>

  where <math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t>>
  depends on the configuration <math|\<eta\>>.

  <\theorem>
    We have

    <\equation>
      <wide|H|^><rsub|<around*|(|f,g|)>>=<wide|L|^><rsub|f>-<frac|1|2><wide|L|^><rsub|g><rsup|2>,
    </equation>

    where <math|<wide|L|^><rsub|g><rsup|2>\<assign\>\<delta\><rsup|\<alpha\>\<beta\>>
    <wide|L|^><rsub|g<rsub|\<alpha\>>><wide|L|^><rsub|g<rsub|\<beta\>>>>.
  </theorem>

  <small|<\proof>
    Given configuration of <math|\<eta\>>, let
    <math|F<rsup|\<alpha\>><rsub|\<eta\>><around*|(|x,t|)>\<assign\>f<rsup|\<alpha\>><around*|(|x,t|)>+g<rsup|\<alpha\>><rsub|\<beta\>><around*|(|x,t|)>\<eta\><rsup|\<beta\>><around*|(|t|)>>.
    Directly, we have

    <\equation*>
      <wide|L|^><rsub|F<rsub|\<eta\>>>=<wide|L|^><rsub|f>+<wide|L|^><rsub|g<rsub|\<beta\>>>
      \<eta\><rsup|\<beta\>>.
    </equation*>

    Then, we have <math|><math|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t><around*|[|\<eta\>|]>=exp<around*|(|-<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t|)>>.<\footnote>
      TODO: needs some proof.
    </footnote> Then,

    <\align>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t><around*|[|\<cdummy\>|]>|\<rangle\>>=>|<cell|<big|int>\<mathd\>\<eta\><around*|(|t|)>
      exp<around*|(|-<frac|1|2> \<Delta\>t \<delta\><rsub|\<alpha\>\<beta\>>
      \<eta\><rsup|\<alpha\>><around*|(|t|)>
      \<eta\><rsup|\<beta\>><around*|(|t|)>|)>
      exp<around*|(|-<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t|)>>>|<row|<cell|=>|<cell|<big|int>\<mathd\>\<eta\><around*|(|t|)>
      exp<around*|(|-<frac|1|2> \<Delta\>t \<delta\><rsub|\<alpha\>\<beta\>>
      \<eta\><rsup|\<alpha\>><around*|(|t|)>
      \<eta\><rsup|\<beta\>><around*|(|t|)>|)>
      <around*|(|1-<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t+<frac|1|2><around*|(|<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t|)><rsup|2>+\<cdots\>|)>>>|<row|<cell|=>|<cell|1-<around*|\<langle\>|<wide|L|^><rsub|F<rsub|\<eta\>>>
      \<Delta\>t|\<rangle\>>+<frac|1|2><around*|\<langle\>|<around*|(|<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t|)><rsup|2>|\<rangle\>>+\<cdots\>>>>>
    </align>

    Since <math|<around*|\<langle\>|\<eta\><rsup|\<beta\>>|\<rangle\>>=0>,
    <math|<around*|\<langle\>|<wide|L|^><rsub|F<rsub|\<eta\>>>
    \<Delta\>t|\<rangle\>>=<around*|\<langle\>|<wide|L|^><rsub|f>+<wide|L|^><rsub|g<rsub|\<beta\>>>
    \<eta\><rsup|\<beta\>>|\<rangle\>>\<Delta\>t=<wide|L|^><rsub|f>
    \<Delta\>t>. And since <math|<around*|\<langle\>|\<eta\><rsup|\<alpha\>>
    \<eta\><rsup|\<beta\>>|\<rangle\>>=\<delta\><rsup|\<alpha\>\<beta\>>/\<Delta\>t>,

    <\align>
      <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|<around*|(|<wide|L|^><rsub|F<rsub|\<eta\>>>
      \<Delta\>t|)><rsup|2>|\<rangle\>>>>|<row|<cell|=>|<cell|<around*|\<langle\>|<around*|(|<wide|L|^><rsub|f>+<wide|L|^><rsub|g<rsub|\<alpha\>>>
      \<eta\><rsup|\<alpha\>>|)> <around*|(|<wide|L|^><rsub|f>+<wide|L|^><rsub|g<rsub|\<beta\>>>
      \<eta\><rsup|\<beta\>>|)>|\<rangle\>>
      \<Delta\>t<rsup|2>>>|<row|<cell|<around*|{|<around*|\<langle\>|\<eta\><rsup|\<beta\>>|\<rangle\>>=0|}>=>|<cell|<wide|L|^><rsub|f><rsup|2>
      \<Delta\>t<rsup|2>+<wide|L|^><rsub|g<rsub|\<alpha\>>>
      <wide|L|^><rsub|g<rsub|\<beta\>>> <around*|\<langle\>|\<eta\><rsup|\<alpha\>>
      \<eta\><rsup|\<beta\>>|\<rangle\>> \<Delta\>t<rsup|2>>>|<row|<cell|<around*|{|<around*|\<langle\>|\<eta\><rsup|\<alpha\>>
      \<eta\><rsup|\<beta\>>|\<rangle\>>=\<delta\><rsup|\<alpha\>\<beta\>>/\<Delta\>t|}>=>|<cell|<wide|L|^><rsub|f><rsup|2>
      \<Delta\>t<rsup|2>+<wide|L|^><rsub|g<rsub|\<alpha\>>>
      <wide|L|^><rsub|g<rsub|\<beta\>>> \<delta\><rsup|\<alpha\>\<beta\>>
      \<Delta\>t>>|<row|<cell|<around*|{|<wide|L|^><rsub|g><rsup|2>\<assign\>\<cdots\>|}>=>|<cell|<wide|L|^><rsub|f><rsup|2>
      \<Delta\>t<rsup|2>+<wide|L|^><rsub|g><rsup|2> \<Delta\>t.>>>>
    </align>

    Thus,

    <\align>
      <tformat|<table|<row|<cell|<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t><around*|[|\<cdummy\>|]>|\<rangle\>>=>|<cell|1-<around*|\<langle\>|<wide|L|^><rsub|F<rsub|\<eta\>>>|\<rangle\>>\<Delta\>t+<frac|1|2><around*|\<langle\>|<around*|(|<wide|L|^><rsub|F<rsub|\<eta\>>>\<Delta\>t|)><rsup|2>|\<rangle\>>+\<cdots\>>>|<row|<cell|=>|<cell|1-<wide|L|^><rsub|f>
      \<Delta\>t+<frac|1|2> <around*|\<langle\>|<wide|L|^><rsub|g><rsup|2>|\<rangle\>>\<Delta\>t+o<around*|(|\<Delta\>t|)>.>>>>
    </align>

    So, finally,

    <\equation*>
      <wide|H|^><rsub|<around*|(|f,g|)>>\<assign\>lim<rsub|\<Delta\>t\<rightarrow\>0><frac|<wide|1|^>-<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t+\<Delta\>t><around*|[|\<cdummy\>|]>|\<rangle\>>|\<Delta\>t>=<wide|L|^><rsub|f>-<frac|1|2><wide|L|^><rsub|g><rsup|2>.
    </equation*>
  </proof>>

  <subsection|Symmetry (TODO)>

  <\definition>
    Given <math|A>, <math|B> is called <math|A>-exact if there exists
    <math|X> such that

    <\equation>
      B=<around*|[|A,X|]>.
    </equation>
  </definition>

  <\lemma>
    If <math|B> is <math|A>-exact, then <math|<around*|[|A,B|]>=0>.
  </lemma>

  <\proof>
    \;

    <\align>
      <tformat|<table|<row|<cell|<around*|[|A,B|]>=>|<cell|<around*|[|A,<around*|[|A,X|]>|]>>>|<row|<cell|=>|<cell|<around*|[|X,<around*|[|A,A|]>|]>+<around*|[|A,<around*|[|X,A|]>|]>>>|<row|<cell|=>|<cell|?>>>>
    </align>

    \;
  </proof>

  <\lemma>
    We have decomposition

    <\equation>
      <wide|H|^>=<around*|[|<wide|\<mathd\>|^>,<wide|j|^>|]>,
    </equation>

    where <math|<wide|j|^>\<assign\><wide|i|^><rsub|f>-<frac|1|2><wide|L|^><rsub|g<rsub|\<beta\>>>\<eta\><rsup|\<beta\>>>.
  </lemma>

  That is, <math|<wide|H|^>> is <math|<wide|\<mathd\>|^>>-exact, thus,

  <\equation>
    <around*|[|<wide|\<mathd\>|^>,<wide|H|^>|]>=0.
  </equation>

  <math|<wide|\<mathd\>|^>\<psi\><rsup|<around*|(|k|)>>=0>, but there isn't
  <math|\<varphi\><rsup|<around*|(|k-1|)>>> s.t.
  <math|\<psi\><rsup|<around*|(|k|)>>=<wide|\<mathd\>|^>\<varphi\><rsup|<around*|(|k-1|)>>>.
  Symmetric state.

  <math|<wide|\<mathd\>|^>\<psi\><rsup|<around*|(|k|)>>\<neq\>0>.
  <math|<wide|\<mathd\>|^><rsup|2>\<psi\><rsup|<around*|(|k|)>>=0>. Symmetry
  breaking state. <math|tr<around*|(|<around*|\<langle\>|<wide|T|^><rsup|\<ast\>><rsub|t\<rightarrow\>t<rprime|'>><around*|[|\<cdummy\>|]>|\<rangle\>>|)>=<big|sum><rsub|n>exp<around*|(|-E<rsub|n><around*|(|t<rprime|'>-t|)>|)>=exp<around*|(|\<lambda\><around*|(|t<rprime|'>-t|)>|)>>.

  \;

  <math|<wide|j|^><rsup|2>=0>. <math|<around*|[|<wide|j|^>,<wide|H|^>|]>=0>.

  <math|j> is the flux. That is, for <math|\<psi\><rsup|<around*|(|D|)>>>,
  where <math|D=dim<around*|(|<with|font|cal|M>|)>>, <math|<wide|H|^>
  \<psi\><rsup|<around*|(|D|)>>=<wide|j|^> \<psi\><rsup|<around*|(|D|)>>>, so
  that <math|\<partial\><rsub|t>\<psi\><rsup|<around*|(|D|)>>+<wide|j|^>
  \<psi\><rsup|<around*|(|D|)>>=0>, indicating that <math|<wide|j|^>> is the
  flux.

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|9>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|1.1|1>>
    <associate|auto-4|<tuple|2|3>>
    <associate|auto-5|<tuple|2.1|3>>
    <associate|auto-6|<tuple|2.2|4>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|1>>
    <associate|footnote-3|<tuple|3|1>>
    <associate|footnote-4|<tuple|4|2>>
    <associate|footnote-5|<tuple|5|2>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|1>>
    <associate|footnr-3|<tuple|3|1>>
    <associate|footnr-4|<tuple|4|2>>
    <associate|footnr-5|<tuple|5|2>>
    <associate|footnr-6|<tuple|6|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Stochastics>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Ordinary
      Differential Equation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Infinitesimal Pull-back
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Stochastic
      Differential Equation> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Infinitesimal Pull-back
      Expectation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Symmetry (TODO)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>