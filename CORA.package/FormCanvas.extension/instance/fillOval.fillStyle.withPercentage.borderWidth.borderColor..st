*CORA
fillOval: aRectangle fillStyle: aFillStyle withPercentage: aFloat borderWidth: bw borderColor: bc
	"Fill the given oval."

	(aFillStyle isBitmapFill and:[aFillStyle isKindOf: InfiniteForm]) ifTrue:[
		^self fillOval: aRectangle color: aFillStyle borderWidth: bw borderColor: bc].
	(aFillStyle isSolidFill) ifTrue:[
		^self fillOval: aRectangle withPercentage: aFloat color: aFillStyle asColor borderWidth: bw borderColor: bc].
	"Use a BalloonCanvas instead"
	self balloonFillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc