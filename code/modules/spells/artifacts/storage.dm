/obj/structure/closet/wizard
	name = "artifact closet"
	desc = "a special lead lined closet used to hold artifacts of immense power."
	closet_appearance = /decl/closet_appearance/alien

/obj/structure/closet/wizard/Initialize()
	. = ..()
	var/obj/structure/bigDelivery/package = new /obj/structure/bigDelivery(get_turf(src))
	package.wrapped = src
	package.examtext = "Imported straight from the Wizard Acadamy. Do not lose the contents or suffer a demerit."
	src.forceMove(package)
	package.update_icon()

/obj/structure/closet/wizard/armor
	name = "Mastercrafted Armor Set"
	desc = "An artefact suit of armor that allows you to cast spells while providing more protection against attacks and the void of space."

/obj/structure/closet/wizard/armor/WillContain()
	return list(
		/obj/item/clothing/shoes/sandal, //In case they've lost them.
		/obj/item/clothing/gloves/wizard, //To complete the outfit
		/obj/item/clothing/suit/space/void/wizard,
		/obj/item/clothing/head/helmet/space/void/wizard
	)

/obj/structure/closet/wizard/scrying
	name = "Scrying Orb"
	desc = "An incandescent orb of crackling energy, using it will allow you to ghost while alive, allowing you to reconnoiter with ease. In addition, buying it will permanently grant you x-ray vision."

/obj/structure/closet/wizard/scrying/WillContain()
	return list(
		/obj/item/scrying,
		/obj/item/contract/wizard/xray,
	)

/obj/structure/closet/wizard/souls
	name = "Soul Shard Belt"
	desc = "Soul Stone Shards are ancient tools capable of capturing and harnessing the spirits of the dead and dying. The spell Artificer allows you to create arcane machines for the captured souls to pilot. This also includes the spell Artificer, used to create the shells used in construct creation."

/obj/structure/closet/wizard/souls/WillContain()
	return list(
		/obj/item/contract/boon/wizard/artificer,
		/obj/item/storage/belt/soulstone/full,
	)
