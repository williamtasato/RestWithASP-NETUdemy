﻿using Microsoft.AspNetCore.Mvc;
using RestWithASPNETUdemy.Business;
using RestWithASPNETUdemy.Data.VO;
using Tapioca.HATEOAS;
using System.Collections.Generic;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace RestWithASPNETUdemy.Controllers
{
    [ApiVersion("1.0")]
    [Route("api/[controller]/v{version:ApiVersion}")]
    [ApiController]
    public class PersonsController : ControllerBase
    {
        private PersonBusiness _personBusiness;

        public PersonsController(PersonBusiness personBusiness) {
            _personBusiness = personBusiness;

        }

        // GET api/values
        [HttpGet]
        [SwaggerResponse((200), Type = typeof(List<PersonVO>))]
        [SwaggerResponse((204))]
        [SwaggerResponse((400))]
        [SwaggerResponse((401))]
        [TypeFilter(typeof(HyperMediaFilter))]
        public IActionResult Get()
        {
            return Ok (_personBusiness.FindAll ());
        }

        // GET api/values/5
        [HttpGet("{id}")]
        [SwaggerResponse((200), Type = typeof(PersonVO))]
        [SwaggerResponse((204))]
        [SwaggerResponse((400))]
        [SwaggerResponse((401))]
        [TypeFilter(typeof(HyperMediaFilter))]
        public IActionResult Get(int id)
        {
            var person = _personBusiness.FindById(id);
            if (person == null) return NotFound();
            return Ok(person);
        }

        // POST api/values
        [HttpPost]
        [SwaggerResponse((201), Type = typeof(PersonVO))]
        [SwaggerResponse((400))]
        [SwaggerResponse((401))]
        [TypeFilter(typeof(HyperMediaFilter))]
        public IActionResult Post([FromBody] PersonVO personVO)
        {
            if (personVO == null) return BadRequest ();
            return new ObjectResult(_personBusiness.Create (personVO));
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        [SwaggerResponse((202), Type = typeof(PersonVO))]
        [SwaggerResponse((400))]
        [SwaggerResponse((401))]
        [TypeFilter(typeof(HyperMediaFilter))]
        public IActionResult Put([FromBody] PersonVO personVO)
        {
            if (personVO == null) return BadRequest();
            var updatePerson = _personBusiness.Update(personVO);
            if (updatePerson == null) return NoContent();
            return new ObjectResult(updatePerson);
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        [SwaggerResponse((204))]
        [SwaggerResponse((400))]
        [SwaggerResponse((401))]
        [TypeFilter(typeof(HyperMediaFilter))]
        public IActionResult Delete(int id)
        {
            _personBusiness.Delete(id);
            return NoContent();
        }
    }
}
