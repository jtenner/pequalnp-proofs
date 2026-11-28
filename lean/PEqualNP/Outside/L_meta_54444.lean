import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54444 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (322814 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [1, 3]⟩, ⟨.and, [10, 4]⟩, ⟨.or, [0, 2]⟩,
    ⟨.or, [5, 6]⟩, ⟨.or, [13, 7]⟩, ⟨.and, [12, 14]⟩,
    ⟨.or, [0, 1]⟩, ⟨.or, [5, 8]⟩, ⟨.or, [17, 9]⟩,
    ⟨.and, [16, 18]⟩, ⟨.or, [11, 15]⟩, ⟨.or, [20, 19]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
