import PEqualNP.Defs

open PEqualNP.CircuitLowerBounds PEqualNP.MetaComplexity PEqualNP.Represents

theorem PEqualNP.Outside.L_meta_54404 :
    RepSizeAtMost (fun (u : Fin 4) (v : Fin 6) => (291762 : ℕ).testBit (6 * u.val + v.val)) 12 := by
  let C : Circuit := ⟨[
    ⟨.or, [2, 3]⟩, ⟨.and, [10, 4]⟩, ⟨.or, [5, 8]⟩,
    ⟨.or, [12, 9]⟩, ⟨.and, [0, 13]⟩, ⟨.and, [1, 7]⟩,
    ⟨.or, [1, 2]⟩, ⟨.or, [5, 6]⟩, ⟨.and, [16, 17]⟩,
    ⟨.or, [11, 14]⟩, ⟨.or, [19, 15]⟩, ⟨.or, [20, 18]⟩
  ], 21⟩
  exact ⟨C, by simp [Monotone2, C], by decide +kernel, by decide +kernel⟩
