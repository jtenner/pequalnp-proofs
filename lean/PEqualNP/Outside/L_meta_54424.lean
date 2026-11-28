import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54424 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (294587 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [4, 5]⟩, ⟨.or, [10, 6]⟩, ⟨.and, [2, 11]⟩,
    ⟨.or, [0, 3]⟩, ⟨.and, [13, 4]⟩, ⟨.or, [0, 1]⟩,
    ⟨.or, [5, 7]⟩, ⟨.or, [16, 8]⟩, ⟨.or, [17, 9]⟩,
    ⟨.and, [15, 18]⟩, ⟨.or, [12, 14]⟩, ⟨.or, [20, 19]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
