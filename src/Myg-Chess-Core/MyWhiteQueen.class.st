Class {
	#name : 'MyWhiteQueen',
	#superclass : 'MyQueen',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhiteQueen >> renderPieceOn: aSquare [

	^ aSquare renderWhiteQueen
]
