import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54430 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (320502 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [1, 3]⟩, ⟨.and, [10, 4]⟩, ⟨.or, [5, 6]⟩,
    ⟨.or, [12, 8]⟩, ⟨.or, [13, 9]⟩, ⟨.and, [0, 14]⟩,
    ⟨.or, [1, 2]⟩, ⟨.or, [5, 6]⟩, ⟨.or, [17, 7]⟩,
    ⟨.and, [16, 18]⟩, ⟨.or, [11, 15]⟩, ⟨.or, [20, 19]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
