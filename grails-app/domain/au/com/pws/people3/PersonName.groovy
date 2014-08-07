package au.com.pws.people3
/**
 * We have used field names which are most meaningful for anglo based naming conventions. However we can cater for
 * other cultural naming conventions by following this reasoning and using the culture field;
 * lastName - refers to the family or surname, that is the social group
 * firstName - refers to the first or christian name, that is the specific name for this member of the group
 * titles - refers to honorifics which generally prefix a name
 * honorifics - refers to honorifics which suffix a name, such as awards
 * nickName - other name used instead of the person's full name
 * middleNames - refers to middle names, name parts other than the above
 *
 * If a person has only 1 name then that will be put into the lastName field, this field is compulsory
 *
 * Determining display order,is based on CULTURE which then determines how the fields are ordered
 * A full name can generally be displayed in two orders:
 * FIRST_FIRST
 * If Culture is ENGLISH then this order is: title first name middle name surname honorifics
 * or LAST_FIRST
 * If Culture is ENGLISH then this order is: surname, first name middle name, title, honorifics
 *
 * If there is no culture value assume it is ENGLISH
 *
 */


class PersonName {

	static constraints = {
		firstName nullable: true, blank: true
		middleNames nullable: true, blank: true
		lastName blank:false
		titles nullable: true, blank: true
		honorifics nullable: true, blank: true
		culture nullable:false, blank:false
		contributor nullable:true, blank:true
		nickName nullable: true, blank: true
	}
	String lastName
	String firstName
	String middleNames
	String titles
	String honorifics
	String nickName
	TypeOfName typeOfName
	Culture culture
	String contributor //who gave us this name, useful for admin purposes

	/**
	 * Use this to display the name informally, usually the way it would be spoken if you were introducing someone
	 * @return  name as it would be spoken, title and first name first
	 */
	String displayName(){
		toString()
	}
	/**
	 * Use this to display the name more formally or alphabetically, normally reversed is lastName first
	 * @return   a formal representation of the full name, usually surname first
	 */
	String displayNameReversed(){
		String reversedName = ""
//		(last name, first name middle name, title, honorifics)
			if(lastName){
				reversedName += lastName
			}
			if(firstName){
				reversedName += ", "+firstName
				if(middleNames){
					reversedName += " "+display(middleNames)
				}
			}
			if(titles){
				reversedName += ", "+display(titles)
			}
			if (honorifics){
				reversedName += ", "+display(honorifics)
			}
		reversedName
	}

	String toString(){
		String fullName = ""
//		(title first name middle name surname honorifics)
			if (titles){
				fullName+= display(titles) }
			if (firstName){
				if(fullName.size()>0){fullName+=" "}
				fullName +=firstName}
			if (middleNames){
				if(fullName.size()>0){fullName+=" "}
				fullName+=display(middleNames)
			}
			if (lastName){
				if(fullName.size()>0){fullName+=" "}
				fullName+=lastName}
			if (honorifics){
				if(fullName.size()>0){fullName+=" "}
				fullName+=display(honorifics)
			}
		fullName
	}

	private String display(String namePart){
		namePart
	}

	private String display(List list){
		String displayString =""
		for(String item: list){
			if (displayString.size()>0){displayString+=" "}
			displayString+=item
		}
		displayString
	}
}
