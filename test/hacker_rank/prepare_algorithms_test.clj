(ns hacker-rank.prepare-algorithms-test
  (:require [clojure.test :refer :all]
            [hacker-rank.prepare-algorithms.grading-students :as grading-students]
            [hacker-rank.prepare-algorithms.apple-and-orange :as apple-and-orange]
            [hacker-rank.prepare-algorithms.number-line-jumps :as number-line-jumps]))

(deftest grading-students-test
  (testing "Outputs of grading students should be valid"
    (is (= [75 67 40 33] (grading-students/gradingStudents [73 67 38 33])))))

(deftest apple-and-orange-test
  (testing "Outputs of apple and orange should be valid"
    (is (= [1 2] (apple-and-orange/countApplesAndOranges 7 10 4 12 [2 3 -4] [3 -2 -4])))
    (is (= [1 1] (apple-and-orange/countApplesAndOranges 7 11 5 15 [-2 2 1] [5 -6])))))

(deftest number-line-jumps
  (testing "Outups of number line jumps should be valid"
    (is (= "YES" (number-line-jumps/kangaroo  0 3 4 2)))
     (is (= "NO" (number-line-jumps/kangaroo  0 2 5 3)))
     (is (= "NO" (number-line-jumps/kangaroo  21 6 47 3)))))