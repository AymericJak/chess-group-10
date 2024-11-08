Class {
	#name : 'MyBlackChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyBlackChessSquare >> initialize [

	super initialize.
	color := Color black
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderBlackBishop [

	^ 'v'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderBlackKing [

	^ 'l'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderBlackKnight [

	^ 'm'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderBlackPawn [

	^ 'o'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderBlackQueen [

	^ 'w'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackRook [

	^ 't'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderWhiteBishop [

	^ 'b'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderWhiteKing [

	^ 'k'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderWhiteKnight [

	^ 'n'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderWhitePawn [

	^ 'p'
]

{ #category : 'initialization' }
MyBlackChessSquare >> renderWhiteQueen [

	^ 'q'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteRook [

	^ 'r'
]
