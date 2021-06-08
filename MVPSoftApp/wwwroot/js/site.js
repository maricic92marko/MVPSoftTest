


$(document).ready(function () {

    ResetSearch()
});


function ResetSearch() {
    $('#schGroup').val("")
    $('#schProduct').val("")
    $('#schUsers').val("")
    AgreementsTable_FN()
}

function AgreementsTable_FN() {
    try {
        //string UserId, int GroupId, int ProductId, int Id)
        let schGroupId = $('#schGroup').val() ? $('#schGroup').val():''
        let schProductId = $('#schProduct').val() ? $('#schProduct').val() : ''
        let schUsersId = $('#schUsers').val() ? $('#schUsers').val() : ''
        debugger
        let AgreementsTableContainer = $('#AgreementsTableContainer')[0]
        AgreementsTableContainer.innerHTML = '<table id="AgreementsTable" class="display" style="width: 100 % "> </table > '
        
        debugger
        $.ajax({
            type: "GET",
            url: "/Agreements/GetAgreements",
            data: {
                UserId: schUsersId,
                GroupId: schGroupId,
                ProductId: schProductId,
                AgreementId: 0,
            },
            success: function (result) {
                let gridColumns = null;
                let dataSet = null;
                let columnDefs = null;

                dataSet = (result.map(function (item) {
                    return {
                        Id: item.id,
                        Username: item.username,
                        GroupCode: item.groupCode,
                        ProductNumber: item.productNumber,
                        EffectiveDate: item.effectiveDate,
                        ExpirationDate: item.expirationDate,
                        NewPrice: item.newPrice,
                        EditBtn: "<button type='button' class='btn btn-primary' onclick='EditAgreement(" + item.id + ")' title='Edit agreement' style=' cursor:pointer;'  >Edit</button>",
                        DeleteBtn: "<button type='button' class='btn btn-primary' onclick='DeleteAgreement(" + item.id + ")' title='Delete agreement' style='cursor:pointer;'  >Delete</button>"
                    };
                }))
                    gridColumns = [
                        { data: "Id", title: '' }, //0
                        { data: "Username", title: '' }, //1
                        { data: "GroupCode", title: '' }, //2
                        { data: "ProductNumber", title: '' }, //3
                        { data: "EffectiveDate", title: '' }, //4
                        { data: "ExpirationDate", title: '' }, //5
                        { data: "EditBtn", title: '' }, //6
                        { data: "DeleteBtn", title: '' }, //7
                    ];
                    columnDefs = [
                        {
                            "targets": [0],
                            "visible": false,
                            "searchable": true
                        },
                        {
                            "targets": [0],
                            "width": 50
                        },
                    ]
                $('#AgreementsTable').on("click", function (event) {
                        if (event.target.nodeName == 'TD') {
                            var oTable = $('#AgreementsTable').DataTable()
                            $(oTable.rows().nodes()).removeClass('selected');
                            $(event.target).parent().addClass('selected');
                            var targetRow = $(event.target).parent();
                            var data = oTable.row(targetRow).data()
                        }
                    }).DataTable({
                        dom: '<"top"i>rt<"bottom"flp><"clear">',
                        data: dataSet,
                        searching: false,
                        select: {
                            style: 'single'
                        },
                        columns: gridColumns,
                        columnDefs: columnDefs,
                        order: [[0, 'desc']]
                    });
            },
            error: function (request, status, error) {
                alert(request.responseText);
            }
        });
    } catch (e) {

    }
}


function ToggleAddAgreement() {
    document.getElementById("AddEditAgreementModal").action = "/Agreements/AddAgreement";
    $('#AddAgreementModal').modal('toggle');
    $('#agreementId').val('');
    $('#inEffectiveDate').val('');
    $('#inActive').val('');
    $('#inNewPrice').val('');
    $('#inExpirationDate').val('');
    $('#inProduct').val('');
    $('#inGroup').val('');
}



function EditAgreement(Id = 0) {
    try {
        $.ajax({
            type: "GET",
            url: "/Agreements/GetAgreements",
            data: {
                UserId: '',
                GroupId: 0,
                ProductId: 0,
                AgreementId: Id,
            },
            success: function (result) {
                let item = result[0]
                debugger
          
                document.getElementById("AddEditAgreementModal").action = "/Agreements/EditAgreement";
        
                $('#agreementId').val(item.id);
                $('#inEffectiveDate').val(item.effectiveDate);
                $('#inExpirationDate').val(item.expirationDate);
                $('#inActive').val('');
                $('#inNewPrice').val(item.newPrice);
                $('#inProduct').val(item.productId);
                $('#inGroup').val(item.productGroupId);
                $('#AddAgreementModal').modal('toggle');

            },
            error: function (request, status, error) {
                alert(request.responseText);
            }
        });
    } catch (e) {

    }
}
    

function DeleteAgreement(Id = 0) {
    try {
        $.ajax({
            type: "DELETE",
            url: "/Agreements/DeleteAgreement?Id="+Id,
            success: function (data, textStatus, xhr) {
                debugger
                if (textStatus) {
                    alert("Agreement deleted successfuly.");
                    location.reload()   
                }
            },
            error: function (request, status, error) {
                alert('Something went wrong.');
            }
        });
    } catch (e) {

    }
}
