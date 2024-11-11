Class {
	#name : 'MyWhiteKing',
	#superclass : 'MyKing',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhiteKing >> renderPieceOn: aSquare [

	^ aSquare renderWhiteKing
]
