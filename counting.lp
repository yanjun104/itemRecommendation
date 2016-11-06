#include 'category/item.lp'.
#include 'category/kitchen.lp'.
#include 'category/electronics.lp'.
#include 'category/applicance.lp'.
#include 'category/transportation.lp'.
#include 'category/cleaning.lp'.
#include 'category/office.lp'.
#include 'category/instruments.lp'.

_recommendOffice(Customer,Item):-_hasBought(Customer,Item),_office(Item).
_recommendKitchen(Customer,Item):-_hasBought(Customer,Item),_kitchen(Item).
_recommendElectronics(Customer,Item):-_hasBought(Customer,Item),_electronics(Item).
_recommendApplicance(Customer,Item):-_hasBought(Customer,Item),_applicance(Item).
_recommendTransportation(Customer,Item):-_hasBought(Customer,Item),_transportation(Item).
_recommendCleaning(Customer,Item):-_hasBought(Customer,Item),_cleaning(Item).
_recommendInstruments(Customer,Item):-_hasBought(Customer,Item),_instruments(Item).

_recommend(Customer):-_recommendOffice(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
													
_recommend(Customer):-_recommendKitchen(Customer,Item),
													not _recommendOffice(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
_recommend(Customer):-_recommendElectronics(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendOffice(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
_recommend(Customer):-_recommendApplicance(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendOffice(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
_recommend(Customer):-_recommendTransportation(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendOffice(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
_recommend(Customer):-_recommendCleaning(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendOffice(Customer,Item),
													not _recommendInstruments(Customer,Item),
													_hasViewed(Custormer,Item).
													
_recommend(Customer):-_recommendInstruments(Customer,Item),
													not _recommendKitchen(Customer,Item),
													not _recommendElectronics(Customer,Item),
													not _recommendApplicance(Customer,Item),
													not _recommendTransportation(Customer,Item),
													not _recommendCleaning(Customer,Item),
													not _recommendOffice(Customer,Item),
													_hasViewed(Custormer,Item).
													