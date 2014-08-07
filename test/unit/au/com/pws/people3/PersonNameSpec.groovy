package au.com.pws.people3

import grails.test.mixin.TestFor
import spock.lang.Specification
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(PersonName)
class PersonNameSpec extends Specification {

	def setup() {
	}

	def cleanup() {
	}

	void "personName is saved"() {
		when:
		def personName = new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Lewis" ).save()
		then:
		assert personName.validate()
		assert personName.id
	}

	void "personName displays"(){
		when:
		def personName = new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Lewis"
				, firstName: "Meriweather", honorifics: "OBE", middleNames: "G J", titles: "Captain").save()
		def shortName = new PersonName(typeOfName: TypeOfName.PRIMARY, lastName:"Banawurun", culture: Culture.ABORIGINAL).save()
		then:
		assert personName.displayName().equalsIgnoreCase("Captain Meriweather G J Lewis OBE")
		assert shortName.displayName().equalsIgnoreCase("Banawurun")
	}

	void "personName displays in reverse order"(){
		when:
		def personName = new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Lewis"
				, firstName: "Meriweather", honorifics: "OBE", middleNames: "G J", titles: "Captain").save()
		def shortName = new PersonName(typeOfName: TypeOfName.PRIMARY, lastName:"Banawurun", culture: Culture.ABORIGINAL).save()
		then:
		assert personName.displayNameReversed().equalsIgnoreCase("Lewis, Meriweather G J, Captain, OBE")
		assert shortName.displayNameReversed().equalsIgnoreCase("Banawurun")

	}
}
