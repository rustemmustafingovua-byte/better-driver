.class public Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.super Ljava/lang/Object;
.source "FlutterLocalNotificationsPlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;,
        Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;,
        Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_ID:Ljava/lang/String; = "actionId"

.field private static final ARE_NOTIFICATIONS_ENABLED_METHOD:Ljava/lang/String; = "areNotificationsEnabled"

.field private static final CALLBACK_HANDLE:Ljava/lang/String; = "callback_handle"

.field private static final CANCEL_ALL_METHOD:Ljava/lang/String; = "cancelAll"

.field private static final CANCEL_ID:Ljava/lang/String; = "id"

.field private static final CANCEL_METHOD:Ljava/lang/String; = "cancel"

.field static final CANCEL_NOTIFICATION:Ljava/lang/String; = "cancelNotification"

.field private static final CANCEL_TAG:Ljava/lang/String; = "tag"

.field private static final CAN_SCHEDULE_EXACT_NOTIFICATIONS_METHOD:Ljava/lang/String; = "canScheduleExactNotifications"

.field private static final CREATE_NOTIFICATION_CHANNEL_GROUP_METHOD:Ljava/lang/String; = "createNotificationChannelGroup"

.field private static final CREATE_NOTIFICATION_CHANNEL_METHOD:Ljava/lang/String; = "createNotificationChannel"

.field private static final DEFAULT_ICON:Ljava/lang/String; = "defaultIcon"

.field private static final DELETE_NOTIFICATION_CHANNEL_GROUP_METHOD:Ljava/lang/String; = "deleteNotificationChannelGroup"

.field private static final DELETE_NOTIFICATION_CHANNEL_METHOD:Ljava/lang/String; = "deleteNotificationChannel"

.field private static final DISPATCHER_HANDLE:Ljava/lang/String; = "dispatcher_handle"

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final EXACT_ALARMS_PERMISSION_ERROR_CODE:Ljava/lang/String; = "exact_alarms_not_permitted"

.field static final EXACT_ALARM_PERMISSION_REQUEST_CODE:I = 0x2

.field static final FULL_SCREEN_INTENT_PERMISSION_REQUEST_CODE:I = 0x3

.field private static final GET_ACTIVE_NOTIFICATIONS_ERROR_MESSAGE:Ljava/lang/String; = "Android version must be 6.0 or newer to use getActiveNotifications"

.field private static final GET_ACTIVE_NOTIFICATIONS_METHOD:Ljava/lang/String; = "getActiveNotifications"

.field private static final GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_ERROR_CODE:Ljava/lang/String; = "getActiveNotificationMessagingStyleError"

.field private static final GET_ACTIVE_NOTIFICATION_MESSAGING_STYLE_METHOD:Ljava/lang/String; = "getActiveNotificationMessagingStyle"

.field private static final GET_CALLBACK_HANDLE_METHOD:Ljava/lang/String; = "getCallbackHandle"

.field private static final GET_NOTIFICATION_APP_LAUNCH_DETAILS_METHOD:Ljava/lang/String; = "getNotificationAppLaunchDetails"

.field private static final GET_NOTIFICATION_CHANNELS_ERROR_CODE:Ljava/lang/String; = "getNotificationChannelsError"

.field private static final GET_NOTIFICATION_CHANNELS_METHOD:Ljava/lang/String; = "getNotificationChannels"

.field private static final INITIALIZE_METHOD:Ljava/lang/String; = "initialize"

.field private static final INPUT:Ljava/lang/String; = "input"

.field private static final INPUT_RESULT:Ljava/lang/String; = "FlutterLocalNotificationsPluginInputResult"

.field private static final INVALID_BIG_PICTURE_ERROR_CODE:Ljava/lang/String; = "invalid_big_picture"

.field private static final INVALID_DRAWABLE_RESOURCE_ERROR_MESSAGE:Ljava/lang/String; = "The resource %s could not be found. Please make sure it has been added as a drawable resource to your Android head project."

.field private static final INVALID_ICON_ERROR_CODE:Ljava/lang/String; = "invalid_icon"

.field private static final INVALID_LARGE_ICON_ERROR_CODE:Ljava/lang/String; = "invalid_large_icon"

.field private static final INVALID_LED_DETAILS_ERROR_CODE:Ljava/lang/String; = "invalid_led_details"

.field private static final INVALID_LED_DETAILS_ERROR_MESSAGE:Ljava/lang/String; = "Must specify both ledOnMs and ledOffMs to configure the blink cycle on older versions of Android before Oreo"

.field private static final INVALID_RAW_RESOURCE_ERROR_MESSAGE:Ljava/lang/String; = "The resource %s could not be found. Please make sure it has been added as a raw resource to your Android head project."

.field private static final INVALID_SOUND_ERROR_CODE:Ljava/lang/String; = "invalid_sound"

.field private static final METHOD_CHANNEL:Ljava/lang/String; = "dexterous.com/flutter/local_notifications"

.field static NOTIFICATION_DETAILS:Ljava/lang/String; = null

.field static final NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field private static final NOTIFICATION_LAUNCHED_APP:Ljava/lang/String; = "notificationLaunchedApp"

.field static final NOTIFICATION_PERMISSION_REQUEST_CODE:I = 0x1

.field private static final NOTIFICATION_RESPONSE_TYPE:Ljava/lang/String; = "notificationResponseType"

.field static final NOTIFICATION_TAG:Ljava/lang/String; = "notificationTag"

.field static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PENDING_NOTIFICATION_REQUESTS_METHOD:Ljava/lang/String; = "pendingNotificationRequests"

.field private static final PERIODICALLY_SHOW_METHOD:Ljava/lang/String; = "periodicallyShow"

.field private static final PERIODICALLY_SHOW_WITH_DURATION:Ljava/lang/String; = "periodicallyShowWithDuration"

.field private static final PERMISSION_REQUEST_IN_PROGRESS_ERROR_CODE:Ljava/lang/String; = "permissionRequestInProgress"

.field private static final PERMISSION_REQUEST_IN_PROGRESS_ERROR_MESSAGE:Ljava/lang/String; = "Another permission request is already in progress"

.field private static final REQUEST_EXACT_ALARMS_PERMISSION_METHOD:Ljava/lang/String; = "requestExactAlarmsPermission"

.field private static final REQUEST_FULL_SCREEN_INTENT_PERMISSION_METHOD:Ljava/lang/String; = "requestFullScreenIntentPermission"

.field private static final REQUEST_NOTIFICATIONS_PERMISSION_METHOD:Ljava/lang/String; = "requestNotificationsPermission"

.field private static final SCHEDULED_NOTIFICATIONS:Ljava/lang/String; = "scheduled_notifications"

.field private static final SELECT_FOREGROUND_NOTIFICATION_ACTION:Ljava/lang/String; = "SELECT_FOREGROUND_NOTIFICATION"

.field private static final SELECT_NOTIFICATION:Ljava/lang/String; = "SELECT_NOTIFICATION"

.field private static final SHARED_PREFERENCES_KEY:Ljava/lang/String; = "notification_plugin_cache"

.field private static final SHOW_METHOD:Ljava/lang/String; = "show"

.field private static final START_FOREGROUND_SERVICE:Ljava/lang/String; = "startForegroundService"

.field private static final STOP_FOREGROUND_SERVICE:Ljava/lang/String; = "stopForegroundService"

.field private static final TAG:Ljava/lang/String; = "FLTLocalNotifPlugin"

.field private static final UNSUPPORTED_OS_VERSION_ERROR_CODE:Ljava/lang/String; = "unsupported_os_version"

.field private static final ZONED_SCHEDULE_METHOD:Ljava/lang/String; = "zonedSchedule"

.field static gson:Lcom/google/gson/Gson;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private mainActivity:Landroid/app/Activity;

.field private permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    nop

    .line 204
    const-string v0, "notificationDetails"

    sput-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    return-void
.end method

.method private static applyGrouping(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "isGrouped":Z
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->groupKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->groupKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 923
    const/4 v0, 0x1

    .line 926
    :cond_0
    if-eqz v0, :cond_2

    .line 927
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->setAsGroupSummary:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->groupAlertBehavior:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 933
    :cond_2
    return-void
.end method

.method private areNotificationsEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2212
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 2213
    .local v0, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2214
    return-void
.end method

.method static buildGson()Lcom/google/gson/Gson;
    .locals 4

    .line 484
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 485
    const-class v0, Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    .line 486
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->of(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;

    .line 487
    invoke-virtual {v0, v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;

    .line 488
    invoke-virtual {v0, v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;

    .line 489
    invoke-virtual {v0, v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;

    .line 490
    invoke-virtual {v0, v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    const-class v1, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;

    .line 491
    invoke-virtual {v0, v1}, Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;->registerSubtype(Ljava/lang/Class;)Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;

    move-result-object v0

    .line 492
    .local v0, "styleInformationAdapter":Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;, "Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory<Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;>;"
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v2, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    new-instance v3, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode$Deserializer;

    invoke-direct {v3}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode$Deserializer;-><init>()V

    .line 494
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 495
    invoke-virtual {v1, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 496
    .local v1, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    sput-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->gson:Lcom/google/gson/Gson;

    .line 498
    .end local v0    # "styleInformationAdapter":Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory;, "Lcom/dexterous/flutterlocalnotifications/RuntimeTypeAdapterFactory<Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;>;"
    .end local v1    # "builder":Lcom/google/gson/GsonBuilder;
    :cond_0
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private static buildPerson(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;)Landroidx/core/app/Person;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "personDetails"    # Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    .line 1140
    if-nez p1, :cond_0

    .line 1141
    const/4 v0, 0x0

    return-object v0

    .line 1144
    :cond_0
    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    .line 1145
    .local v0, "personBuilder":Landroidx/core/app/Person$Builder;
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->bot:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setBot(Z)Landroidx/core/app/Person$Builder;

    .line 1146
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->icon:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->iconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    if-eqz v1, :cond_1

    .line 1147
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->icon:Ljava/lang/Object;

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->iconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 1148
    invoke-static {p0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getIconFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/IconSource;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 1147
    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    .line 1150
    :cond_1
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->important:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setImportant(Z)Landroidx/core/app/Person$Builder;

    .line 1151
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->key:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1152
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setKey(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    .line 1154
    :cond_2
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1155
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    .line 1157
    :cond_3
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->uri:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1158
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    .line 1160
    :cond_4
    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v1

    return-object v1
.end method

.method private static calculateNextNotificationTrigger(JJ)J
    .locals 3
    .param p0, "notificationTriggerTime"    # J
    .param p2, "repeatInterval"    # J

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 768
    .local v0, "currentTime":J
    :goto_0
    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 769
    add-long/2addr p0, p2

    goto :goto_0

    .line 771
    :cond_0
    return-wide p0
.end method

.method private static calculateRepeatIntervalMilliseconds(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)J
    .locals 4
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 775
    const-wide/16 v0, 0x0

    .line 777
    .local v0, "repeatInterval":J
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatIntervalMilliseconds:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 778
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatIntervalMilliseconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    .line 779
    return-wide v0

    .line 782
    :cond_0
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$RepeatInterval:[I

    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatInterval:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    invoke-virtual {v3}, Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 793
    :pswitch_0
    const-wide/32 v0, 0x240c8400

    .line 794
    goto :goto_0

    .line 790
    :pswitch_1
    const-wide/32 v0, 0x5265c00

    .line 791
    goto :goto_0

    .line 787
    :pswitch_2
    const-wide/32 v0, 0x36ee80

    .line 788
    goto :goto_0

    .line 784
    :pswitch_3
    const-wide/32 v0, 0xea60

    .line 785
    nop

    .line 798
    :goto_0
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static canCreateNotificationChannel(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationChannelDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    .line 442
    nop

    .line 443
    nop

    .line 444
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 445
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->id:Ljava/lang/String;

    .line 446
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 451
    .local v1, "notificationChannel":Landroid/app/NotificationChannel;
    if-nez v1, :cond_0

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;->CreateIfNotExists:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    if-eq v2, v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->channelAction:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;->Update:Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelAction;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method private cancel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1586
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1587
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1588
    .local v1, "id":Ljava/lang/Integer;
    const-string v2, "tag"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1589
    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->cancelNotification(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1590
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1591
    return-void
.end method

.method private cancelAllNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1784
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 1785
    .local v0, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 1786
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1787
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1788
    .local v1, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1793
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const-class v5, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1794
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1795
    .local v5, "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    iget-object v6, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 1796
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1797
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v7

    .line 1798
    .local v7, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1799
    .end local v5    # "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "alarmManager":Landroid/app/AlarmManager;
    goto :goto_0

    .line 1801
    :cond_1
    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1802
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1803
    return-void

    .line 1789
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1790
    return-void
.end method

.method private cancelNotification(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1770
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1771
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1772
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v2

    .line 1773
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1774
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    .line 1775
    .local v3, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    if-nez p2, :cond_0

    .line 1776
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    goto :goto_0

    .line 1778
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 1780
    :goto_0
    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 1781
    return-void
.end method

.method private static castObjectToByteArray(Ljava/lang/Object;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/Object;

    .line 823
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 824
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    .line 825
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 826
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 827
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 830
    .end local v1    # "byteArray":[B
    :cond_1
    move-object v1, p0

    check-cast v1, [B

    .line 832
    .restart local v1    # "byteArray":[B
    :goto_1
    return-object v1
.end method

.method private static checkCanScheduleExactAlarms(Landroid/app/AlarmManager;)V
    .locals 2
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;

    .line 759
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;-><init>()V

    throw v0

    .line 762
    :cond_1
    :goto_0
    return-void
.end method

.method private static createMessage(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageDetails"    # Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;

    .line 1128
    new-instance v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->timestamp:Ljava/lang/Long;

    .line 1131
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->person:Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    .line 1132
    invoke-static {p0, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildPerson(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;)Landroidx/core/app/Person;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    .line 1133
    .local v0, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataMimeType:Ljava/lang/String;

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;->dataUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    .line 1136
    :cond_0
    return-object v0
.end method

.method protected static createNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Landroid/app/Notification;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 259
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->fromNotificationDetails(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    move-result-object v2

    .line 260
    .local v2, "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    invoke-static {v0, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->canCreateNotificationChannel(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-static {v0, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupNotificationChannel(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;)V

    .line 263
    :cond_0
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 264
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "SELECT_NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v4, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    const-string v5, "notificationId"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    iget-object v4, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->payload:Ljava/lang/String;

    const-string v6, "payload"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/high16 v4, 0x8000000

    .line 268
    .local v4, "flags":I
    nop

    .line 269
    const/high16 v7, 0x4000000

    or-int/2addr v4, v7

    .line 271
    iget-object v8, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 272
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v8, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 273
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v9, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v9, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;

    .line 275
    .local v9, "defaultStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;
    new-instance v10, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->channelId:Ljava/lang/String;

    invoke-direct {v10, v0, v11}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    iget-object v11, v9, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatTitle:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 279
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->title:Ljava/lang/String;

    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    goto :goto_0

    .line 280
    :cond_1
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->title:Ljava/lang/String;

    .line 277
    :goto_0
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 282
    iget-object v11, v9, Lcom/dexterous/flutterlocalnotifications/models/styles/DefaultStyleInformation;->htmlFormatBody:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 283
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->body:Ljava/lang/String;

    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    goto :goto_1

    .line 284
    :cond_2
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->body:Ljava/lang/String;

    .line 281
    :goto_1
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ticker:Ljava/lang/String;

    .line 285
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->autoCancel:Ljava/lang/Boolean;

    .line 286
    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 287
    invoke-virtual {v10, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->priority:Ljava/lang/Integer;

    .line 288
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ongoing:Ljava/lang/Boolean;

    .line 289
    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->silent:Ljava/lang/Boolean;

    .line 290
    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->onlyAlertOnce:Ljava/lang/Boolean;

    .line 291
    invoke-static {v11}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 293
    .local v10, "builder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->actions:Ljava/util/List;

    if-eqz v11, :cond_14

    .line 295
    iget-object v11, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit8 v11, v11, 0x10

    .line 296
    .local v11, "requestCode":I
    iget-object v14, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->actions:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;

    .line 297
    .local v15, "action":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;
    const/16 v16, 0x0

    .line 298
    .local v16, "icon":Landroidx/core/graphics/drawable/IconCompat;
    move/from16 v17, v7

    iget-object v7, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->icon:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->iconSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    if-eqz v7, :cond_3

    .line 299
    iget-object v7, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->icon:Ljava/lang/String;

    iget-object v13, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->iconSource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    invoke-static {v0, v7, v13}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getIconFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/IconSource;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v16

    move-object/from16 v7, v16

    goto :goto_3

    .line 303
    :cond_3
    move-object/from16 v7, v16

    .end local v16    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    .local v7, "icon":Landroidx/core/graphics/drawable/IconCompat;
    :goto_3
    iget-object v13, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    if-eqz v13, :cond_4

    iget-object v13, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 304
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v13

    .line 305
    .local v13, "actionIntent":Landroid/content/Intent;
    const-string v12, "SELECT_FOREGROUND_NOTIFICATION"

    invoke-virtual {v13, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 307
    .end local v13    # "actionIntent":Landroid/content/Intent;
    :cond_4
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/dexterous/flutterlocalnotifications/ActionBroadcastReceiver;

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v13, v12

    .line 308
    .restart local v13    # "actionIntent":Landroid/content/Intent;
    const-string v12, "com.dexterous.flutterlocalnotifications.ActionBroadcastReceiver.ACTION_TAPPED"

    invoke-virtual {v13, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    :goto_4
    iget-object v12, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 312
    invoke-virtual {v13, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v18, v2

    .end local v2    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .local v18, "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->tag:Ljava/lang/String;

    .line 313
    move-object/from16 v19, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .local v19, "intent":Landroid/content/Intent;
    const-string v3, "notificationTag"

    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->id:Ljava/lang/String;

    .line 314
    const-string v12, "actionId"

    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->cancelNotification:Ljava/lang/Boolean;

    .line 315
    const-string v12, "cancelNotification"

    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->payload:Ljava/lang/String;

    .line 316
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/high16 v2, 0x8000000

    .line 318
    .local v2, "actionFlags":I
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    .line 323
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-lt v3, v12, :cond_7

    .line 324
    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    goto :goto_6

    .line 319
    :cond_6
    :goto_5
    nop

    .line 320
    or-int v2, v2, v17

    .line 330
    :cond_7
    :goto_6
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 331
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "requestCode":I
    .local v3, "requestCode":I
    invoke-static {v0, v11, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    goto :goto_7

    .line 332
    .end local v3    # "requestCode":I
    .restart local v11    # "requestCode":I
    :cond_8
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "requestCode":I
    .restart local v3    # "requestCode":I
    invoke-static {v0, v11, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    :goto_7
    nop

    .line 334
    .local v11, "actionPendingIntent":Landroid/app/PendingIntent;
    new-instance v12, Landroid/text/SpannableString;

    move/from16 v20, v2

    .end local v2    # "actionFlags":I
    .local v20, "actionFlags":I
    iget-object v2, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->title:Ljava/lang/String;

    invoke-direct {v12, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 335
    .local v12, "actionTitleSpannable":Landroid/text/Spannable;
    iget-object v2, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->titleColor:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 336
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    move/from16 v21, v3

    .end local v3    # "requestCode":I
    .local v21, "requestCode":I
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->titleColor:Ljava/lang/Integer;

    .line 337
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v12}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 336
    move/from16 v22, v4

    const/4 v4, 0x0

    .end local v4    # "flags":I
    .local v22, "flags":I
    invoke-interface {v12, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    .line 335
    .end local v21    # "requestCode":I
    .end local v22    # "flags":I
    .restart local v3    # "requestCode":I
    .restart local v4    # "flags":I
    :cond_9
    move/from16 v21, v3

    move/from16 v22, v4

    .line 340
    .end local v3    # "requestCode":I
    .end local v4    # "flags":I
    .restart local v21    # "requestCode":I
    .restart local v22    # "flags":I
    :goto_8
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-direct {v2, v7, v12, v11}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 342
    .local v2, "actionBuilder":Landroidx/core/app/NotificationCompat$Action$Builder;
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->contextual:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    .line 343
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->contextual:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->setContextual(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 345
    :cond_a
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    if-eqz v3, :cond_b

    .line 346
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->showsUserInterface:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->setShowsUserInterface(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 348
    :cond_b
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->allowGeneratedReplies:Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    .line 349
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->allowGeneratedReplies:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->setAllowGeneratedReplies(Z)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 352
    :cond_c
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    if-eqz v3, :cond_12

    .line 353
    iget-object v3, v15, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;->actionInputs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;

    .line 354
    .local v4, "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    move-object/from16 v23, v3

    new-instance v3, Landroidx/core/app/RemoteInput$Builder;

    move-object/from16 v24, v5

    const-string v5, "FlutterLocalNotificationsPluginInputResult"

    invoke-direct {v3, v5}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->label:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v5}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v3

    .line 356
    .local v3, "remoteInput":Landroidx/core/app/RemoteInput$Builder;
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    if-eqz v5, :cond_d

    .line 357
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowFreeFormInput:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    .line 360
    :cond_d
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 361
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->allowedMimeTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v5

    move-object/from16 v5, v25

    check-cast v5, Ljava/lang/String;

    .line 362
    .local v5, "mimeType":Ljava/lang/String;
    move-object/from16 v25, v6

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroidx/core/app/RemoteInput$Builder;->setAllowDataType(Ljava/lang/String;Z)Landroidx/core/app/RemoteInput$Builder;

    .line 363
    .end local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v6, v25

    move-object/from16 v5, v26

    goto :goto_a

    .line 361
    :cond_e
    move-object/from16 v25, v6

    goto :goto_b

    .line 360
    :cond_f
    move-object/from16 v25, v6

    .line 365
    :goto_b
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    if-eqz v5, :cond_10

    .line 366
    iget-object v5, v4, Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;->choices:Ljava/util/List;

    move-object/from16 v16, v4

    const/4 v6, 0x0

    .end local v4    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    .local v16, "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    goto :goto_c

    .line 365
    .end local v16    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    .restart local v4    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    :cond_10
    move-object/from16 v16, v4

    const/4 v6, 0x0

    .line 368
    .end local v4    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    .restart local v16    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    :goto_c
    invoke-virtual {v3}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 369
    .end local v3    # "remoteInput":Landroidx/core/app/RemoteInput$Builder;
    .end local v16    # "input":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction$NotificationActionInput;
    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    goto :goto_9

    .line 353
    :cond_11
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    const/4 v6, 0x0

    goto :goto_d

    .line 352
    :cond_12
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    const/4 v6, 0x0

    .line 371
    :goto_d
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 372
    .end local v2    # "actionBuilder":Landroidx/core/app/NotificationCompat$Action$Builder;
    .end local v7    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    .end local v11    # "actionPendingIntent":Landroid/app/PendingIntent;
    .end local v12    # "actionTitleSpannable":Landroid/text/Spannable;
    .end local v13    # "actionIntent":Landroid/content/Intent;
    .end local v15    # "action":Lcom/dexterous/flutterlocalnotifications/models/NotificationAction;
    .end local v20    # "actionFlags":I
    move/from16 v7, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v11, v21

    move/from16 v4, v22

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    goto/16 :goto_2

    .line 296
    .end local v18    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v21    # "requestCode":I
    .end local v22    # "flags":I
    .local v2, "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "flags":I
    .local v11, "requestCode":I
    :cond_13
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v22, v4

    const/4 v6, 0x0

    .end local v2    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":I
    .restart local v18    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v22    # "flags":I
    goto :goto_e

    .line 293
    .end local v11    # "requestCode":I
    .end local v18    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "flags":I
    .restart local v2    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "flags":I
    :cond_14
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v22, v4

    const/4 v6, 0x0

    .line 375
    .end local v2    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":I
    .restart local v18    # "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v22    # "flags":I
    :goto_e
    invoke-static {v0, v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setSmallIcon(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 376
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIcon:Ljava/lang/Object;

    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 377
    invoke-static {v0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBitmapFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 379
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 380
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->color:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 383
    :cond_15
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->colorized:Ljava/lang/Boolean;

    if-eqz v2, :cond_16

    .line 384
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->colorized:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 387
    :cond_16
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->showWhen:Ljava/lang/Boolean;

    if-eqz v2, :cond_17

    .line 388
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->showWhen:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 391
    :cond_17
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->when:Ljava/lang/Long;

    if-eqz v2, :cond_18

    .line 392
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->when:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 395
    :cond_18
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->usesChronometer:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    .line 396
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->usesChronometer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 399
    :cond_19
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->chronometerCountDown:Ljava/lang/Boolean;

    if-eqz v2, :cond_1a

    .line 400
    nop

    .line 401
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->chronometerCountDown:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChronometerCountDown(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 405
    :cond_1a
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->fullScreenIntent:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 406
    const/4 v2, 0x1

    invoke-virtual {v10, v8, v2}, Landroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 409
    :cond_1b
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->shortcutId:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 410
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->shortcutId:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 413
    :cond_1c
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->subText:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 414
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->subText:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 417
    :cond_1d
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->number:Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    .line 418
    iget-object v2, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->number:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 421
    :cond_1e
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setVisibility(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 422
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applyGrouping(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 423
    invoke-static {v0, v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setSound(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 424
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setVibrationPattern(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 425
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setLights(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 426
    invoke-static {v0, v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 427
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setProgress(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 428
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setCategory(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 429
    invoke-static {v1, v10}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setTimeoutAfter(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 430
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 431
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->additionalFlags:[I

    if-eqz v3, :cond_1f

    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->additionalFlags:[I

    array-length v3, v3

    if-lez v3, :cond_1f

    .line 433
    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->additionalFlags:[I

    array-length v4, v3

    move v12, v6

    :goto_f
    if-ge v12, v4, :cond_1f

    aget v5, v3, v12

    .line 434
    .local v5, "additionalFlag":I
    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/2addr v6, v5

    iput v6, v2, Landroid/app/Notification;->flags:I

    .line 433
    .end local v5    # "additionalFlag":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 437
    :cond_1f
    return-object v2
.end method

.method private createNotificationChannel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1966
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1967
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1968
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    move-result-object v1

    .line 1969
    .local v1, "notificationChannelDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupNotificationChannel(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;)V

    .line 1970
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1971
    return-void
.end method

.method private createNotificationChannelGroup(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1938
    nop

    .line 1939
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1940
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 1941
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;->from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;

    move-result-object v1

    .line 1942
    .local v1, "notificationChannelGroupDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1943
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1944
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/NotificationChannelGroup;

    iget-object v4, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;->id:Ljava/lang/String;

    iget-object v5, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1947
    .local v3, "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 1948
    iget-object v4, v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    .line 1950
    :cond_0
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 1952
    .end local v0    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "notificationChannelGroupDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelGroupDetails;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notificationChannelGroup":Landroid/app/NotificationChannelGroup;
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1953
    return-void
.end method

.method private deleteNotificationChannel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1974
    nop

    .line 1975
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1976
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1977
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1978
    .local v1, "channelId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 1980
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "channelId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1981
    return-void
.end method

.method private deleteNotificationChannelGroup(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1956
    nop

    .line 1957
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1958
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1959
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1960
    .local v1, "groupId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    .line 1962
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "groupId":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1963
    return-void
.end method

.method private describeIcon(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/Map;
    .locals 5
    .param p1, "icon"    # Landroidx/core/graphics/drawable/IconCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/graphics/drawable/IconCompat;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2059
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2060
    return-object v0

    .line 2064
    :cond_0
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2081
    :pswitch_0
    return-object v0

    .line 2077
    :pswitch_1
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ContentUri:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 2078
    .local v0, "source":Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2079
    .local v1, "data":Ljava/lang/Object;
    goto :goto_0

    .line 2066
    .end local v0    # "source":Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    .end local v1    # "data":Ljava/lang/Object;
    :pswitch_2
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 2067
    .restart local v0    # "source":Lcom/dexterous/flutterlocalnotifications/models/IconSource;
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v1

    .line 2068
    .local v1, "resId":I
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 2069
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2070
    nop

    .line 2071
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2072
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 2073
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2074
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 2075
    .local v3, "data":Ljava/lang/Object;
    move-object v1, v3

    .line 2083
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "data":Ljava/lang/Object;
    .local v1, "data":Ljava/lang/Object;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2084
    .local v2, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "source"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    const-string v3, "data"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    return-object v2

    .line 2070
    .local v1, "resId":I
    .local v2, "context":Landroid/content/Context;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2069
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private describePerson(Landroidx/core/app/Person;)Ljava/util/Map;
    .locals 3
    .param p1, "person"    # Landroidx/core/app/Person;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/Person;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2045
    if-nez p1, :cond_0

    .line 2046
    const/4 v0, 0x0

    return-object v0

    .line 2048
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2049
    .local v0, "payload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    invoke-virtual {p1}, Landroidx/core/app/Person;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string v1, "name"

    invoke-virtual {p1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    const-string v1, "uri"

    invoke-virtual {p1}, Landroidx/core/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    invoke-virtual {p1}, Landroidx/core/app/Person;->isBot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "bot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    invoke-virtual {p1}, Landroidx/core/app/Person;->isImportant()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "important"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    invoke-virtual {p1}, Landroidx/core/app/Person;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->describeIcon(Landroidx/core/graphics/drawable/IconCompat;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "icon"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2055
    return-object v0
.end method

.method private extractNotificationDetails(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .locals 3
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;"
        }
    .end annotation

    .line 1680
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    move-result-object v0

    .line 1681
    .local v0, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->icon:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidIcon(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIcon:Ljava/lang/Object;

    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 1682
    invoke-direct {p0, p1, v1, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidLargeIcon(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1684
    invoke-direct {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidBigPictureResources(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1685
    invoke-direct {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidRawSoundResource(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1686
    invoke-direct {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidLedDetails(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    return-object v0

    .line 1687
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 625
    const-string v0, "notificationId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 626
    .local v2, "notificationId":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v3, "notificationResponseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v0, "notificationTag"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v0, "actionId"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    nop

    .line 632
    const-string v0, "payload"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 630
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 635
    .local v0, "remoteInput":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 636
    const-string v4, "FlutterLocalNotificationsPluginInputResult"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "input"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    const-string v4, "SELECT_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "notificationResponseType"

    if-eqz v4, :cond_1

    .line 640
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_1
    const-string v1, "SELECT_FOREGROUND_NOTIFICATION"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_2
    return-object v3
.end method

.method private static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1
    .param p0, "html"    # Ljava/lang/String;

    .line 538
    if-nez p0, :cond_0

    .line 539
    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    nop

    .line 542
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private getActiveNotificationMessagingStyle(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 19
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1984
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "person"

    .line 1991
    iget-object v3, v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1992
    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1994
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1995
    .local v4, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1996
    .local v5, "id":I
    const-string v6, "tag"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1998
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 1999
    .local v7, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    const/4 v8, 0x0

    .line 2000
    .local v8, "notification":Landroid/app/Notification;
    array-length v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_2

    :try_start_1
    aget-object v11, v7, v10

    .line 2001
    .local v11, "activeNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v12

    if-ne v12, v5, :cond_1

    if-eqz v6, :cond_0

    .line 2002
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2003
    :cond_0
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    move-object v8, v9

    .line 2004
    goto :goto_1

    .line 2000
    .end local v11    # "activeNotification":Landroid/service/notification/StatusBarNotification;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2036
    .end local v4    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "id":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    .end local v8    # "notification":Landroid/app/Notification;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 2008
    .restart local v4    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "id":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    .restart local v8    # "notification":Landroid/app/Notification;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 2009
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2010
    return-void

    .line 2013
    :cond_3
    nop

    .line 2014
    :try_start_2
    invoke-static {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;->extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2015
    .local v10, "messagingStyle":Landroidx/core/app/NotificationCompat$MessagingStyle;
    if-nez v10, :cond_4

    .line 2016
    :try_start_3
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2017
    return-void

    .line 2020
    :cond_4
    :try_start_4
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2021
    .local v9, "stylePayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "groupConversation"

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->isGroupConversation()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getUser()Landroidx/core/app/Person;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->describePerson(Landroidx/core/app/Person;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string v11, "conversationTitle"

    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2026
    .local v11, "messagesPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v10}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    .line 2027
    .local v13, "msg":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2028
    .local v14, "msgPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "text"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v3

    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .local v16, "notificationManager":Landroid/app/NotificationManager;
    :try_start_5
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v14, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    const-string v3, "timestamp"

    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getPerson()Landroidx/core/app/Person;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->describePerson(Landroidx/core/app/Person;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v14, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2032
    move-object/from16 v3, v16

    .end local v13    # "msg":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .end local v14    # "msgPayload":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_2

    .line 2033
    .end local v16    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_5
    move-object/from16 v16, v3

    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v16    # "notificationManager":Landroid/app/NotificationManager;
    const-string v0, "messages"

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    invoke-interface {v2, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2041
    .end local v4    # "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "id":I
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    .end local v8    # "notification":Landroid/app/Notification;
    .end local v9    # "stylePayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "messagingStyle":Landroidx/core/app/NotificationCompat$MessagingStyle;
    .end local v11    # "messagesPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_4

    .line 2036
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v16    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v3    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 2037
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v16    # "notificationManager":Landroid/app/NotificationManager;
    :goto_3
    nop

    .line 2039
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 2040
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 2037
    const-string v5, "getActiveNotificationMessagingStyleError"

    invoke-interface {v2, v5, v3, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2042
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method

.method private getActiveNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 11
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1549
    nop

    .line 1553
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1554
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1556
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1557
    .local v1, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    .local v2, "activeNotificationsPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 1560
    .local v5, "activeNotification":Landroid/service/notification/StatusBarNotification;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1561
    .local v6, "activeNotificationPayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "id"

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 1563
    .local v7, "notification":Landroid/app/Notification;
    nop

    .line 1564
    const-string v8, "channelId"

    invoke-virtual {v7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string v8, "tag"

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    const-string v8, "groupKey"

    invoke-virtual {v7}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const-string v8, "title"

    iget-object v9, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.title"

    .line 1570
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1569
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-string v8, "body"

    iget-object v9, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.text"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-string v8, "bigText"

    iget-object v9, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.bigText"

    .line 1573
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1572
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    nop

    .end local v5    # "activeNotification":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "activeNotificationPayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "notification":Landroid/app/Notification;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    .end local v1    # "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    .end local v2    # "activeNotificationsPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_1

    .line 1577
    :catchall_0
    move-exception v1

    .line 1578
    .local v1, "e":Ljava/lang/Throwable;
    nop

    .line 1580
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 1578
    const-string v4, "unsupported_os_version"

    invoke-interface {p1, v4, v2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1583
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1252
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method private static getBitmapFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "bitmapSource"    # Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p2, v1, :cond_0

    .line 839
    nop

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 840
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 842
    :cond_0
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->FilePath:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p2, v1, :cond_1

    .line 843
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 844
    :cond_1
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p2, v1, :cond_2

    .line 845
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->castObjectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 846
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 849
    .end local v1    # "byteArray":[B
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .line 651
    const/high16 v0, 0x8000000

    .line 652
    .local v0, "flags":I
    nop

    .line 653
    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    .line 655
    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getCallbackHandle(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1672
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;->getCallbackHandle()Ljava/lang/Long;

    move-result-object v0

    .line 1673
    .local v0, "handle":Ljava/lang/Long;
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1674
    return-void
.end method

.method private static getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIconFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/IconSource;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "iconSource"    # Lcom/dexterous/flutterlocalnotifications/models/IconSource;

    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, "icon":Landroidx/core/graphics/drawable/IconCompat;
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$IconSource:[I

    invoke-virtual {p2}, Lcom/dexterous/flutterlocalnotifications/models/IconSource;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 879
    :pswitch_0
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->castObjectToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 880
    .local v1, "byteArray":[B
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/drawable/IconCompat;->createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    .line 867
    .end local v1    # "byteArray":[B
    :pswitch_1
    :try_start_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v1

    .line 868
    .local v1, "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    nop

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 870
    .local v2, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    .line 871
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    move-object v0, v4

    .line 872
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 873
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .end local v1    # "flutterLoader":Lio/flutter/embedding/engine/loader/FlutterLoader;
    .end local v2    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    .line 875
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 863
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 864
    goto :goto_0

    .line 860
    :pswitch_3
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 861
    goto :goto_0

    .line 856
    :pswitch_4
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 857
    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 858
    nop

    .line 884
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 988
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 990
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private getMappedNotificationChannel(Landroid/app/NotificationChannel;)Ljava/util/HashMap;
    .locals 13
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationChannel;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2110
    .local v0, "channelPayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 2111
    const-string v1, "id"

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    const-string v1, "name"

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    const-string v1, "description"

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    const-string v1, "groupId"

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "showBadge"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "importance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 2118
    .local v1, "soundUri":Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "playSound"

    const-string v5, "sound"

    if-nez v1, :cond_0

    .line 2119
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2122
    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->values()[Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 2124
    .local v7, "soundSources":Ljava/util/List;, "Ljava/util/List<Lcom/dexterous/flutterlocalnotifications/models/SoundSource;>;"
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.resource"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "soundSource"

    if-eqz v8, :cond_3

    .line 2125
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2126
    .local v8, "splitUri":[Ljava/lang/String;
    array-length v10, v8

    sub-int/2addr v10, v6

    aget-object v6, v8, v10

    .line 2127
    .local v6, "resource":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 2128
    .local v10, "resourceId":Ljava/lang/Integer;
    if-nez v10, :cond_1

    .line 2129
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->RawResource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2134
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v11

    .line 2136
    .local v11, "resourceName":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 2137
    sget-object v12, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->RawResource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    invoke-interface {v7, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    .end local v11    # "resourceName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 2140
    :catch_0
    move-exception v9

    .line 2141
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    .end local v6    # "resource":Ljava/lang/String;
    .end local v8    # "splitUri":[Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "resourceId":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    .line 2146
    :cond_3
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->Uri:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2150
    .end local v7    # "soundSources":Ljava/util/List;, "Ljava/util/List<Lcom/dexterous/flutterlocalnotifications/models/SoundSource;>;"
    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enableVibration"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    const-string v2, "vibrationPattern"

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "enableLights"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ledColor"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 2155
    .local v2, "audioAttributes":Landroid/media/AudioAttributes;
    nop

    .line 2157
    if-nez v2, :cond_4

    .line 2158
    const/4 v3, 0x5

    goto :goto_2

    .line 2159
    :cond_4
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    .line 2157
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2155
    const-string v4, "audioAttributesUsage"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    .end local v1    # "soundUri":Landroid/net/Uri;
    .end local v2    # "audioAttributes":Landroid/media/AudioAttributes;
    return-object v0
.end method

.method private static getNextFireDate(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Ljava/lang/String;
    .locals 4
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1298
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledNotificationRepeatFrequency:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Daily:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    const-wide/16 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1301
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1302
    .local v0, "localDateTime":Ljava/time/LocalDateTime;
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1303
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledNotificationRepeatFrequency:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;->Weekly:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    if-ne v0, v1, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1306
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusWeeks(J)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1307
    .restart local v0    # "localDateTime":Ljava/time/LocalDateTime;
    sget-object v1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1309
    .end local v0    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNextFireDateMatchingDateTimeComponents(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Ljava/lang/String;
    .locals 10
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1314
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeZoneName:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v8

    .line 1315
    .local v8, "zoneId":Ljava/time/ZoneId;
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1316
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0, v8}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 1317
    .local v0, "scheduledDateTime":Ljava/time/ZonedDateTime;
    invoke-static {v8}, Ljava/time/ZonedDateTime;->now(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v9

    .line 1318
    .local v9, "now":Ljava/time/ZonedDateTime;
    nop

    .line 1320
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v1

    .line 1321
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v2

    .line 1322
    invoke-virtual {v9}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v3

    .line 1323
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v4

    .line 1324
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v5

    .line 1325
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v6

    .line 1326
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v7

    .line 1319
    invoke-static/range {v1 .. v8}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 1328
    .local v1, "nextFireDate":Ljava/time/ZonedDateTime;
    :goto_0
    invoke-virtual {v1, v9}, Ljava/time/ZonedDateTime;->isBefore(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    .line 1330
    invoke-virtual {v1, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_0

    .line 1332
    :cond_0
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->Time:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-ne v2, v5, :cond_1

    .line 1333
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1334
    :cond_1
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfWeekAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-ne v2, v5, :cond_3

    .line 1335
    :goto_1
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v5

    if-eq v2, v5, :cond_2

    .line 1336
    invoke-virtual {v1, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_1

    .line 1338
    :cond_2
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1339
    :cond_3
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DayOfMonthAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-ne v2, v5, :cond_5

    .line 1341
    :goto_2
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    if-eq v2, v5, :cond_4

    .line 1342
    invoke-virtual {v1, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_2

    .line 1344
    :cond_4
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1345
    :cond_5
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    sget-object v5, Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;->DateAndTime:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-ne v2, v5, :cond_8

    .line 1346
    :goto_3
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v5

    if-ne v2, v5, :cond_7

    .line 1347
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    if-eq v2, v5, :cond_6

    goto :goto_4

    .line 1350
    :cond_6
    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1348
    :cond_7
    :goto_4
    invoke-virtual {v1, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_3

    .line 1352
    :cond_8
    const/4 v2, 0x0

    return-object v2
.end method

.method private getNotificationAppLaunchDetails(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1632
    .local v0, "notificationAppLaunchDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1633
    .local v2, "notificationLaunchedApp":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 1634
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1635
    .local v3, "launchIntent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 1637
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SELECT_NOTIFICATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1638
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SELECT_FOREGROUND_NOTIFICATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1639
    :cond_0
    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->launchedActivityFromHistory(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1636
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1640
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1641
    nop

    .line 1642
    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 1641
    const-string v4, "notificationResponse"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    .end local v3    # "launchIntent":Landroid/content/Intent;
    :cond_2
    const-string v1, "notificationLaunchedApp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1648
    return-void
.end method

.method private getNotificationChannels(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2091
    :try_start_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 2092
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 2093
    .local v0, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    .line 2094
    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2095
    .local v2, "channelsPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2096
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-direct {p0, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getMappedNotificationChannel(Landroid/app/NotificationChannel;)Ljava/util/HashMap;

    move-result-object v5

    .line 2097
    .local v5, "channelPayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    nop

    .end local v4    # "channel":Landroid/app/NotificationChannel;
    .end local v5    # "channelPayload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 2099
    :cond_0
    invoke-interface {p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    .end local v0    # "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    .end local v1    # "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .end local v2    # "channelsPayload":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_1

    .line 2100
    :catchall_0
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/Throwable;
    nop

    .line 2103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 2104
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 2101
    const-string v3, "getNotificationChannelsError"

    invoke-interface {p1, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2106
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1356
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private hasInvalidBigPictureResources(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z
    .locals 6
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1724
    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->BigPicture:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 1725
    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;

    .line 1727
    .local v0, "bigPictureStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIcon:Ljava/lang/Object;

    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    invoke-direct {p0, p1, v1, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->hasInvalidLargeIcon(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1730
    return v3

    .line 1732
    :cond_0
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne v1, v4, :cond_2

    .line 1733
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPicture:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1734
    .local v1, "bigPictureResourceName":Ljava/lang/String;
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1735
    const-string v5, "invalid_big_picture"

    invoke-static {v4, v1, p1, v5}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->isValidDrawableResource(Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    .line 1734
    :goto_0
    return v2

    .line 1737
    .end local v1    # "bigPictureResourceName":Ljava/lang/String;
    :cond_2
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->FilePath:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne v1, v4, :cond_3

    .line 1738
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPicture:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1739
    .local v1, "largeIconPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1740
    .end local v1    # "largeIconPath":Ljava/lang/String;
    :cond_3
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne v1, v4, :cond_6

    .line 1741
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPicture:Ljava/lang/Object;

    check-cast v1, [B

    .line 1742
    .local v1, "byteArray":[B
    if-eqz v1, :cond_4

    array-length v4, v1

    if-nez v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2

    .line 1745
    .end local v0    # "bigPictureStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;
    .end local v1    # "byteArray":[B
    :cond_6
    return v2
.end method

.method private hasInvalidIcon(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "icon"    # Ljava/lang/String;

    .line 1765
    invoke-static {p2}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1766
    const-string v1, "invalid_icon"

    invoke-static {v0, p2, p1, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->isValidDrawableResource(Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1765
    :goto_0
    return v0
.end method

.method private hasInvalidLargeIcon(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Z
    .locals 5
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "largeIcon"    # Ljava/lang/Object;
    .param p3, "largeIconBitmapSource"    # Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 1750
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->FilePath:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 1757
    :cond_0
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->ByteArray:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p3, v0, :cond_2

    .line 1758
    move-object v0, p2

    check-cast v0, [B

    .line 1759
    .local v0, "byteArray":[B
    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 1761
    .end local v0    # "byteArray":[B
    :cond_2
    return v2

    .line 1752
    :cond_3
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1753
    .local v0, "largeIconPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;->DrawableResource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    if-ne p3, v3, :cond_4

    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1755
    const-string v4, "invalid_large_icon"

    invoke-static {v3, v0, p1, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->isValidDrawableResource(Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 1753
    :goto_2
    return v1
.end method

.method private hasInvalidLedDetails(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z
    .locals 3
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1694
    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOnMs:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOffMs:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 1696
    :cond_0
    const-string v0, "Must specify both ledOnMs and ledOffMs to configure the blink cycle on older versions of Android before Oreo"

    const/4 v1, 0x0

    const-string v2, "invalid_led_details"

    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1697
    const/4 v0, 0x1

    return v0

    .line 1699
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasInvalidRawSoundResource(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Z
    .locals 4
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p2, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1704
    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->RawResource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    if-ne v0, v1, :cond_1

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1709
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1710
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "raw"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1711
    .local v0, "soundResourceId":I
    if-nez v0, :cond_1

    .line 1712
    iget-object v1, p2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1714
    const-string v2, "The resource %s could not be found. Please make sure it has been added as a raw resource to your Android head project."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1712
    const-string v2, "invalid_sound"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1716
    const/4 v1, 0x1

    return v1

    .line 1719
    .end local v0    # "soundResourceId":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initialize(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1651
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1652
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "defaultIcon"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1653
    .local v2, "defaultIcon":Ljava/lang/String;
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const-string v4, "invalid_icon"

    invoke-static {v3, v2, p2, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->isValidDrawableResource(Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1655
    return-void

    .line 1658
    :cond_0
    const-string v3, "dispatcher_handle"

    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    .line 1659
    .local v3, "dispatcherHandle":Ljava/lang/Long;
    const-string v4, "callback_handle"

    invoke-virtual {p1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/dexterous/flutterlocalnotifications/utils/LongUtils;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v4

    .line 1660
    .local v4, "callbackHandle":Ljava/lang/Long;
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 1661
    new-instance v5, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;

    iget-object v6, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3, v4}, Lcom/dexterous/flutterlocalnotifications/isolate/IsolatePreferences;->saveCallbackKeys(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1664
    :cond_1
    iget-object v5, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1665
    const-string v6, "notification_plugin_cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1666
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1667
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1668
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1669
    return-void
.end method

.method private static isValidDrawableResource(Landroid/content/Context;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 1257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1258
    .local v0, "resourceId":I
    if-nez v0, :cond_0

    .line 1259
    const-string v1, "The resource %s could not be found. Please make sure it has been added as a drawable resource to your Android head project."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, p3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1260
    const/4 v1, 0x0

    return v1

    .line 1262
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static launchedActivityFromHistory(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1360
    if-eqz p0, :cond_0

    .line 1361
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1360
    :goto_0
    return v0
.end method

.method private static loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    nop

    .line 504
    const-string v1, "scheduled_notifications"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 505
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "json":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 507
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v3

    .line 508
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$1;

    invoke-direct {v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$1;-><init>()V

    invoke-virtual {v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 509
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    .line 511
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "type":Ljava/lang/reflect/Type;
    :cond_0
    return-object v0
.end method

.method private pendingNotificationRequests(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1533
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1534
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1535
    .local v0, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v1, "pendingNotifications":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1538
    .local v3, "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1539
    .local v4, "pendingNotification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "id"

    iget-object v6, v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    const-string v5, "title"

    iget-object v6, v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    const-string v5, "body"

    iget-object v6, v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->body:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string v5, "payload"

    iget-object v6, v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->payload:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    .end local v3    # "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .end local v4    # "pendingNotification":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 1545
    :cond_0
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1546
    return-void
.end method

.method private processForegroundNotificationAction(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1931
    .local p2, "notificationResponse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "cancelNotification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 1933
    const-string v1, "notificationId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 1935
    :cond_0
    return-void
.end method

.method static removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationId"    # Ljava/lang/Integer;

    .line 525
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 526
    .local v0, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 528
    .local v2, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 530
    goto :goto_1

    .line 532
    .end local v2    # "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    :cond_0
    goto :goto_0

    .line 533
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 534
    return-void
.end method

.method private repeat(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1594
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationDetails(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    move-result-object v0

    .line 1595
    .local v0, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    if-eqz v0, :cond_0

    .line 1597
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->repeatNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    .line 1598
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    goto :goto_0

    .line 1599
    :catch_0
    move-exception v2

    .line 1600
    .local v2, "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->code:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1603
    .end local v2    # "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static repeatNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "updateScheduledNotificationsCache"    # Ljava/lang/Boolean;

    .line 662
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->calculateRepeatIntervalMilliseconds(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)J

    move-result-wide v4

    .line 664
    .local v4, "repeatInterval":J
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->calledAt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 665
    .local v0, "notificationTriggerTime":J
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

    if-eqz v2, :cond_1

    .line 666
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 667
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 668
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

    iget-object v3, v3, Lcom/dexterous/flutterlocalnotifications/models/Time;->hour:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 669
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

    iget-object v3, v3, Lcom/dexterous/flutterlocalnotifications/models/Time;->minute:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xc

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 670
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatTime:Lcom/dexterous/flutterlocalnotifications/models/Time;

    iget-object v3, v3, Lcom/dexterous/flutterlocalnotifications/models/Time;->second:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xd

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 671
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->day:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 672
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->day:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x7

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 675
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 678
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_1
    nop

    .line 679
    invoke-static {v0, v1, v4, v5}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->calculateNextNotificationTrigger(JJ)J

    move-result-wide v2

    .line 681
    .end local v0    # "notificationTriggerTime":J
    .local v2, "notificationTriggerTime":J
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v7

    .line 682
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 683
    .local v8, "notificationDetailsJson":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v9, v0

    .line 684
    .local v9, "notificationIntent":Landroid/content/Intent;
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 686
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v9}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 687
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 689
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-nez v1, :cond_2

    .line 694
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->inexact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    iput-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 697
    :cond_2
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v1}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useAllowWhileIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 698
    invoke-static {p1, v0, v2, v3, v6}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupAllowWhileIdleAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 701
    :cond_3
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 705
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 708
    :cond_4
    return-void
.end method

.method static rescheduleNotifications(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 220
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 223
    .local v2, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    :try_start_0
    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatInterval:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatIntervalMilliseconds:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeZoneName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 227
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 229
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->scheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 225
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->repeatNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_2
    goto :goto_3

    .line 231
    :catch_0
    move-exception v3

    .line 232
    .local v3, "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;
    const-string v4, "FLTLocalNotifPlugin"

    invoke-virtual {v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v4, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-static {p0, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 235
    .end local v2    # "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .end local v3    # "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;
    :goto_3
    goto :goto_0

    .line 236
    :cond_3
    return-void
.end method

.method private static retrieveSoundResourceUri(Landroid/content/Context;Ljava/lang/String;Lcom/dexterous/flutterlocalnotifications/models/SoundSource;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "soundSource"    # Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1242
    :cond_0
    if-eqz p2, :cond_2

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->RawResource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 1244
    :cond_1
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/models/SoundSource;->Uri:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    if-ne p2, v1, :cond_3

    .line 1245
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1243
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1248
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static saveScheduledNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 803
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->loadScheduledNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 804
    .local v0, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v1, "scheduledNotificationsToSave":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 806
    .local v3, "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    iget-object v4, v3, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 807
    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    .end local v3    # "scheduledNotification":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    goto :goto_0

    .line 811
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 813
    return-void
.end method

.method private static saveScheduledNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;",
            ">;)V"
        }
    .end annotation

    .line 516
    .local p1, "scheduledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;>;"
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 517
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "json":Ljava/lang/String;
    nop

    .line 519
    const-string v2, "scheduled_notifications"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 520
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 521
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    return-void
.end method

.method static scheduleNextNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 240
    :try_start_0
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledNotificationRepeatFrequency:Lcom/dexterous/flutterlocalnotifications/models/ScheduledNotificationRepeatFrequency;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNextNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    goto :goto_1

    .line 242
    :cond_0
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-eqz v0, :cond_1

    .line 243
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNextNotificationMatchingDateComponents(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    goto :goto_1

    .line 244
    :cond_1
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatInterval:Lcom/dexterous/flutterlocalnotifications/models/RepeatInterval;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->repeatIntervalMilliseconds:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_1

    .line 246
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->scheduleNextRepeatingNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    :try_end_0
    .catch Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    goto :goto_2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;
    const-string v1, "FLTLocalNotifPlugin"

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->removeNotificationFromCache(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 254
    .end local v0    # "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$ExactAlarmPermissionException;
    :goto_2
    return-void
.end method

.method private static scheduleNextRepeatingNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 600
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->calculateRepeatIntervalMilliseconds(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)J

    move-result-wide v0

    .line 601
    .local v0, "repeatInterval":J
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->calledAt:Ljava/lang/Long;

    .line 602
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->calculateNextNotificationTrigger(JJ)J

    move-result-wide v2

    .line 603
    .local v2, "notificationTriggerTime":J
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v4

    .line 604
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 605
    .local v5, "notificationDetailsJson":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .local v6, "notificationIntent":Landroid/content/Intent;
    sget-object v7, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    iget-object v7, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 608
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7, v6}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 609
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v8

    .line 610
    .local v8, "alarmManager":Landroid/app/AlarmManager;
    iget-object v9, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-nez v9, :cond_0

    .line 615
    sget-object v9, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exactAllowWhileIdle:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    iput-object v9, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 618
    :cond_0
    invoke-static {p1, v8, v2, v3, v7}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupAllowWhileIdleAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 621
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 622
    return-void
.end method

.method private static scheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "updateScheduledNotificationsCache"    # Ljava/lang/Boolean;

    .line 554
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 555
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "notificationDetailsJson":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v2, "notificationIntent":Landroid/content/Intent;
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 559
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 561
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v4

    .line 562
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    iget-object v5, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->millisecondsSinceEpoch:Ljava/lang/Long;

    .line 565
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 562
    invoke-static {p1, v4, v5, v6, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 568
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 571
    :cond_0
    return-void
.end method

.method private sendNotificationPayloadMessage(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1916
    const-string v0, "SELECT_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SELECT_FOREGROUND_NOTIFICATION"

    if-nez v0, :cond_1

    .line 1917
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1926
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1918
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    .line 1919
    .local v0, "notificationResponse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1920
    invoke-direct {p0, p1, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->processForegroundNotificationAction(Landroid/content/Intent;Ljava/util/Map;)V

    .line 1922
    :cond_2
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "didReceiveNotificationResponse"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1923
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "flutterActivity"    # Landroid/app/Activity;

    .line 1366
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1367
    return-void
.end method

.method private static setBigPictureStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1032
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;

    .line 1034
    .local v0, "bigPictureStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;
    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 1035
    .local v1, "bigPictureStyle":Landroidx/core/app/NotificationCompat$BigPictureStyle;
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->contentTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1037
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->htmlFormatContentTitle:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->contentTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->contentTitle:Ljava/lang/String;

    :goto_0
    nop

    .line 1040
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1042
    .end local v2    # "contentTitle":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->summaryText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1044
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->htmlFormatSummaryText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->summaryText:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_1

    .line 1046
    :cond_2
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->summaryText:Ljava/lang/String;

    :goto_1
    nop

    .line 1047
    .local v2, "summaryText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1050
    .end local v2    # "summaryText":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->hideExpandedLargeIcon:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1051
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    goto :goto_2

    .line 1053
    :cond_4
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIcon:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1054
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIcon:Ljava/lang/Object;

    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->largeIconBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 1055
    invoke-static {p0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBitmapFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1054
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1061
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPicture:Ljava/lang/Object;

    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigPictureStyleInformation;->bigPictureBitmapSource:Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;

    .line 1062
    invoke-static {p0, v2, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBitmapFromSource(Landroid/content/Context;Ljava/lang/Object;Lcom/dexterous/flutterlocalnotifications/models/BitmapSource;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1061
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 1066
    invoke-virtual {p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1067
    return-void
.end method

.method private static setBigTextStyle(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1165
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;

    .line 1167
    .local v0, "bigTextStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;
    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 1168
    .local v1, "bigTextStyle":Landroidx/core/app/NotificationCompat$BigTextStyle;
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->bigText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1170
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->htmlFormatBigText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->bigText:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->bigText:Ljava/lang/String;

    :goto_0
    nop

    .line 1173
    .local v2, "bigText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 1175
    .end local v2    # "bigText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->contentTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1177
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->htmlFormatContentTitle:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1178
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->contentTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_1

    .line 1179
    :cond_2
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->contentTitle:Ljava/lang/String;

    :goto_1
    nop

    .line 1180
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 1182
    .end local v2    # "contentTitle":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->summaryText:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1184
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->htmlFormatSummaryText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1185
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->summaryText:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_2

    .line 1186
    :cond_4
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/BigTextStyleInformation;->summaryText:Ljava/lang/String;

    :goto_2
    nop

    .line 1187
    .local v2, "summaryText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 1189
    .end local v2    # "summaryText":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1190
    return-void
.end method

.method private setCanScheduleExactNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 2218
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 2221
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2223
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    :goto_0
    return-void
.end method

.method private static setCategory(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 973
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 974
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 977
    return-void
.end method

.method private static setInboxStyle(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1071
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;

    .line 1073
    .local v0, "inboxStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;
    new-instance v1, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 1074
    .local v1, "inboxStyle":Landroidx/core/app/NotificationCompat$InboxStyle;
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->contentTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1076
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatContentTitle:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->contentTitle:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_0

    .line 1078
    :cond_0
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->contentTitle:Ljava/lang/String;

    :goto_0
    nop

    .line 1079
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 1081
    .end local v2    # "contentTitle":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->summaryText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatSummaryText:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1084
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->summaryText:Ljava/lang/String;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    goto :goto_1

    .line 1085
    :cond_2
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->summaryText:Ljava/lang/String;

    :goto_1
    nop

    .line 1086
    .local v2, "summaryText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 1088
    .end local v2    # "summaryText":Ljava/lang/CharSequence;
    :cond_3
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->lines:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 1089
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->lines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1090
    .local v3, "line":Ljava/lang/String;
    iget-object v4, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/InboxStyleInformation;->htmlFormatLines:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 1091
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_2

    .line 1093
    :cond_5
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1094
    return-void
.end method

.method private static setLights(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 949
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableLights:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOnMs:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOffMs:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledColor:Ljava/lang/Integer;

    .line 953
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOnMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->ledOffMs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 952
    invoke-virtual {p1, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    .line 955
    :cond_0
    return-void
.end method

.method private static setMediaStyle(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1
    .param p0, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1097
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 1099
    .local v0, "mediaStyle":Landroidx/media/app/NotificationCompat$MediaStyle;
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1100
    return-void
.end method

.method private static setMessagingStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1106
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->styleInformation:Lcom/dexterous/flutterlocalnotifications/models/styles/StyleInformation;

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;

    .line 1108
    .local v0, "messagingStyleInformation":Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->person:Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;

    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildPerson(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/PersonDetails;)Landroidx/core/app/Person;

    move-result-object v1

    .line 1109
    .local v1, "person":Landroidx/core/app/Person;
    new-instance v2, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v2, v1}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    .line 1111
    .local v2, "messagingStyle":Landroidx/core/app/NotificationCompat$MessagingStyle;
    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->groupConversation:Ljava/lang/Boolean;

    .line 1112
    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v3

    .line 1111
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 1113
    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->conversationTitle:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1114
    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->conversationTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 1116
    :cond_0
    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->messages:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->messages:Ljava/util/ArrayList;

    .line 1117
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1118
    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/models/styles/MessagingStyleInformation;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;

    .line 1119
    .local v4, "messageDetails":Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;
    invoke-static {p0, v4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createMessage(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v5

    .line 1120
    .local v5, "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 1121
    .end local v4    # "messageDetails":Lcom/dexterous/flutterlocalnotifications/models/MessageDetails;
    .end local v5    # "message":Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 1124
    return-void
.end method

.method private static setProgress(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 1020
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->showProgress:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->maxProgress:Ljava/lang/Integer;

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->progress:Ljava/lang/Integer;

    .line 1023
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->indeterminate:Ljava/lang/Boolean;

    .line 1024
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1021
    invoke-virtual {p1, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 1026
    :cond_0
    return-void
.end method

.method private static setSmallIcon(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 465
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->icon:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 468
    :cond_0
    nop

    .line 469
    const-string v0, "notification_plugin_cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "defaultIcon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "defaultIcon":Ljava/lang/String;
    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->iconResourceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 477
    :cond_1
    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 480
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "defaultIcon":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method private static setSound(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 961
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->playSound:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->sound:Ljava/lang/String;

    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    .line 963
    invoke-static {p0, v0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->retrieveSoundResourceUri(Landroid/content/Context;Ljava/lang/String;Lcom/dexterous/flutterlocalnotifications/models/SoundSource;)Landroid/net/Uri;

    move-result-object v0

    .line 965
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 966
    .end local v0    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 967
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 969
    :goto_0
    return-void
.end method

.method private static setStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 997
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$5;->$SwitchMap$com$dexterous$flutterlocalnotifications$models$NotificationStyle:[I

    iget-object v1, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->style:Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;

    invoke-virtual {v1}, Lcom/dexterous/flutterlocalnotifications/models/NotificationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1011
    :pswitch_0
    invoke-static {p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setMediaStyle(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1012
    goto :goto_0

    .line 1008
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setMessagingStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1009
    goto :goto_0

    .line 1005
    :pswitch_2
    invoke-static {p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setInboxStyle(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1006
    goto :goto_0

    .line 1002
    :pswitch_3
    invoke-static {p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setBigTextStyle(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1003
    goto :goto_0

    .line 999
    :pswitch_4
    invoke-static {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setBigPictureStyle(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 1000
    nop

    .line 1016
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setTimeoutAfter(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 981
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeoutAfter:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 982
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeoutAfter:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 985
    return-void
.end method

.method private static setVibrationPattern(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 937
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->enableVibration:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->vibrationPattern:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->vibrationPattern:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->vibrationPattern:[J

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 943
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    .line 945
    :cond_1
    :goto_0
    return-void
.end method

.method private static setVisibility(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "builder"    # Landroidx/core/app/NotificationCompat$Builder;

    .line 895
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->visibility:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 896
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->visibility:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->visibility:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :pswitch_0
    const/4 v0, -0x1

    .line 909
    .local v0, "visibility":I
    goto :goto_0

    .line 905
    .end local v0    # "visibility":I
    :pswitch_1
    const/4 v0, 0x1

    .line 906
    .restart local v0    # "visibility":I
    goto :goto_0

    .line 902
    .end local v0    # "visibility":I
    :pswitch_2
    const/4 v0, 0x0

    .line 903
    .restart local v0    # "visibility":I
    nop

    .line 915
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 916
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setupAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;
    .param p2, "epochMilli"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 716
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    if-nez v0, :cond_0

    .line 721
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->exact:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useAllowWhileIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupAllowWhileIdleAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useExactAlarm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 728
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->checkCanScheduleExactAlarms(Landroid/app/AlarmManager;)V

    .line 729
    invoke-static {p1, v1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useAlarmClock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->checkCanScheduleExactAlarms(Landroid/app/AlarmManager;)V

    .line 733
    invoke-static {p1, p2, p3, p4, p4}, Landroidx/core/app/AlarmManagerCompat;->setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 735
    :cond_3
    invoke-virtual {p1, v1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 738
    :goto_0
    return-void
.end method

.method private static setupAllowWhileIdleAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 2
    .param p0, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;
    .param p2, "epochMilli"    # J
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 745
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useExactAlarm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 746
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->checkCanScheduleExactAlarms(Landroid/app/AlarmManager;)V

    .line 747
    invoke-static {p1, v1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduleMode:Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;

    invoke-virtual {v0}, Lcom/dexterous/flutterlocalnotifications/models/ScheduleMode;->useAlarmClock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->checkCanScheduleExactAlarms(Landroid/app/AlarmManager;)V

    .line 751
    invoke-static {p1, p2, p3, p4, p4}, Landroidx/core/app/AlarmManagerCompat;->setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-static {p1, v1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat;->setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 756
    :goto_0
    return-void
.end method

.method private static setupNotificationChannel(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationChannelDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;

    .line 1194
    nop

    .line 1195
    nop

    .line 1196
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1197
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->importance:Ljava/lang/Integer;

    .line 1201
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1202
    .local v1, "notificationChannel":Landroid/app/NotificationChannel;
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 1203
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 1204
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->playSound:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1206
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->audioAttributesUsage:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1207
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->audioAttributesUsage:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1208
    :cond_0
    const/4 v2, 0x5

    .line 1206
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1209
    .local v2, "audioAttributesUsage":Ljava/lang/Integer;
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1210
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 1211
    .local v3, "audioAttributes":Landroid/media/AudioAttributes;
    iget-object v4, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->sound:Ljava/lang/String;

    iget-object v5, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->soundSource:Lcom/dexterous/flutterlocalnotifications/models/SoundSource;

    .line 1212
    invoke-static {p0, v4, v5}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->retrieveSoundResourceUri(Landroid/content/Context;Ljava/lang/String;Lcom/dexterous/flutterlocalnotifications/models/SoundSource;)Landroid/net/Uri;

    move-result-object v4

    .line 1214
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1215
    .end local v2    # "audioAttributesUsage":Ljava/lang/Integer;
    .end local v3    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 1216
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1218
    :goto_1
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableVibration:Ljava/lang/Boolean;

    .line 1219
    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v2

    .line 1218
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1220
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->vibrationPattern:[J

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->vibrationPattern:[J

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1222
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->vibrationPattern:[J

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 1224
    :cond_2
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->enableLights:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v2

    .line 1225
    .local v2, "enableLights":Z
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1226
    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->ledColor:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 1227
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->ledColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 1229
    :cond_3
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationChannelDetails;->showBadge:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/utils/BooleanUtils;->getValue(Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1230
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1232
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "notificationChannel":Landroid/app/NotificationChannel;
    .end local v2    # "enableLights":Z
    return-void
.end method

.method private show(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1622
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1623
    .local v0, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationDetails(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    move-result-object v1

    .line 1624
    .local v1, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    if-eqz v1, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->showNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 1626
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 1628
    :cond_0
    return-void
.end method

.method static showNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1266
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Landroid/app/Notification;

    move-result-object v0

    .line 1267
    .local v0, "notification":Landroid/app/Notification;
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationManager(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 1269
    .local v1, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 1271
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1270
    invoke-virtual {v1, v2, v3, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 1273
    :cond_0
    iget-object v2, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 1275
    :goto_0
    return-void
.end method

.method private startForegroundService(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 9
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2173
    const-string v0, "notificationData"

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2174
    .local v0, "notificationData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "startType"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2175
    .local v1, "startType":Ljava/lang/Integer;
    const-string v2, "foregroundServiceTypes"

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2176
    .local v2, "foregroundServiceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "ARGUMENT_ERROR"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2201
    :cond_0
    const-string v5, "If foregroundServiceTypes is non-null it must not be empty!"

    invoke-interface {p2, v3, v5, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 2177
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 2178
    nop

    .line 2179
    invoke-direct {p0, p2, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationDetails(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    move-result-object v5

    .line 2180
    .local v5, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    if-eqz v5, :cond_3

    .line 2181
    iget-object v6, v5, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_2

    .line 2182
    new-instance v3, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .line 2184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v5, v6, v2}, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;-><init>(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;ILjava/util/ArrayList;)V

    .line 2185
    .local v3, "parameter":Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const-class v8, Lcom/dexterous/flutterlocalnotifications/ForegroundService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2186
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.dexterous.flutterlocalnotifications.ForegroundServiceStartParameter"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2187
    iget-object v7, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2188
    invoke-interface {p2, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2189
    .end local v3    # "parameter":Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 2190
    :cond_2
    const-string v6, "The id of the notification for a foreground service must not be 0!"

    invoke-interface {p2, v3, v6, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    .end local v5    # "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    :cond_3
    :goto_1
    goto :goto_2

    .line 2197
    :cond_4
    const-string v5, "An argument passed to startForegroundService was null!"

    invoke-interface {p2, v3, v5, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2204
    :goto_2
    return-void
.end method

.method private stopForegroundService(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2207
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/dexterous/flutterlocalnotifications/ForegroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2208
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2209
    return-void
.end method

.method private tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 2166
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2167
    :catch_0
    move-exception v0

    .line 2168
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private zonedSchedule(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1606
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p2, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationDetails(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    move-result-object v0

    .line 1607
    .local v0, "notificationDetails":Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    if-eqz v0, :cond_1

    .line 1608
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->matchDateTimeComponents:Lcom/dexterous/flutterlocalnotifications/models/DateTimeComponents;

    if-eqz v1, :cond_0

    .line 1609
    nop

    .line 1610
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNextFireDateMatchingDateTimeComponents(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1613
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    .line 1614
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    goto :goto_0

    .line 1615
    :catch_0
    move-exception v2

    .line 1616
    .local v2, "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
    iget-object v3, v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->code:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1619
    .end local v2    # "e":Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
    :cond_1
    :goto_0
    return-void
.end method

.method private static zonedScheduleNextNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1279
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNextFireDate(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "nextFireDate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1281
    return-void

    .line 1283
    :cond_0
    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1284
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    .line 1285
    return-void
.end method

.method private static zonedScheduleNextNotificationMatchingDateComponents(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 1289
    invoke-static {p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNextFireDateMatchingDateTimeComponents(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, "nextFireDate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1291
    return-void

    .line 1293
    :cond_0
    iput-object v0, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 1294
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedScheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V

    .line 1295
    return-void
.end method

.method private static zonedScheduleNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Ljava/lang/Boolean;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationDetails"    # Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;
    .param p2, "updateScheduledNotificationsCache"    # Ljava/lang/Boolean;

    .line 577
    invoke-static {}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->buildGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 578
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "notificationDetailsJson":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dexterous/flutterlocalnotifications/ScheduledNotificationReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 580
    .local v2, "notificationIntent":Landroid/content/Intent;
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->NOTIFICATION_DETAILS:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    iget-object v3, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 582
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3, v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getBroadcastPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 583
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v4

    .line 584
    .local v4, "alarmManager":Landroid/app/AlarmManager;
    iget-object v5, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->scheduledDateTime:Ljava/lang/String;

    .line 586
    invoke-static {v5}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v5

    iget-object v6, p1, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->timeZoneName:Ljava/lang/String;

    .line 587
    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    .line 585
    invoke-static {v5, v6}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 588
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 591
    .local v5, "epochMilli":J
    invoke-static {p1, v4, v5, v6, v3}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setupAlarm(Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 593
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 594
    invoke-static {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->saveScheduledNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)V

    .line 596
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 2227
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 2230
    const/4 v0, 0x0

    return v0

    .line 2233
    :cond_0
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v4, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingExactAlarmsPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    if-ne v3, v4, :cond_1

    if-ne p1, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_1

    .line 2236
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    .line 2237
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-virtual {v1}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 2238
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2241
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    :cond_1
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingFullScreenIntentPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    if-ne v1, v3, :cond_2

    if-ne p1, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    .line 2244
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 2245
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2246
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 2247
    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 2250
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return v2
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 1385
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 1386
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 1387
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 1389
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1390
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1391
    .local v0, "mainActivityIntent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->launchedActivityFromHistory(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    const-string v1, "SELECT_FOREGROUND_NOTIFICATION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    nop

    .line 1394
    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->extractNotificationResponseMap(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 1395
    .local v1, "notificationResponse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, v0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->processForegroundNotificationAction(Landroid/content/Intent;Ljava/util/Map;)V

    .line 1398
    .end local v1    # "notificationResponse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 1371
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1372
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "dexterous.com/flutter/local_notifications"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 1373
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 1374
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1416
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1403
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 1378
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 1379
    iput-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 1380
    iput-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1381
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 1420
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "periodicallyShowWithDuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "createNotificationChannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "getActiveNotifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "startForegroundService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "deleteNotificationChannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "canScheduleExactNotifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "areNotificationsEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "initialize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "getCallbackHandle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "createNotificationChannelGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "zonedSchedule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "cancelAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "getActiveNotificationMessagingStyle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "periodicallyShow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_f
    const-string v1, "getNotificationAppLaunchDetails"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_10
    const-string v1, "pendingNotificationRequests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_11
    const-string v1, "requestFullScreenIntentPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_12
    const-string v1, "requestExactAlarmsPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_13
    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_14
    const-string v1, "requestNotificationsPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_15
    const-string v1, "deleteNotificationChannelGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_16
    const-string v1, "getNotificationChannels"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_17
    const-string v1, "stopForegroundService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1527
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_2

    .line 1524
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->stopForegroundService(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1525
    goto/16 :goto_2

    .line 1521
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->startForegroundService(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1522
    goto/16 :goto_2

    .line 1518
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationChannels(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1519
    goto/16 :goto_2

    .line 1515
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getActiveNotificationMessagingStyle(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1516
    goto/16 :goto_2

    .line 1512
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getActiveNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1513
    goto/16 :goto_2

    .line 1509
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->deleteNotificationChannel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1510
    goto :goto_2

    .line 1506
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createNotificationChannel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1507
    goto :goto_2

    .line 1503
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->deleteNotificationChannelGroup(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1504
    goto :goto_2

    .line 1500
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createNotificationChannelGroup(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1501
    goto :goto_2

    .line 1497
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->setCanScheduleExactNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1498
    goto :goto_2

    .line 1494
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->areNotificationsEnabled(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1495
    goto :goto_2

    .line 1491
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->pendingNotificationRequests(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1492
    goto :goto_2

    .line 1488
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->cancelAllNotifications(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1489
    goto :goto_2

    .line 1485
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->cancel(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1486
    goto :goto_2

    .line 1482
    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->repeat(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1483
    goto :goto_2

    .line 1479
    :pswitch_f
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->repeat(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1480
    goto :goto_2

    .line 1465
    :pswitch_10
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;

    invoke-direct {v0, p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$4;-><init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->requestFullScreenIntentPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V

    .line 1477
    goto :goto_2

    .line 1451
    :pswitch_11
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$3;

    invoke-direct {v0, p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$3;-><init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->requestExactAlarmsPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V

    .line 1463
    goto :goto_2

    .line 1437
    :pswitch_12
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;

    invoke-direct {v0, p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$2;-><init>(Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {p0, v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->requestNotificationsPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V

    .line 1449
    goto :goto_2

    .line 1434
    :pswitch_13
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->zonedSchedule(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1435
    goto :goto_2

    .line 1431
    :pswitch_14
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->show(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1432
    goto :goto_2

    .line 1428
    :pswitch_15
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getNotificationAppLaunchDetails(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1429
    goto :goto_2

    .line 1425
    :pswitch_16
    invoke-direct {p0, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getCallbackHandle(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1426
    goto :goto_2

    .line 1422
    :pswitch_17
    invoke-direct {p0, p1, p2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->initialize(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 1423
    nop

    .line 1530
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cf26ff0 -> :sswitch_17
        -0x79b14daf -> :sswitch_16
        -0x6faedf6e -> :sswitch_15
        -0x6a6c56b8 -> :sswitch_14
        -0x5185d186 -> :sswitch_13
        -0x4213ea7f -> :sswitch_12
        -0x38a7ba8b -> :sswitch_11
        -0x2fa1c1fa -> :sswitch_10
        -0xc6f2811 -> :sswitch_f
        0x35dafd -> :sswitch_e
        0x6519b0 -> :sswitch_d
        0x6ea11f4 -> :sswitch_c
        0x1c6788c7 -> :sswitch_b
        0x20b290ef -> :sswitch_a
        0x2db798e3 -> :sswitch_9
        0x31313fc3 -> :sswitch_8
        0x33ebcb90 -> :sswitch_7
        0x3529f5ad -> :sswitch_6
        0x39efff10 -> :sswitch_5
        0x3c1c11ed -> :sswitch_4
        0x47fd1fb0 -> :sswitch_3
        0x5f0f3c4c -> :sswitch_2
        0x628deafc -> :sswitch_1
        0x7ffba24a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1908
    invoke-direct {p0, p1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->sendNotificationPayloadMessage(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1909
    .local v0, "res":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1910
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1912
    :cond_0
    return v0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 1407
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 1408
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 1409
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 1410
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1411
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1894
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingNotificationPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1896
    array-length v1, p3

    if-lez v1, :cond_0

    aget v1, p3, v2

    if-nez v1, :cond_0

    move v2, v0

    .line 1898
    .local v2, "granted":Z
    :cond_0
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v0, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1899
    sget-object v0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1900
    return v2

    .line 1902
    .end local v2    # "granted":Z
    :cond_1
    return v2
.end method

.method public requestExactAlarmsPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V
    .locals 6
    .param p1, "callback"    # Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1834
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    if-eq v0, v1, :cond_0

    .line 1835
    const-string v0, "Another permission request is already in progress"

    invoke-interface {p1, v0}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->fail(Ljava/lang/String;)V

    .line 1836
    return-void

    .line 1839
    :cond_0
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1841
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 1842
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 1843
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v1

    .line 1845
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    .line 1846
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingExactAlarmsPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1847
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1850
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1847
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v3, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1854
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1856
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "permissionGranted":Z
    :goto_0
    goto :goto_1

    .line 1857
    :cond_2
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v0, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1859
    :goto_1
    return-void
.end method

.method public requestFullScreenIntentPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V
    .locals 7
    .param p1, "callback"    # Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1862
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    if-eq v0, v1, :cond_0

    .line 1863
    const-string v0, "Another permission request is already in progress"

    invoke-interface {p1, v0}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->fail(Ljava/lang/String;)V

    .line 1864
    return-void

    .line 1867
    :cond_0
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1869
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    .line 1870
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1871
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1872
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    .line 1873
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->canUseFullScreenIntent()Z

    move-result v3

    .line 1875
    .local v3, "permissionGranted":Z
    if-nez v3, :cond_1

    .line 1876
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingFullScreenIntentPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1877
    iget-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->applicationContext:Landroid/content/Context;

    .line 1880
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT"

    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1877
    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1883
    :cond_1
    iget-object v4, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v4, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1884
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1886
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    .end local v1    # "alarmManager":Landroid/app/AlarmManager;
    .end local v3    # "permissionGranted":Z
    :goto_0
    goto :goto_1

    .line 1887
    :cond_2
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v0, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1889
    :goto_1
    return-void
.end method

.method public requestNotificationsPermission(Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;)V
    .locals 5
    .param p1, "callback"    # Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1806
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    sget-object v1, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    if-eq v0, v1, :cond_0

    .line 1807
    const-string v0, "Another permission request is already in progress"

    invoke-interface {p1, v0}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->fail(Ljava/lang/String;)V

    .line 1808
    return-void

    .line 1811
    :cond_0
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    .line 1813
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_3

    .line 1814
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 1815
    .local v0, "permission":Ljava/lang/String;
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    .line 1816
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1819
    .local v1, "permissionGranted":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1820
    sget-object v3, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->RequestingNotificationPermission:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1821
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 1824
    :cond_2
    iget-object v3, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-interface {v3, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1825
    sget-object v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;->None:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    iput-object v2, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->permissionRequestProgress:Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PermissionRequestProgress;

    .line 1827
    .end local v0    # "permission":Ljava/lang/String;
    .end local v1    # "permissionGranted":Z
    :goto_1
    goto :goto_2

    .line 1828
    :cond_3
    iget-object v0, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 1829
    .local v0, "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    iget-object v1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->callback:Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/dexterous/flutterlocalnotifications/PermissionRequestListener;->complete(Z)V

    .line 1831
    .end local v0    # "notificationManager":Landroidx/core/app/NotificationManagerCompat;
    :goto_2
    return-void
.end method
