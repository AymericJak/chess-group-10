Class {
	#name : 'MyBlackKing',
	#superclass : 'MyKing',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackKing >> renderPieceOn: aSquare [

	^ aSquare renderBlackKing
]
