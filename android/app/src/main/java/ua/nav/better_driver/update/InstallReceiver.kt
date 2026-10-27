package ua.nav.better_driver.update

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat

class InstallReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_MY_PACKAGE_REPLACED) return

        val appName = context.getString(
            context.resources.getIdentifier("app_name", "string", context.packageName)
        )
        val text = context.getString(
            context.resources.getIdentifier("update_installed_message", "string", context.packageName)
        )

        val notification = NotificationCompat.Builder(context, "updates")
            .setSmallIcon(android.R.drawable.stat_notify_sync)
            .setContentTitle("$appName оновлено")
            .setContentText(text)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setAutoCancel(true)
            .build()

        NotificationManagerCompat.from(context).notify(1001, notification)
    }
}
