Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove',
		'enPassantFlag'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'api - text weight' }
MyPawn class >> black [

	^ MyBlackPawn new
]

{ #category : 'api - text weight' }
MyPawn class >> white [

	^ MyWhitePawn new
]

{ #category : 'accessing' }
MyPawn >> enPassantFlag [

^ enPassantFlag 
]

{ #category : 'accessing' }
MyPawn >> enPassantFlag: aBoolean [

	enPassantFlag := aBoolean 
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantLeftDownMove [

	| enemyPawn |
	enemyPawn := square left contents.
	^ (square down left notNil and: square left hasPiece) ifTrue: [
		  enemyPawn enPassantFlag ifTrue: [ square down left ] ]
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantLeftUpMove [

	| enemyPawn |
	enemyPawn := square left contents.
	^ (square up left notNil and: square left hasPiece) ifTrue: [
		  enemyPawn enPassantFlag ifTrue: [ square up left ] ]
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantRightDownMove [

	| enemyPawn |
	enemyPawn := square right contents.
	^ (square down right notNil and: square right hasPiece) ifTrue: [
		  enemyPawn enPassantFlag ifTrue: [ square down right ] ]
]

{ #category : 'as yet unclassified' }
MyPawn >> enPassantRightUpMove [

	| enemyPawn |
	enemyPawn := square right contents.
	^ (square up right notNil and: square right hasPiece) ifTrue: [
		  enemyPawn enPassantFlag ifTrue: [ square up right ] ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialization' }
MyPawn >> initialize [

	isFirstMove := true.
	enPassantFlag := false.
]

{ #category : 'accessing' }
MyPawn >> isFirstMove [ 

^ isFirstMove 
]

{ #category : 'accessing' }
MyPawn >> isFirstMove: aBoolean [

isFirstMove := aBoolean 
]

{ #category : 'path commands' }
MyPawn >> moveTo: aSquare [
	super moveTo: aSquare.
	self isFirstMove: false.
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ self subclassResponsibility 
]
