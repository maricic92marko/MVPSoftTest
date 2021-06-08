using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MVPSoftApp.Data;
using MVPSoftApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace MVPSoftApp.Controllers
{
    public class AgreementsController : Controller
    {
        private readonly ILogger<AgreementsController> _logger;
        public readonly ApplicationDbContext _db;
        /// <summary>
        /// Constructor for initialisating db context and sign in manager
        /// </summary>
        /// <param name="logger">Paramether for initialisating sign in manager</param>
        /// <param name="db">Paramether for initialisating db context</param>
        public AgreementsController(ILogger<AgreementsController> logger, ApplicationDbContext db)
        {
            _logger = logger;
            _db = db;
        }
        /// <summary>
        /// Method for rendering Agreements page
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult AgreementsView()
        {
            AddAgreementsViewModel Data = new AddAgreementsViewModel
            {
                ProductGroupList = _db.ProductGroup.ToList(),
                ProductList = _db.Product.ToList(),
                UsersList = _db.User.ToList()
            };
            return View("~/Views/Agreements/Agreements.cshtml", Data);
        }

        /// <summary>
        /// Method for geting agreements data
        /// </summary>
        /// <param name="ProductNumber">represents parameter for filtering by product number</param>
        /// <param name="Id"> Represents agreement id for filtering by agreements</param>
        /// <returns></returns>
       // url: "/Agreements/GetAgreements?UserId=" + schUsersId+"&GroupId=" + schGroupId+"&ProductId=" + schProductId + "&AgreementId=" + Id,

        [HttpGet]
        public ActionResult GetAgreements(string UserId,int GroupId, int ProductId, int AgreementId)
        {
            try
            {
                var AgreementList = (from ag in _db.Agreement
                                     join p in _db.Product on ag.ProductId equals p.Id
                                     join pg in _db.ProductGroup on ag.ProductGroupId equals pg.Id
                                     join u in _db.User on ag.UserId equals u.Id
                                     where (p.Id == ProductId || ProductId < 1) &&
                                     (ag.Id == AgreementId || AgreementId < 1) &&
                                     (u.Id == UserId || string.IsNullOrEmpty(UserId)) &&
                                     (pg.Id == GroupId || GroupId < 1)
                                     select new
                                     {
                                         Id = ag.Id,
                                         Username = u.UserName,
                                         GroupCode = pg.GroupCode,
                                         ProductNumber = p.ProductNumber,
                                         EffectiveDate =  ag.EffectiveDate.ToString("yyyy-MM-dd"),
                                         ExpirationDate = ag.ExpirationDate.ToString("yyyy-MM-dd"),
                                         ProductId = p.Id,
                                         ProductGroupId = pg.Id,
                                         NewPrice = ag.NewPrice,
                                     }).ToList();
                return Json(AgreementList);
            }
            catch (global::System.Exception)
            {

                throw new Exception("Can't get agreements.");

            }
        }

        /// <summary>
        /// Method for deleting agreement by id
        /// </summary>
        /// <param name="Id"> Id of agreement for delition</param>
        [HttpDelete]
        public void DeleteAgreement(int Id)
        {
            try
            {
                Agreement RemoveAgreement = new Agreement() { Id = Id};
                _db.Agreement.Remove(RemoveAgreement);
                _db.SaveChanges();

            }
            catch (global::System.Exception)
            {

                throw new Exception("Agreement is not deleted.");
            }
        }

        /// <summary>
        /// Method for deleting agreement by id
        /// </summary>
        /// <param name="Id"> Id of agreement for delition</param>
        [HttpPost]
        public ActionResult EditAgreement()
        {
            try
            {
                var oop = Request.Form["agreementId"];
                int AgreementId = int.Parse(Request.Form["agreementId"]);
                Agreement EditAgreement = _db.Agreement.Where(x => x.Id == AgreementId).FirstOrDefault();
                EditAgreement.EffectiveDate = DateTime.Parse(Request.Form["EffectiveDate"]);
                EditAgreement.ProductGroupId = int.Parse(Request.Form["ProductGroup"]);
                EditAgreement.ProductId = int.Parse(Request.Form["Product"]);
                EditAgreement.NewPrice = decimal.Parse(Request.Form["NewPrice"]);
                EditAgreement.ExpirationDate = DateTime.Parse(Request.Form["ExpirationDate"]);
                Product SelectedProduct = _db.Product.Where(x => x.Id == EditAgreement.ProductId).FirstOrDefault();
                string userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                EditAgreement.UserId = userId;
                EditAgreement.ProductPrice = SelectedProduct.Price;
                _db.Agreement.Update(EditAgreement);
                _db.SaveChanges();
                return RedirectToAction("AgreementsView", "Agreements");

            }
            catch (global::System.Exception)
            {

                throw new Exception("Agreement is not deleted.");
            }
        }

        /// <summary>
        /// Method for ading agreement
        /// </summary>
        [HttpPost]
        public ActionResult AddAgreement()
        {
            try
            {
                Agreement NewAgreement = new Agreement();
                NewAgreement.EffectiveDate = DateTime.Parse(Request.Form["EffectiveDate"]);
                NewAgreement.ProductGroupId = int.Parse(Request.Form["ProductGroup"]);
                NewAgreement.ProductId = int.Parse(Request.Form["Product"]);
                NewAgreement.NewPrice = decimal.Parse(Request.Form["NewPrice"]);
                NewAgreement.ExpirationDate = DateTime.Parse(Request.Form["ExpirationDate"]);
                Product SelectedProduct = _db.Product.Where(x => x.Id == NewAgreement.ProductId).FirstOrDefault();
                string userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                NewAgreement.UserId = userId;
                NewAgreement.ProductPrice = SelectedProduct.Price;
                _db.Agreement.Add(NewAgreement);
                _db.SaveChanges();
               
                 return RedirectToAction("AgreementsView", "Agreements");
                

            }
            catch (global::System.Exception)
            {

                throw new Exception("Agreement is not added.");
            }
        }
    }
}
