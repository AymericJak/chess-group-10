Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhitePawn >> renderPieceOn: aSquare [

	^ aSquare renderWhitePawn
]

{ #category : 'rendering' }
MyWhitePawn >> targetSquaresLegal: aBoolean [

	^ (isFirstMove
		   ifFalse: [ { square up } ]
		   ifTrue: [
			   {
				   square up.
				   square up up } ]) select: [ :s |
		  s notNil and: s hasPiece not ]
]
