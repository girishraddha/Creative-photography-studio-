<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="photoweb2.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="order-form my-4 mx-4">
    <div class="container pt-4 bg-light">

      <div class="row">
        <div class="col-12">
          <h1>You can Place Date </h1>
          <span>with some explanation below</span>
          <hr class="mt-1">
        </div>
        <div class="col-12 ">

          <div class="row mx-4">
            <div class="col-12 mb-2">
            <asp:Label ID="Label1" runat="server" Text="Name" cssclass="order-form-label" ></asp:Label>
              
            </div>
            <div class="col-12 col-sm-6">
            <asp:TextBox ID="fnm" runat="server" cssclass="order-form-input" placeholder="First" ></asp:TextBox>
            
            </div>
            <div class="col-12 col-sm-6 mt-2 mt-sm-0">
            <asp:TextBox ID="lnm" runat="server" cssclass="order-form-input"  placeholder="Last"></asp:TextBox>
           
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
             <asp:Label ID="Label2" runat="server" Text="Date" cssclass="order-form-label" for="date"></asp:Label>
              
            </div>
            <div class="col-12">
            <asp:TextBox ID="date" runat="server" cssclass="order-form-input datepicker" placeholder="Selected date" type="date"></asp:TextBox>
              
            </div>
            <div class="col-12">
             <asp:Label ID="Label11" runat="server" Text="Mob. No." cssclass="order-form-label" ></asp:Label>
              
            </div>
            <div class="col-12">
            <asp:TextBox ID="TextBox5" runat="server" cssclass="order-form-input datepicker" placeholder="0000000000" ></asp:TextBox>
              
            </div>
            <div class="col-12">
             <asp:Label ID="Label12" runat="server" Text="Email" cssclass="order-form-label" ></asp:Label>
              
            </div>
            <div class="col-12">
            <asp:TextBox ID="TextBox6" runat="server" cssclass="order-form-input datepicker" placeholder="demo@.com" ></asp:TextBox>
              
            </div>
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
             <asp:Label ID="Label3" runat="server" cssclass="order-form-label" Text="Adress"></asp:Label>
              
            </div>
            <div class="col-12">
              <asp:TextBox ID="ad1" runat="server" cssclass="order-form-input" placeholder="Home Address"></asp:TextBox>
              
            </div>
            <div class="col-12 mt-2">
             <asp:TextBox ID="ad2" runat="server" cssclass="order-form-input" placeholder="Shoot Veanu"></asp:TextBox>
              
            </div>
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <asp:TextBox ID="city" runat="server" cssclass="order-form-input" placeholder="City"></asp:TextBox>
              
            </div>
            
            <div class="col-12 col-sm-6 mt-2 pr-sm-2">
              <asp:TextBox ID="pin" runat="server" cssclass="order-form-input" placeholder="Postal / Zip Code"></asp:TextBox>
             
            </div>
            
          </div>

          <div class="row mt-3 mx-4">
            <div class="col-12">
              <div class="form-check">
                <asp:TextBox ID="val" runat="server" type="checkbox" cssclass="form-check-input" name="validation"  value="1"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="I know what I need to know" for="val" cssclass="form-check-label"></asp:Label>
                
              </div>
            </div>
          </div>

          <div class="row mt-3">
            <div class="col-12 text-center text-white ">
              <a class="btn btn-dark btn-submits active" data-target="#myModal" data-toggle="modal" > submit</a>


              <%-- <asp:Button ID="Button3" runat="server" class="btn btn-dark btn-submits" data-target="#myModal" data-toggle="modal" Text="Submit"></asp:Button>--%>
              <%-- <asp:Button ID="btnSubmit" runat="server" cssclass="btn btn-dark d-block mx-auto btn-submit" Text="Submit" data-toggle="modal" data-target="#myModal"></asp:Button>--%>  
           
           </div>
          </div>


           <div id="form-footer">
                     <p>By placing your order, you agree to our</p>
                     <p><a href="#">privacy notice</a> & <a href="#">terms of use</a>.</p>
        </div>

        <%--  #############  pay ###########--%>
        <!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Payment Details</h4>
          <a type="button"  data-dismiss="modal">&times;</a>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <div class="form-group"> 
             <asp:Label ID="Label6" runat="server" for="card" cssclass="text-uppercase" Text="card number"></asp:Label>
                 <div class="card-number"> 
                     <asp:TextBox ID="pycr" runat="server" cssclass="card-no" step="4" placeholder="1234 4567 5869 1234" pattern="^[0-9].{15,}"></asp:TextBox>
                        <span > 
                            <asp:Image ID="Image1" runat="server" src="https://www.freepnglogos.com/uploads/mastercard-png/mastercard-marcus-samuelsson-group-2.png" alt="" width="30" height="30" ></asp:Image> 
                        </span> 
                     </div>
                 </div>
              <div class="d-flex w-100">
                  <div class="d-flex w-50 pr-sm-4">
                     <div class="form-group">
                     <asp:Label ID="Label7" runat="server" Text="exp.date" for="expiry" cssclass="text-uppercase" ></asp:Label> 
                     <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control" placeholder="03/2020"></asp:TextBox>
                  </div>
            </div>
            <div class="d-flex w-50 pl-sm-5 pl-3">
                <div class="form-group"> 
                   <asp:Label ID="Label8" runat="server" Text="CVV" for="cvv"></asp:Label>
                   <a href="#" title="CVV is a credit or debit card number, the last three digit number printed on the signature panel">what's this</a>
                   <asp:TextBox ID="TextBox2" runat="server" type="password" cssclass="form-control pr-5" maxlength="3" placeholder="123"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="form-inline pt-sm-3 pt-2"> 
                <asp:TextBox ID="TextBox3" runat="server" type="checkbox" name="address" ></asp:TextBox>
                <asp:Label ID="Label9" runat="server" for="address" cssclass="px-sm-1 pl-1 pt-sm-0 pt-2" Text="My billing address is the same as the shipping"></asp:Label>
          
         </div>
        <div class="form-inline py-sm-2"> 
                  <asp:TextBox ID="TextBox4" runat="server" type="checkbox" name="details" ></asp:TextBox>
                  <asp:Label ID="Label10" runat="server" for="details" cssclass="px-sm-2 pl-2 pt-sm-0 pt-2" Text="Save my details for future purchases"></asp:Label>
        </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <asp:Button ID="Button1" runat="server" Text="PAY" class="btn btn-secondary" data-dismiss="modal"></asp:Button>
         <asp:Button ID="Button2" runat="server" Text="Close" class="btn btn-secondary" data-dismiss="modal"></asp:Button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>
           
    </div>
    </div>
  
   
  </section>
</asp:Content>
