package au.com.pws.people3

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Person)
@Mock(PersonName)
class PersonSpec extends Specification {

	def setup() {
	}

	def cleanup() {
	}

	void "person is saved"() {
		given:
			def personName = new PersonName( typeOfName: TypeOfName.PRIMARY,culture: Culture.ENGLISH,lastName: "Lewis" ).save()
		when:
			def person = new Person(personName: personName).save()
		then:
			assert person.validate()
			assert person.id
	}
}
