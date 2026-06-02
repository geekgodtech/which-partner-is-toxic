package com.example.which_partner_is_toxic

import android.provider.ContactsContract
import android.database.Cursor
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.toxicity_analyzer/contacts"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "getContactName") {
                val phoneNumber = call.argument<String>("phoneNumber")
                if (phoneNumber != null) {
                    val contactName = getContactName(phoneNumber)
                    result.success(contactName)
                } else {
                    result.error("INVALID_ARGUMENT", "Phone number is required", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }

    private fun getContactName(phoneNumber: String): String? {
        try {
            // Normalize phone number for comparison (remove spaces, dashes, etc.)
            val normalizedInput = phoneNumber.replace(Regex("[\\s\\-\\(\\)\\+]"), "")
            val searchLast10 = if (normalizedInput.length >= 10) {
                normalizedInput.substring(normalizedInput.length - 10)
            } else {
                normalizedInput
            }

            val uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI
            val projection = arrayOf(
                ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME,
                ContactsContract.CommonDataKinds.Phone.NUMBER
            )

            val cursor: Cursor? = contentResolver.query(uri, projection, null, null, null)
            cursor?.use {
                while (it.moveToNext()) {
                    val name = it.getString(it.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME))
                    val number = it.getString(it.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.NUMBER))
                    
                    // Normalize contact number
                    val normalizedContact = number.replace(Regex("[\\s\\-\\(\\)\\+]"), "")
                    val contactLast10 = if (normalizedContact.length >= 10) {
                        normalizedContact.substring(normalizedContact.length - 10)
                    } else {
                        normalizedContact
                    }
                    
                    // Compare last 10 digits
                    if (searchLast10 == contactLast10) {
                        return name
                    }
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }
}
