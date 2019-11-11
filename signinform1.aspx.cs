using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net1
{
    public partial class signinform1 : System.Web.UI.Page
    {

            protected void Page_Load(object sender, EventArgs e)
            {


            }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUser.Text) ||
                string.IsNullOrEmpty(txtPwd.Text) ||
                string.IsNullOrEmpty(txtEmail.Text) ||
                string.IsNullOrEmpty(txtQuestion.Text) ||
                string.IsNullOrEmpty(txtAnswer.Text)
                )
            {
                pnlErrors.Visible = true;
                litErrors.Text = "Values has not been specified for one or more details";
            }
            else
            {
                pnlErrors.Visible = false;
                MembershipCreateStatus status = MembershipCreateStatus.ProviderError;
                var user = Membership.CreateUser(
                    username: txtUser.Text,
                    password: txtPwd.Text,
                    email: txtEmail.Text,
                    passwordQuestion: txtQuestion.Text,
                    passwordAnswer: txtAnswer.Text,
                    isApproved: true,
                    status: out status);
                if (status != MembershipCreateStatus.Success)
                {
                    pnlErrors.Visible = true;
                    litErrors.Text = "Failed while creating a new user.";
                }
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(txtUserId.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserId.Text, false);
            }
        }

    }
    }