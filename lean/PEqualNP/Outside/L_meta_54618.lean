import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54618 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (287738 : ℕ).testBit (6 * u.val + v.val)) 13 := by
  let C : Circuit := ⟨[
    ⟨.and, [3, 4]⟩, ⟨.or, [1, 2]⟩, ⟨.or, [5, 6]⟩,
    ⟨.and, [11, 12]⟩, ⟨.or, [5, 7]⟩, ⟨.or, [14, 8]⟩,
    ⟨.or, [15, 9]⟩, ⟨.and, [0, 16]⟩, ⟨.or, [4, 7]⟩,
    ⟨.and, [1, 18]⟩, ⟨.or, [10, 13]⟩, ⟨.or, [20, 17]⟩,
    ⟨.or, [21, 19]⟩
  ], 22⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
