Class {
	#name : 'MyWhiteKnight',
	#superclass : 'MyKnight',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhiteKnight >> renderPieceOn: aSquare [

	^ aSquare renderWhiteKnight
]
