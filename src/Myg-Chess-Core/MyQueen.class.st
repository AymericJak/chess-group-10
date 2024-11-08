Class {
	#name : 'MyQueen',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'api - text weight' }
MyQueen class >> black [

	^ MyBlackQueen new
]

{ #category : 'api - text weight' }
MyQueen class >> white [

	^ MyWhiteQueen new
]

{ #category : 'rendering' }
MyQueen >> id [

	^ 'Q'
]

{ #category : 'rendering' }
MyQueen >> renderPieceOn: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyQueen >> targetSquaresLegal: aBoolean [

	| likeABishop likeARook |
	likeABishop := (self upRightDiagonalLegal: aBoolean)
	               , (self upLeftDiagonalLegal: aBoolean)
	               , (self downRightDiagonalLegal: aBoolean)
	               , (self downLeftDiagonalLegal: aBoolean).
	likeARook := (self upFileLegal: aBoolean)
	             , (self downFileLegal: aBoolean)
	             , (self leftFileLegal: aBoolean)
	             , (self rightFileLegal: aBoolean).
	^ likeABishop , likeARook
]
