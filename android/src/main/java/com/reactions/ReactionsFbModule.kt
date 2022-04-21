import android.widget.Toast
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import java.util.*

class ReactionsFbModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    override fun getName(): String {
        return "ReactNativeReactionsFb"
    }

    override fun getConstants(): Map<String, Any>? {
        val constants = HashMap<String, Any>()
        constants.put(DURATION_SHORT_KEY, Toast.LENGTH_SHORT)
        constants.put(DURATION_LONG_KEY, Toast.LENGTH_LONG)
        return constants
    }

    @ReactMethod
    fun Toastshow(message: CharSequence, duration: Int) {
        Toast.makeText(reactApplicationContext, message, duration).show()
    }

    companion object {
        private val DURATION_SHORT_KEY = "SHORT"
        private val DURATION_LONG_KEY = "LONG"
    }

}