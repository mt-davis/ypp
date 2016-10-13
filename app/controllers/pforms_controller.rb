class PformsController < InheritedResources::Base

  private

    def pform_params
      params.require(:pform).permit(:pFirstName, :pLastName, :pPhone, :pAddress, :pCity, :pSatate, :pZipcode, :pDob)
    end
end

