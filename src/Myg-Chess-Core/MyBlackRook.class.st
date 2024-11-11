Class {
	#name : 'MyBlackRook',
	#superclass : 'MyRook',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackRook >> renderPieceOn: aSquare [

	^ aSquare renderBlackRook
]
