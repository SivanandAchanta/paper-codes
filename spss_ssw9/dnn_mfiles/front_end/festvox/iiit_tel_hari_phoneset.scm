;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                     ;;;
;;;                     Carnegie Mellon University                      ;;;
;;;                  and Alan W Black and Kevin Lenzo                   ;;;
;;;                      Copyright (c) 1998-2000                        ;;;
;;;                        All Rights Reserved.                         ;;;
;;;                                                                     ;;;
;;; Permission is hereby granted, free of charge, to use and distribute ;;;
;;; this software and its documentation without restriction, including  ;;;
;;; without limitation the rights to use, copy, modify, merge, publish, ;;;
;;; distribute, sublicense, and/or sell copies of this work, and to     ;;;
;;; permit persons to whom this work is furnished to do so, subject to  ;;;
;;; the following conditions:                                           ;;;
;;;  1. The code must retain the above copyright notice, this list of   ;;;
;;;     conditions and the following disclaimer.                        ;;;
;;;  2. Any modifications must be clearly marked as such.               ;;;
;;;  3. Original authors' names are not deleted.                        ;;;
;;;  4. The authors' names are not used to endorse or promote products  ;;;
;;;     derived from this software without specific prior written       ;;;
;;;     permission.                                                     ;;;
;;;                                                                     ;;;
;;; CARNEGIE MELLON UNIVERSITY AND THE CONTRIBUTORS TO THIS WORK        ;;;
;;; DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING     ;;;
;;; ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT  ;;;
;;; SHALL CARNEGIE MELLON UNIVERSITY NOR THE CONTRIBUTORS BE LIABLE     ;;;
;;; FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES   ;;;
;;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN  ;;;
;;; AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,         ;;;
;;; ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF      ;;;
;;; THIS SOFTWARE.                                                      ;;;
;;;                                                                     ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Phonset for iiit_tel
;;;

;;;  Feeel free to add new feature values, or new features to this
;;;  list to make it more appropriate to your language

;; This is where it'll fall over if you haven't defined a 
;; a phoneset yet, if you have, delete this, if you haven't
;; define one then delete this error message
;(error "You have not yet defined a phoneset for tel (and others things ?)\n            Define it in festvox/iiit_tel_hari_phoneset.scm\n")

(defPhoneSet
  iiit_tel
  ;;;  Phone Features
  (;; vowel or consonant
   (vc + -)  
   ;; vowel length: short long dipthong schwa
   (vlng s l d a 0)
   ;; vowel height: high mid low
   (vheight 1 2 3 0 -)
   ;; vowel frontness: front mid back
   (vfront 1 2 3 0 -)
   ;; lip rounding
   (vrnd + - 0)
   ;; consonant type: stop fricative affricative nasal liquid
   (ctype s f a n l r 0)
   ;; place of articulation: labial alveolar palatal labio-dental
   ;;                         dental velar
   (cplace l a p b d v g 0)
   ;; consonant voicing
   (cvox + - 0)
   )
  (
(SIL    -       0       0       0       -               0       0       -)
(a       +       s       2       2       -       0       0       0)
(aa      +       l       3       2       -       0       0       0)
(i       +       s       1       1       -       0       0       0)
(ii      +       l       1       1       -       0       0       0)
(u       +       s       1       3       +       0       0       0)
(uu      +       l       1       3       +       0       0       0)
(q      -       0       0       0       0       n       d       +)
(rq      +       s       1       3       +       0       0       0)
(e       +       s       2       1       -       0       0       0)
(ee      +       l       2       1       -       0       0       0)
(ai      +       d       2       1       -       0       0       0)
(o       +       s       2       3       +       0       0       0)
(oo      +       l       2       3       +       0       0       0)
(au      +       d       1       3       +       0       0       0)
(k       -       0       0       0       0       s       v       -)
(kh      -       0       0       0       0       s       v       -)
(g       -       0       0       0       0       s       v       +)
(gh      -       0       0       0       0       s       v       +)
(ng     -       0       0       0       0       n       v       +)
(c      -       0       0       0       0       a       p       -)
(ch     -       0       0       0       0       a       p       -)
(j       -       0       0       0       0       a       p       +)
(jh      -       0       0       0       0       a       p       +)
(nj     -       0       0       0       0       n       p       +)
(t       -       0       0       0       0       s       d       -)
(th      -       0       0       0       0       s       d       -)
(d       -       0       0       0       0       s       d       +)
(dh      -       0       0       0       0       s       d       +)
(n       -       0       0       0       0       n       d       +)
(tx      -       0       0       0       0       s       a       -)
(txh     -       0       0       0       0       s       a       -)
(dx      -       0       0       0       0       s       a       +)
(dxh     -       0       0       0       0       s       a       +)
(nx     -       0       0       0       0       n       a       +)
(p       -       0       0       0       0       s       l       -)
(ph      -       0       0       0       0       s       l       -)
(b       -       0       0       0       0       s       l       +)
(bh      -       0       0       0       0       s       l       +)
(m       -       0       0       0       0       n       l       +)
(y       -       0       0       0       0       l       v       +)
(r       -       0       0       0       0       l       p       +)
(l       -       0       0       0       0       l       d       +)
(lx      -       0       0       0       0       l       p       +)
(w       -       0       0       0       0       l       d       +)
(sh      -       0       0       0       0       f       v       -)
(sx    -       0       0       0       0       f       p       +)
(ksx    -       0       0       0       0       f       p       +)
(s       -       0       0       0       0       f       d       -)
(h       -       0       0       0       0       f       v       -)
(rx      -       0       0       0       0       l       p       +)
(hq      -       0       0       0       0       n       d       +)
   ;; insert the phones here, see examples in 
   ;; festival/lib/*_phones.scm

  )
)

(PhoneSet.silences '(SIL))

(define (iiit_tel_hari::select_phoneset)
  "(iiit_tel_hari::select_phoneset)
Set up phone set for iiit_tel."
  (Parameter.set 'PhoneSet 'iiit_tel)
  (PhoneSet.select 'iiit_tel)
)

(define (iiit_tel_hari::reset_phoneset)
  "(iiit_tel_hari::reset_phoneset)
Reset phone set for iiit_tel."
  t
)

(provide 'iiit_tel_hari_phoneset)
