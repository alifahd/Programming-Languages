#lang racket
;@author: Ali Fahd
;@date: Jan. 23, 2019
(require 2htdp/image)
;Part 1 - creating a red rectangle with dimensions 100 by 100
(define a-red-square(rectangle 100 100 "solid" "red"))
;Part 2 - creating a blue circle with radius 50
(define a-blue-circle(circle 50 "solid" "blue"))
;Part 3 - creating a red square outline and a blue circle outline
(define outlined-square(rectangle 100 100 "outline" "red"))
(define outlined-circle(circle 50 "outline" "blue"))
;Part 4 - beside, above, overlay
(define row-of-squares (beside a-red-square
                               (rectangle 100 100 "solid" "blue")
                               (rectangle 100 100 "solid" "green")))
(define column-of-squares (above a-red-square
                               (rectangle 100 100 "solid" "blue")
                               (rectangle 100 100 "solid" "green")))
(define nested-squares (overlay (rectangle 25 25 "solid" "black")
                                (rectangle 50 50 "solid" "green")
                                (rectangle 75 75 "solid" "blue")
                                a-red-square))
;Part 5 - rotate
(define rotated-square(rotate 45 nested-squares))
;Part 6 - Canada Flag
(define flag(bitmap/url "https://cdn.countryflags.com/thumbs/canada/flag-800.png"))