_customer(yanjun,male).
_hasBought(yanjun,pen).
_hasBought(yanjun,table).
_hasBought(yanjun,cellphone).
_hasBought(yanjun,paper).
_hasBought(yanjun,caculator).
_hasViewed(yanjun,caculator).
_hasViewed(yanjun,laptop).
_hasViewed(yanjun,cellphone).
_hasViewed(yanjun,washers).
_hasViewed(yanjun,dryers).
_hasViewed(yanjun,vehicles).
#include 'counting.lp'.
?-_recommend(yanjun).
