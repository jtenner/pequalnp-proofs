import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54386 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (322750 : ℕ).testBit (6 * u.val + v.val)) 11 := by
  let C : Circuit := ⟨[
    ⟨.and, [3, 4]⟩, ⟨.or, [0, 1]⟩, ⟨.or, [5, 8]⟩,
    ⟨.or, [12, 9]⟩, ⟨.and, [11, 13]⟩, ⟨.or, [0, 2]⟩,
    ⟨.or, [5, 6]⟩, ⟨.or, [16, 7]⟩, ⟨.and, [15, 17]⟩,
    ⟨.or, [10, 14]⟩, ⟨.or, [19, 18]⟩
  ], 20⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
