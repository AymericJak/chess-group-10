Class {
	#name : 'MyBlackBishop',
	#superclass : 'MyBishop',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackBishop >> renderPieceOn: aSquare [

	^ aSquare renderBlackBishop
]
