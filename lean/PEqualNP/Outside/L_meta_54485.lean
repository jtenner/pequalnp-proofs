import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54485 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (808507 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [4, 6]⟩, ⟨.and, [2, 10]⟩, ⟨.or, [0, 1]⟩,
    ⟨.or, [7, 8]⟩, ⟨.and, [12, 13]⟩, ⟨.or, [0, 3]⟩,
    ⟨.or, [4, 5]⟩, ⟨.and, [15, 16]⟩, ⟨.and, [0, 9]⟩,
    ⟨.or, [11, 14]⟩, ⟨.or, [19, 17]⟩, ⟨.or, [20, 18]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
