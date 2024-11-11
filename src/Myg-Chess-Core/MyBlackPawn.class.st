Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyBlackPawn >> targetSquaresLegal: aBoolean [

	^ (isFirstMove
		   ifFalse: [ { square down } ]
		   ifTrue: [
			   {
				   square down.
				   self moveTwoDown } ]) select: [ :s |
		  s notNil and: s hasPiece not ]
]
