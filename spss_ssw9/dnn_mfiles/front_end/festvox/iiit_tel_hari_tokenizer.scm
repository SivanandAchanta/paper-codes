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
;;; Tokenizer for tel
;;;
;;;  To share this among voices you need to promote this file to
;;;  to say festival/lib/iiit_tel/ so others can use it.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Load any other required files

;; Punctuation for the particular language
(set! iiit_tel_hari::token.punctuation "\"'`.,:;!?(){}[]")
(set! iiit_tel_hari::token.prepunctuation "\"'`({[")
(set! iiit_tel_hari::token.whitespace " \t\n\r")
(set! iiit_tel_hari::token.singlecharsymbols "")

;;; Voice/tel token_to_word rules 
(define (iiit_tel_hari::token_to_words token name)
  "(iiit_tel_hari::token_to_words token name)
Specific token to word rules for the voice iiit_tel_hari.  Returns a list
of words that expand given token with name."
  (cond
   ((string-matches name "[1-9][0-9]+")
    (iiit_tel::number token name))
   (t ;; when no specific rules apply do the general ones
    (list name))))

(define (iiit_tel::number token name)
  "(iiit_tel::number token name)
Return list of words that pronounce this number in tel."

  (error "iiit_tel::number to be written\n")

)

(define (iiit_tel_hari::select_tokenizer)
  "(iiit_tel_hari::select_tokenizer)
Set up tokenizer for tel."
  (Parameter.set 'Language 'iiit_tel)
  (set! token.punctuation iiit_tel_hari::token.punctuation)
  (set! token.prepunctuation iiit_tel_hari::token.prepunctuation)
  (set! token.whitespace iiit_tel_hari::token.whitespace)
  (set! token.singlecharsymbols iiit_tel_hari::token.singlecharsymbols)

  (set! token_to_words iiit_tel_hari::token_to_words)
)

(define (iiit_tel_hari::reset_tokenizer)
  "(iiit_tel_hari::reset_tokenizer)
Reset any globals modified for this voice.  Called by 
(iiit_tel_hari::voice_reset)."
  ;; None

  t
)

(provide 'iiit_tel_hari_tokenizer)
