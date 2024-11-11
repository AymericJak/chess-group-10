Class {
	#name : 'MyBlackKnight',
	#superclass : 'MyKnight',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackKnight >> renderPieceOn: aSquare [

	^ aSquare renderBlackKnight
]
