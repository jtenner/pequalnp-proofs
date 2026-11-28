import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54350 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (290494 : ℕ).testBit (6 * u.val + v.val)) 11 := by
  let C : Circuit := ⟨[
    ⟨.and, [3, 4]⟩, ⟨.or, [0, 2]⟩, ⟨.or, [5, 6]⟩,
    ⟨.and, [11, 12]⟩, ⟨.or, [0, 1]⟩, ⟨.or, [5, 7]⟩,
    ⟨.or, [15, 8]⟩, ⟨.or, [16, 9]⟩, ⟨.and, [14, 17]⟩,
    ⟨.or, [10, 13]⟩, ⟨.or, [19, 18]⟩
  ], 20⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
