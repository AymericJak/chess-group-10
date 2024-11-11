"
# Example
```
MyFENParser parse: 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1'.
```
"
Class {
	#name : 'MyFENParser',
	#superclass : 'Object',
	#instVars : [
		'stream',
		'pieces'
	],
	#category : 'Myg-Chess-Importers',
	#package : 'Myg-Chess-Importers'
}

{ #category : 'parsing' }
MyFENParser class >> forString: aString [

	^ self new
		  stream: aString readStream;
		  yourself
]

{ #category : 'parsing' }
MyFENParser class >> parse: aString [

	^ (self forString: aString readStream) parse
]

{ #category : 'parsing' }
MyFENParser >> expectString: expectedString [

	| parsedToken |
	parsedToken := stream next: expectedString size.
	self assert: parsedToken = expectedString
]

{ #category : 'initialization' }
MyFENParser >> initialize [

	super initialize.
	pieces := Dictionary new.
	pieces at: $P put: 'White WhitePawn'.
	pieces at: $N put: 'White WhiteKnight'.
	pieces at: $B put: 'White WhiteBishop'.
	pieces at: $R put: 'White WhiteRook'.
	pieces at: $Q put: 'White WhiteQueen'.
	pieces at: $K put: 'White WhiteKing'.

	pieces at: $p put: 'Black BlackPawn'.
	pieces at: $n put: 'Black BlackKnight'.
	pieces at: $b put: 'Black BlackBishop'.
	pieces at: $r put: 'Black BlackRook'.
	pieces at: $q put: 'Black BlackQueen'.
	pieces at: $k put: 'Black BlackKing'
]

{ #category : 'parsing' }
MyFENParser >> parse [

	| game |
	game := MyFENGame new.

	game ranks: self parseRanks.
	self expectString: ' '.
	game sideToMove: self parseSideToMove.
	self expectString: ' '.
	game castlingAbility: self parseCastlingAbility.
	self expectString: ' '.
	game enPassantTargetSquare: self parseEnPassant.
	self expectString: ' '.
	game halfMoveClock: self parseNumber.
	self expectString: ' '.
	game moveCount: self parseNumber.

	^ game
]

{ #category : 'parsing' }
MyFENParser >> parseAnyOf: options [

	| token |
	token := stream next.
	(options includes: token) ifFalse: [
		self error: 'Expected one of ' , options asString ].
	^ token
]

{ #category : 'parsing' }
MyFENParser >> parseCastlingAbility [

	self peek = $- ifTrue: [ ^ 'NO CASTLING' ].

	^ (1 to: 4) collect: [ :i | self parseAnyOf: #( $k $K $q $Q ) ]
]

{ #category : 'parsing' }
MyFENParser >> parseEnPassant [

	self peek = $- ifTrue: [ 
		self parseAnyOf: #( $- ).
		^ 'NO ENPASSANT' ].
	^ self parseSquare
]

{ #category : 'parsing' }
MyFENParser >> parseNumber [

	| number |
	number := (stream upTo: Character space) asNumber.
	stream atEnd ifFalse: [ stream position: stream position - 1 ].
	^ number
]

{ #category : 'parsing' }
MyFENParser >> parsePiece [
	
	| identifier |
	identifier := stream next.
	^ pieces at: identifier
]

{ #category : 'parsing' }
MyFENParser >> parseRank [

	| rank |
	self peek = $8 ifTrue: [
		stream next.
		^ (1 to: 8) collect: [ :i | 'empty' ] ].

	rank := OrderedCollection new.
	[ self peek notNil and: [ (#( $  $/ ) includes: self peek) not ] ]
		whileTrue: [
			rank add: (self peek isDigit
					 ifTrue: [ stream next ]
					 ifFalse: [ self parsePiece ]) ].
	^ rank
]

{ #category : 'parsing' }
MyFENParser >> parseRanks [

	| ranks |
	ranks := (1 to: 7)
		         collect: [ :i |
			         | rank |
			         rank := self parseRank.
			         self expectString: '/'.
			         rank ]
		         as: OrderedCollection.
	ranks add: self parseRank.
	^ ranks
]

{ #category : 'parsing' }
MyFENParser >> parseSideToMove [

	| sideToMove |
	sideToMove := stream next.
	sideToMove = $b ifTrue: [ ^ 'Black'].
	sideToMove = $w ifTrue: [ ^ 'White'].
	self error: 'Expected side to move'
]

{ #category : 'parsing' }
MyFENParser >> parseSquare [

	^ {
		  (self parseAnyOf: ($a to: $h)).
		  (self parseAnyOf: (3 to: 6)) }
]

{ #category : 'parsing' }
MyFENParser >> peek [

	^ stream peek
]

{ #category : 'accessing' }
MyFENParser >> stream: aReadStream [ 
	stream := aReadStream
]
