import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54493 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (808696 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [4, 6]⟩, ⟨.and, [2, 10]⟩, ⟨.and, [0, 9]⟩,
    ⟨.or, [1, 3]⟩, ⟨.or, [4, 5]⟩, ⟨.and, [13, 14]⟩,
    ⟨.or, [0, 1]⟩, ⟨.or, [7, 8]⟩, ⟨.and, [16, 17]⟩,
    ⟨.or, [11, 12]⟩, ⟨.or, [19, 15]⟩, ⟨.or, [20, 18]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
