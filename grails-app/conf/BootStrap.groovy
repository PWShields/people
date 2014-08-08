import au.com.pws.people3.Culture
import au.com.pws.people3.PersonName
import au.com.pws.people3.TypeOfName

class BootStrap {

    def init = { servletContext ->
	 if(!PersonName.count()){
		  new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Lewis", firstName: "Meriweather", titles: "Captain" ).save(failOnError: true)
		  new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Tuchman" ,firstName: "Barbera",middleNames: "W").save(failOnError: true)
	 }
    }
    def destroy = {
    }
}
