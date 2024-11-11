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

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self isWhite
		   ifTrue: [
			   isFirstMove
				   ifFalse: [ { square up } ]
				   ifTrue: [
					   {
						   square up.
						   square up up } ] ]
		   ifFalse: [  isFirstMove
				   ifFalse: [ { square down } ]
				   ifTrue: [
					   {
						   square down.
						   square down down } ] ]) select: [ :s |
		  s notNil and: [ s hasPiece not or: [ s contents color ~= color ] ] ]
]
