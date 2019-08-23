mods.jei.JEI.removeAndHide(<modularmachinery:itemmodularium>);

recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing> * 4, [
	[null, <ore:plateCoremetal>, null],
	[<ore:plateCoremetal>, <ore:stonePolished>, <ore:plateCoremetal>],
	[null, <ore:plateCoremetal>, null]
]);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
	[<ore:gearStone>, <ore:blockGlass>, <ore:gearStone>],
	[<ore:blockGlass>, <modularmachinery:blockcasing>, <ore:blockGlass>],
	[<ore:gearStone>, <ore:blockGlass>, <ore:gearStone>]
]);

recipes.remove(<modularmachinery:blockinputbus:0>);
recipes.addShaped(<modularmachinery:blockinputbus:0>, [
	[<modularmachinery:blockcasing>],
	[<extrautils2:minichest>]
]);

// item buses go to 6, fluid hatches go to 7, energy hatches to go 7

recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [
	[<modularmachinery:blockinputbus:0>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:0>]
]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [
	[<modularmachinery:blockinputbus:1>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:1>]
]);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [
	[<modularmachinery:blockinputbus:2>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:2>]
]);
recipes.addShaped(<modularmachinery:blockinputbus:4>, [
	[<modularmachinery:blockinputbus:3>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:3>]
]);
recipes.addShaped(<modularmachinery:blockinputbus:5>, [
	[<modularmachinery:blockinputbus:4>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:4>]
]);
recipes.addShaped(<modularmachinery:blockinputbus:6>, [
	[<modularmachinery:blockinputbus:5>, <ore:plateCoremetal>, <modularmachinery:blockinputbus:5>]
]);

recipes.remove(<modularmachinery:blockoutputbus:0>);
recipes.addShaped(<modularmachinery:blockoutputbus:0>, [
	[<extrautils2:minichest>],
	[<modularmachinery:blockcasing>]
]);

recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [
	[<modularmachinery:blockoutputbus:0>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:0>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [
	[<modularmachinery:blockoutputbus:1>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:1>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [
	[<modularmachinery:blockoutputbus:2>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:2>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [
	[<modularmachinery:blockoutputbus:3>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:3>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [
	[<modularmachinery:blockoutputbus:4>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:4>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [
	[<modularmachinery:blockoutputbus:5>, <ore:plateCoremetal>, <modularmachinery:blockoutputbus:5>]
]);

recipes.remove(<modularmachinery:blockfluidinputhatch:0>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:0>, [
	[<modularmachinery:blockcasing>],
	[<minecraft:bucket>]
]);

recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [
	[<modularmachinery:blockfluidinputhatch:0>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:0>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [
	[<modularmachinery:blockfluidinputhatch:1>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:1>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [
	[<modularmachinery:blockfluidinputhatch:2>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:2>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [
	[<modularmachinery:blockfluidinputhatch:3>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:3>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>, [
	[<modularmachinery:blockfluidinputhatch:4>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:4>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>, [
	[<modularmachinery:blockfluidinputhatch:5>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:5>]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>, [
	[<modularmachinery:blockfluidinputhatch:6>, <ore:plateCoremetal>, <modularmachinery:blockfluidinputhatch:6>]
]);

recipes.remove(<modularmachinery:blockfluidoutputhatch:0>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:0>, [
	[<minecraft:bucket>],
	[<modularmachinery:blockcasing>]
]);

recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [
	[<modularmachinery:blockfluidoutputhatch:0>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:0>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [
	[<modularmachinery:blockfluidoutputhatch:1>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:1>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [
	[<modularmachinery:blockfluidoutputhatch:2>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:2>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [
	[<modularmachinery:blockfluidoutputhatch:3>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:3>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>, [
	[<modularmachinery:blockfluidoutputhatch:4>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:4>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>, [
	[<modularmachinery:blockfluidoutputhatch:5>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:5>]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>, [
	[<modularmachinery:blockfluidoutputhatch:6>, <ore:plateCoremetal>, <modularmachinery:blockfluidoutputhatch:6>]
]);