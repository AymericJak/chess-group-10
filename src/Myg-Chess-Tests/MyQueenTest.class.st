Class {
	#name : 'MyQueenTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyQueenTest >> testId [

	self assert: MyQueen new id equals: 'Q'
]

{ #category : 'tests' }
MyQueenTest >> testRenderBlackQueenOnBlackSquare [

	self
		assert: (MyQueen black renderPieceOn: MyChessSquare black)
		equals: 'w'
]

{ #category : 'tests' }
MyQueenTest >> testRenderBlackQueenOnWhiteSquare [

	self
		assert: (MyQueen black renderPieceOn: MyChessSquare white)
		equals: 'W'
]

{ #category : 'tests' }
MyQueenTest >> testRenderWhiteQueenOnBlackSquare [

	self
		assert: (MyQueen white renderPieceOn: MyChessSquare black)
		equals: 'q'
]

{ #category : 'tests' }
MyQueenTest >> testRenderWhiteQueenOnWhiteSquare [

	self
		assert: (MyQueen white renderPieceOn: MyChessSquare white)
		equals: 'Q'
]
