(define (problem simpleProblem)
  (:domain pizzaDomain)
  (:objects
      motorbike car - vehicle
      p1 p2 p3 p4 p5 p6 p7 p8 - pizza
      s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - street
      fp1 fp2 - fuel_pump)
  (:init
  (street-linked s1 s2) (= (fuel-required s1 s2) 5)
  (street-linked s1 s3) (= (fuel-required s1 s3) 5)
  (street-linked s1 s4) (= (fuel-required s1 s4) 3)
  (street-linked s1 s6) (= (fuel-required s1 s6) 8)
  (street-linked s1 s8) (= (fuel-required s1 s8) 10)
  (street-linked s1 s9) (= (fuel-required s1 s9) 16)
  (street-linked s1 s10) (= (fuel-required s1 s10) 5)

  (street-linked s2 s1) (= (fuel-required s2 s1) 5)

  (street-linked s3 s1) (= (fuel-required s3 s1) 5)
  (street-linked s3 s4) (= (fuel-required s3 s4) 5)
  (street-linked s3 s5) (= (fuel-required s3 s5) 7)
  (street-linked s3 s7) (= (fuel-required s3 s7) 12)
  (street-linked s3 s8) (= (fuel-required s3 s8) 15)

  (street-linked s4 s1) (= (fuel-required s4 s1) 3)
  (street-linked s4 s3) (= (fuel-required s4 s3) 5)
  (street-linked s4 s5) (= (fuel-required s4 s5) 12)
  (street-linked s4 s7) (= (fuel-required s4 s7) 4)
  (street-linked s4 s9) (= (fuel-required s4 s9) 10)
  (street-linked s4 s10) (= (fuel-required s4 s10) 6)

  (street-linked s5 s3) (= (fuel-required s5 s3) 7)
  (street-linked s5 s4) (= (fuel-required s5 s4) 12)
  (street-linked s5 s6) (= (fuel-required s5 s6) 11)
  (street-linked s5 s7) (= (fuel-required s5 s7) 6)
  (street-linked s5 s8) (= (fuel-required s5 s8) 7)
  (street-linked s5 s9) (= (fuel-required s5 s9) 8)

  (street-linked s6 s1) (= (fuel-required s6 s1) 8)
  (street-linked s6 s5) (= (fuel-required s6 s5) 11)
  (street-linked s6 s7) (= (fuel-required s6 s7) 5)
  (street-linked s6 s8) (= (fuel-required s6 s8) 5)
  (street-linked s6 s9) (= (fuel-required s6 s9) 3)
  (street-linked s6 s10) (= (fuel-required s6 s10) 12)

  (street-linked s7 s3) (= (fuel-required s7 s3) 12)
  (street-linked s7 s4) (= (fuel-required s7 s4) 4)
  (street-linked s7 s5) (= (fuel-required s7 s5) 6)
  (street-linked s7 s6) (= (fuel-required s7 s6) 5)
  (street-linked s7 s8) (= (fuel-required s7 s8) 8)
  (street-linked s7 s9) (= (fuel-required s7 s9) 7)
  (street-linked s7 s10) (= (fuel-required s7 s10) 6)

  (street-linked s8 s1) (= (fuel-required s8 s1) 10)
  (street-linked s8 s3) (= (fuel-required s8 s3) 15)
  (street-linked s8 s5) (= (fuel-required s8 s5) 7)
  (street-linked s8 s6) (= (fuel-required s8 s6) 5)
  (street-linked s8 s7) (= (fuel-required s8 s7) 8)
  (street-linked s8 s9) (= (fuel-required s8 s9) 9)

  (street-linked s9 s1) (= (fuel-required s9 s1) 16)
  (street-linked s9 s4) (= (fuel-required s9 s4) 10)
  (street-linked s9 s5) (= (fuel-required s9 s5) 8)
  (street-linked s9 s6) (= (fuel-required s9 s6) 3)
  (street-linked s9 s7) (= (fuel-required s9 s7) 7)
  (street-linked s9 s8) (= (fuel-required s9 s8) 9)

  (street-linked s10 s1) (= (fuel-required s10 s1) 5)
  (street-linked s10 s4) (= (fuel-required s10 s4) 6)
  (street-linked s10 s6) (= (fuel-required s10 s6) 12)
  (street-linked s10 s7) (= (fuel-required s10 s7) 6)

  (fuelPump_Location fp1 s7)
  (fuelPump_Location fp2 s10)

  (at-vehicle motorbike s8)
  (= (fuel_level motorbike) 30)
  (= (fuel_used motorbike) 0)
  (= (fuel_wasted motorbike) 2)

  (at-vehicle car s1)
  (= (fuel_level car) 30)
  (= (fuel_used car) 0)
  (= (fuel_wasted car) 5)

  (at-pizza p1 s4)
  (at-pizza p2 s4)
  (at-pizza p3 s4)
  (at-pizza p4 s4)
  (at-pizza p5 s4)
  (at-pizza p6 s4)
  (at-pizza p7 s4)
  (at-pizza p8 s4)

  (address p1 s2)
  (address p2 s6)
  (address p3 s10)
  (address p4 s1)
  (address p5 s3)
  (address p6 s8)
  (address p7 s5)
  (address p8 s9)

  )

  (:goal (and
              (pizza-delivered p1)
              (pizza-delivered p2)
              (pizza-delivered p3)
              (pizza-delivered p4)
              (pizza-delivered p5)
              (pizza-delivered p6)
              (pizza-delivered p7)
              (pizza-delivered p8)))

  (:metric minimize (fuel_used car)))
