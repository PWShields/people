package au.com.pws.people3



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonNameController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PersonName.list(params), model:[personNameInstanceCount: PersonName.count()]
    }

    def show(PersonName personNameInstance) {
        respond personNameInstance
    }

    def create() {
        respond new PersonName(params)
    }

    @Transactional
    def save(PersonName personNameInstance) {
        if (personNameInstance == null) {
            notFound()
            return
        }

        if (personNameInstance.hasErrors()) {
            respond personNameInstance.errors, view:'create'
            return
        }

        personNameInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personNameInstance.label', default: 'PersonName'), personNameInstance.id])
                redirect personNameInstance
            }
            '*' { respond personNameInstance, [status: CREATED] }
        }
    }

    def edit(PersonName personNameInstance) {
        respond personNameInstance
    }

    @Transactional
    def update(PersonName personNameInstance) {
        if (personNameInstance == null) {
            notFound()
            return
        }

        if (personNameInstance.hasErrors()) {
            respond personNameInstance.errors, view:'edit'
            return
        }

        personNameInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PersonName.label', default: 'PersonName'), personNameInstance.id])
                redirect personNameInstance
            }
            '*'{ respond personNameInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonName personNameInstance) {

        if (personNameInstance == null) {
            notFound()
            return
        }

        personNameInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PersonName.label', default: 'PersonName'), personNameInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personNameInstance.label', default: 'PersonName'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
