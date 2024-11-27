import 'package:yelp/core/exceptions/error_constants/error_icons.dart';

class ErrorScreen {
  static Map<String, dynamic> displayMessage({
    Object? errorObject,
    String? errorCode,
  }) {
    Map<String, dynamic> errorMessage = {
      "errorMessage": "Opps. Something went wrong.",
      "errorIcon": errorIconMap["systemError"],
      "errorIconDisplay": true,
    };

    switch (errorCode) {
      case 'could_not_get_firstore_data':
        errorMessage["errorMessage"] = "We could not connect to the server.";
        break;

      case 'could_not_create_fcm_token':
        errorMessage["errorMessage"] = "Server error detected (code: 3921).";
        break;

      case 'general_user_not_logged_in':
        errorMessage["errorMessage"] = "error siging the user (code:3922).";
        break;

      case 'could_not_get_user_id_token':
        errorMessage["errorMessage"] =
            "Could not get user ID token (code:3923). ";
        break;

      case 'could_not_get_call_outs':
        errorMessage["errorMessage"] =
            "Could not get callouts. Please try again (code:3923).";
        break;

      case 'empty_call_outs':
        errorMessage["errorMessage"] =
            "There are no callouts at the moment. Please try again.";
        break;

      case 'call_out_summary_error':
        errorMessage["errorMessage"] =
            "There was an error getting the CallOut summary. Please try again.";
        break;

      case 'could_not_get_user_favourites':
        errorMessage["errorMessage"] =
            "There was an error getting your favourites. Please try again.";
        break;

      case 'error_retrieving_remote_config':
        errorMessage["errorMessage"] =
            "There was an error initializing the app. Please try again.";
        break;

      case 'error_retrieving_google_address_search':
        errorMessage["errorMessage"] =
            "There was an error connecting to the search service. Please try again.";
        break;

      case 'could_not_get_listing_information':
        errorMessage["errorMessage"] =
            "There was an error retrieving listing information. Please try again.";
        break;

      case 'no_current_listing_data':
        errorMessage["errorMessage"] =
            "There are currently no listings in this area/filter. Please adjust your search criteria.";
        break;

      case 'could_not_get_single_listing_exerpts_for_map':
        errorMessage["errorMessage"] =
            "There was an error retrieving listing info. Please try again.";
        break;

      case 'could_not_update_user_favourites':
        errorMessage["errorMessage"] =
            "There was an error updating the user favourites. Please try again.";
        break;

      case 'could_not_update_user_favourite_notify_toggle':
        errorMessage["errorMessage"] =
            "There was an error updating the user setting. Please try again.";
        break;

      case 'could_not_get_listing_for_map':
        errorMessage["errorMessage"] =
            "There was an error getting the listing map. Please try again.";
        break;

      case 'could_not_get_geo_location':
        errorMessage["errorMessage"] =
            "There was an error getting the geo location information. Please try again.";
        break;

      case 'could_not_get_address_auto_complete':
        errorMessage["errorMessage"] =
            "There was an error getting the address autocomplete. Please try again.";
        break;

      case 'could_not_get_single_listing_full_detail':
        errorMessage["errorMessage"] =
            "There was an error getting a full listing detail. Please try again.";
        break;

      case 'could_not_fetch_conversation':
        errorMessage["errorMessage"] =
            "There was an error fetching conversations. Please try again.";
        break;

      case 'could_not_fetch_single_conversation':
        errorMessage["errorMessage"] =
            "There was an error fetching the conversation. Please try again.";
        break;

      case 'could_not_fetch_more_messages':
        errorMessage["errorMessage"] =
            "There was an error fetching more messages. Please try again.";
        break;

      case 'could_not_fetch_messages':
        errorMessage["errorMessage"] =
            "There was an error fetching the messages. Please try again.";
        break;

      case 'could_not_create_new_conversation_document':
        errorMessage["errorMessage"] =
            "There was an error creating a new conversation. Please try again.";
        break;

      case 'could_not_add_new_message_to_collection':
        errorMessage["errorMessage"] =
            "There was an error adding the message to the server. Please try again.";
        break;

      case 'could_not_update_conversation_document':
        errorMessage["errorMessage"] =
            "There was an error updating the conversation. Please try again.";
        break;

      case 'no_single_listing_info':
        errorMessage["errorMessage"] =
            "There was an error getting the listing info. Please try again.";
        break;

      case 'google_map_loading_error':
        errorMessage["errorMessage"] =
            "There was an error loading Google Map. Please try again";
        break;

      case 'could_not_add_notification_doc':
        errorMessage["errorMessage"] =
            "There was an error adding a notification data. Please try again.";
        break;

      case 'could_not_update_notification_doc':
        errorMessage["errorMessage"] =
            "There was an error updating the notification data. Please try again.";
        break;
      case 'could_not_get_key_store_value':
        errorMessage["errorMessage"] =
            "There was an error getting a keyStore value. Please try again.";
        break;
      case 'could_not_set_key_store_value':
        errorMessage["errorMessage"] =
            "There was an error setting a keyStore value. Please try again.";
        break;
      case 'could_not_delete_all_key_store_value':
        errorMessage["errorMessage"] =
            "There was an error deleting all keyStore values. Please try again.";
        break;
      case 'could_not_delete_specific_key_value':
        errorMessage["errorMessage"] =
            "There was an error deleting a specific key value. Please try again.";
        break;
      case 'could_not_update_fcm_token':
        errorMessage["errorMessage"] =
            "There was an error updating the fcm token. Please try again.";
        break;
      case 'could_not_update_fcm_on_refresh':
        errorMessage["errorMessage"] =
            "There was an error updating the fcm token on refresh. Please try again.";
        break;
      case 'could_not_get_single_call_outs':
        errorMessage["errorMessage"] =
            "There was an error getting the single CallOut. Please try again.";
        break;
      case 'error_retrieving_specific_user_public_data':
        errorMessage["errorMessage"] =
            "There was an error getting the user information. Please try again.";
        break;

      //Default
      default:
        errorMessage["header"] =
            "Opps. Something went wrong. Please try again.";
        break;
    }

    return errorMessage;
  }
}
