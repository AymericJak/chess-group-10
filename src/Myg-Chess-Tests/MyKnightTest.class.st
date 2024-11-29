Class {
	#name : 'MyKnightTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKnightTest >> testId [

	self assert: MyKnight new id equals: 'N'
]

{ #category : 'tests' }
MyKnightTest >> testRenderBlackKnightOnBlackSquare [

	self
		assert: (MyKnight black renderPieceOn: MyChessSquare black)
		equals: 'm'
]

{ #category : 'tests' }
MyKnightTest >> testRenderBlackKnightOnWhiteSquare [

	self
		assert: (MyKnight black renderPieceOn: MyChessSquare white)
		equals: 'M'
]

{ #category : 'tests' }
MyKnightTest >> testRenderWhiteKnightOnBlackSquare [

	self
		assert: (MyKnight white renderPieceOn: MyChessSquare black)
		equals: 'n'
]

{ #category : 'tests' }
MyKnightTest >> testRenderWhiteKnightOnWhiteSquare [

	self
		assert: (MyKnight white renderPieceOn: MyChessSquare white)
		equals: 'N'
]
