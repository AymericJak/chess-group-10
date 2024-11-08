Class {
	#name : 'MyWhiteBishop',
	#superclass : 'MyBishop',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhiteBishop >> renderPieceOn: aSquare [

	^ aSquare renderWhiteBishop
]
