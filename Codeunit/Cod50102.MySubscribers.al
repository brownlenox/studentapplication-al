codeunit 50102 MySubscribers
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::MyPublishers, 'OnPhoneNumberChanged', '', false, false)]
    local procedure OnPhoneNumberChanged(Code: Code[20])
    var
        ErrorMessage: Label 'The phone number is invalid. It must start with a + and contain only numbers.';
    begin
        if not IsValidPhoneNumber(Code) then
            Error(ErrorMessage);
    end;

    local procedure IsValidPhoneNumber(PhoneNumber: Code[20]): Boolean
    var
        i: Integer;
    begin
        // Check if the first character is '+'
        if PhoneNumber[1] <> '+' then
            exit(false);

        // Check if the rest of the characters are digits
        for i := 2 to StrLen(PhoneNumber) do begin
            if not (PhoneNumber[i] in ['0' .. '9']) then
                exit(false);
        end;

        // If all checks pass, the phone number is valid
        exit(true);
    end;
}