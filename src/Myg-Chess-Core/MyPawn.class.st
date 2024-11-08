Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

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
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self isWhite
		   ifTrue: [
			   isFirstMove
				   ifFalse: [ { square up } ]
				   ifTrue: [
					   {
						   square up.
						   self moveTwoUp } ] ]
		   ifFalse: [
			   isFirstMove
				   ifFalse: [ { square down } ]
				   ifTrue: [
					   {
						   square down.
						   square down down } ] ]) select: [ :s |
		  s notNil and: (isFirstMove
				   ifFalse: [ s hasPiece not ]
				   ifTrue: [true])]
]
