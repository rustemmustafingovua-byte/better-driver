package ua.nav.better_driver

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        createUpdateChannel()
    }

    private fun createUpdateChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                "updates",
                "Оновлення",
                NotificationManager.IMPORTANCE_HIGH
            ).apply {
                description = "Повідомлення про оновлення додатку"
            }
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channel)
        }
    }
}
