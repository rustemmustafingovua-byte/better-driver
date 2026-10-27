.class public Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduledNotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScheduledNotifReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 28
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "notificationDetailsJson":Ljava/lang/String;
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string v1, "notification_id"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, "notificationId":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    const-string v5, "notification"

    if-lt v3, v4, :cond_0

    .line 37
    const-class v3, Landroid/app/Notification;

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .local v3, "notification":Landroid/app/Notification;
    goto :goto_0

    .line 39
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    .line 42
    .restart local v3    # "notification":Landroid/app/Notification;
    :goto_0
    if-nez v3, :cond_1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse a notification from  Intent. ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ScheduledNotifReceiver"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 50
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    .line 51
    .local v4, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v4, v1, v3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 52
    const-string v5, "repeat"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 53
    .local v2, "repeat":Z
    if-nez v2, :cond_2

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 56
    .end local v1    # "notificationId":I
    .end local v2    # "repeat":Z
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    :cond_2
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 58
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver$1;

    invoke-direct {v2, p0}, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver$1;-><init>(Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;)V

    invoke-virtual {v2}, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 59
    .local v2, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 61
    .local v3, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    invoke-static {p1, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->showNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 62
    invoke-static {p1, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->scheduleNextNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 64
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    :goto_1
    return-void
.end method
