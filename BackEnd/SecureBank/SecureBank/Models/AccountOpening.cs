using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SecureBank.Models
{
    public class AccountOpening
    {
        public int CID { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string FatherName { get; set; }
        public string MobileNumber { get; set; }
        public string EmailID { get; set; }
        public long Aadharnumber { get; set; }
        public DateTime DOB { get; set; }
        public bool NetBankingOpted { get; set; }
        public bool DebitCardOpted { get; set; }
        public string Occupationtype { get; set; }
        public string SourceofIncome { get; set; }
        public double GrossannualIncome { get; set; }
        public string PAddressLine1 { get; set; }
        public string PAddressLine2 { get; set; }
        public string PLandmark { get; set; }
        public string PState { get; set; }
        public string PCity { get; set; }
        public string PPincode { get; set; }
        public string RAddressLine1 { get; set; }
        public string RAddressLine2 { get; set; }
        public string RLandmark { get; set; }
        public string RState { get; set; }
        public string RCity { get; set; }
        public string RPincode { get; set; }





    }
}