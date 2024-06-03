codeunit 50100 "Enrollment CodeUnit"
{



    var
        EnrolledStudentsRec: Record "Enrolled Students";
        StudentApplicationRec: Record "StudentApplicationForm";

    procedure EnrollStudent()

    //StudentApplicationFormRec: Record "StudentApplicationForm";
    begin
        // Check if student is already enrolled by setting a filter on the "Full Name" field





        //populate the enrolled student form with data from the current student application form
        EnrolledStudentsRec.Init();

        EnrolledStudentsRec.SetRange("Full Name", StudentApplicationRec."Full Name");

        if EnrolledStudentsRec.FindFirst() then begin
            Message('Student %1 is already enrolled', StudentApplicationRec."Full Name");
            exit;
        end;


        EnrolledStudentsRec."First Name" := StudentApplicationRec."First Name";
        EnrolledStudentsRec."Middle Name" := StudentApplicationRec."Middle Name";
        EnrolledStudentsRec."Last Name" := StudentApplicationRec."Last Name";
        EnrolledStudentsRec."Full Name" := StudentApplicationRec."Full Name";
        EnrolledStudentsRec."Date of Birth" := StudentApplicationRec."Date of Birth";
        EnrolledStudentsRec.Email := StudentApplicationRec.Email;
        EnrolledStudentsRec."Programme Name" := StudentApplicationRec."Programme Name";



        EnrolledStudentsRec.Insert(true);
        Message('Student %1 has been succesfully enrolled', EnrolledStudentsRec."Full Name");
    end;
}


