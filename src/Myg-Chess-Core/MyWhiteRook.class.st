Class {
	#name : 'MyWhiteRook',
	#superclass : 'MyRook',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhiteRook >> renderPieceOn: aSquare [

	^ aSquare renderWhiteRook
]
