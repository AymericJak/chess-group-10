Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}


{ #category : 'rendering' }
MyWhitePawn >> renderPieceOn: aSquare [

	^ aSquare renderWhitePawn

{ #category : 'as yet unclassified' }
MyWhitePawn >> targetSquaresLegal: aBoolean [

	^ (isFirstMove
		   ifFalse: [ { square up } ]
		   ifTrue: [
			   {
				   square up.
				   self moveTwoUp } ]) select: [ :s |
		  s notNil and: s hasPiece not ]

]
