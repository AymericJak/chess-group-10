Class {
	#name : 'MyBlackQueen',
	#superclass : 'MyQueen',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackQueen >> renderPieceOn: aSquare [

	^ aSquare renderBlackQueen
]
