package au.com.pws.people3


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NamePartsController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond NameParts.list(params), model: [namePartsInstanceCount: NameParts.count()]
	}

	def show(NameParts namePartsInstance) {
		respond namePartsInstance
	}

	def create() {
		respond new NameParts(params)
	}

	@Transactional
	def save(NameParts namePartsInstance) {
		if (namePartsInstance == null) {
			notFound()
			return
		}

		if (namePartsInstance.hasErrors()) {
			respond namePartsInstance.errors, view: 'create'
			return
		}

		namePartsInstance.save flush: true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'namePartsInstance.label', default: 'NameParts'), namePartsInstance.id])
				redirect namePartsInstance
			}
			'*' { respond namePartsInstance, [status: CREATED] }
		}
	}

	def edit(NameParts namePartsInstance) {
		respond namePartsInstance
	}

	@Transactional
	def update(NameParts namePartsInstance) {
		if (namePartsInstance == null) {
			notFound()
			return
		}

		if (namePartsInstance.hasErrors()) {
			respond namePartsInstance.errors, view: 'edit'
			return
		}

		namePartsInstance.save flush: true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'NameParts.label', default: 'NameParts'), namePartsInstance.id])
				redirect namePartsInstance
			}
			'*' { respond namePartsInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(NameParts namePartsInstance) {

		if (namePartsInstance == null) {
			notFound()
			return
		}

		namePartsInstance.delete flush: true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'NameParts.label', default: 'NameParts'), namePartsInstance.id])
				redirect action: "index", method: "GET"
			}
			'*' { render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'namePartsInstance.label', default: 'NameParts'), params.id])
				redirect action: "index", method: "GET"
			}
			'*' { render status: NOT_FOUND }
		}
	}
}
