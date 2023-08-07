replaceHead::[a]->a->[a]
replaceHead [] y = y:[]
replaceHead xs y = y:tail xs
