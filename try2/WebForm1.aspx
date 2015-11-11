<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="try2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js">
</script>
    <script>
        $(document).ready(function () {
            //iterate through each textboxes and add keyup
            //handler to trigger sum event
            $(".txt").each(function () {
                $(this).keyup(function () {
                    calculateSum();
                });
            });
        });
        function calculateSum() {
            var sum = 0;
            //iterate through each textboxes and add the values
            $(".txt").each(function () {
                //add only if the value is number
                // hahahah
                //edit by song
                if (!isNaN(this.value) && this.value.length != 0) {
                    sum += parseFloat(this.value);
                    $(this).css("background-color", "#FEFFB0");
                }
                else if (this.value.length != 0) {
                    $(this).css("background-color", "red");
                }
            });
            $("#sum").html(sum.toFixed(2));
        }
</script>



</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table width="300px" border="1" style="border-collapse: collapse; background-color: #E8DCFF">
        <tr>
            <td width="40px">1</td>
            <td>Number</td>
            <td><input class="txt" type="text" name="txt" /></td>
        </tr>
        <tr>
            <td>2</td>
            <td>Number</td>
            <td><input class="txt" type="text" name="txt" /></td>
        </tr>
        <tr>
            <td>3</td>
            <td>Number</td>
            <td><input class="txt" type="text" name="txt" /></td>
        </tr>
        <tr id="summation">
            <td  colspan ="2">
                Sum :
            </td>
            <td style ="align-content :center"><span id="sum">0</span></td>
        </tr>
</table>
    
    </div>
        <asp:RadioButton ID="RadioButton1" runat="server" />
    </form>
</body>
</html>
