Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove'
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
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialization' }
MyPawn >> initialize [ 

isFirstMove := true
]

{ #category : 'accessing' }
MyPawn >> isFirstMove [ 

^ isFirstMove 
]

{ #category : 'accessing' }
MyPawn >> isFirstMove: aBoolean [

isFirstMove := aBoolean 
]

{ #category : 'as yet unclassified' }
MyPawn >> moveTo: aSquare [

	super moveTo: aSquare.
	isFirstMove := false
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
MyPawn >> targetSquaresLegal: aBoolean [

	self subclassResponsibility 
]
