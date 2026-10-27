.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventsBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemEventsBroadcastReceiver"
.end annotation


# static fields
.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0xea60L


# instance fields
.field private final batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final buf:[C

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final scopes:Lio/sentry/IScopes;

.field final synthetic this$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IScopes;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5
    .param p1, "this$0"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
    .param p2, "scopes"    # Lio/sentry/IScopes;
    .param p3, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->this$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 303
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    .line 305
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;JI)V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 351
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->buf:[C

    .line 309
    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->scopes:Lio/sentry/IScopes;

    .line 310
    iput-object p3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 311
    return-void
.end method

.method private createBreadcrumb(JLandroid/content/Intent;Ljava/lang/String;Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Lio/sentry/Breadcrumb;
    .locals 14
    .param p1, "timeMs"    # J
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "batteryState"    # Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    .line 387
    move-object/from16 v1, p4

    new-instance v0, Lio/sentry/Breadcrumb;

    move-wide v2, p1

    invoke-direct {v0, v2, v3}, Lio/sentry/Breadcrumb;-><init>(J)V

    move-object v4, v0

    .line 388
    .local v4, "breadcrumb":Lio/sentry/Breadcrumb;
    const-string v0, "system"

    invoke-virtual {v4, v0}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    .line 389
    const-string v0, "device.event"

    invoke-virtual {v4, v0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->getStringAfterDotFast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "shortAction":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 392
    const-string v0, "action"

    invoke-virtual {v4, v0, v5}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    :cond_0
    if-eqz p5, :cond_2

    .line 396
    invoke-static/range {p5 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->access$100(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "level"

    invoke-static/range {p5 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->access$100(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    :cond_1
    invoke-static/range {p5 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->access$200(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 400
    const-string v0, "charging"

    invoke-static/range {p5 .. p5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->access$200(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 402
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbsExtras()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 404
    .local v6, "extras":Landroid/os/Bundle;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    move-object v7, v0

    .line 406
    .local v7, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 409
    .local v9, "item":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local v0    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 413
    :catchall_0
    move-exception v0

    .line 414
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v10, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 415
    invoke-virtual {v10}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v10

    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    filled-new-array {v9, v1}, [Ljava/lang/Object;

    move-result-object v12

    .line 416
    const-string v13, "%s key of the %s action threw an error."

    invoke-interface {v10, v11, v0, v13, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v9    # "item":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 424
    :cond_4
    const-string v0, "extras"

    invoke-virtual {v4, v0, v7}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v4, v0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 428
    return-object v4
.end method


# virtual methods
.method getStringAfterDotFast(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 356
    if-nez p1, :cond_0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 361
    .local v0, "len":I
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->buf:[C

    array-length v1, v1

    .line 366
    .local v1, "bufIndex":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 367
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 368
    .local v3, "c":C
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1

    .line 369
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->buf:[C

    iget-object v6, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->buf:[C

    array-length v6, v6

    sub-int/2addr v6, v1

    invoke-direct {v4, v5, v1, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 371
    :cond_1
    if-nez v1, :cond_2

    .line 373
    invoke-static {p1}, Lio/sentry/util/StringUtils;->getStringAfterDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 375
    :cond_2
    iget-object v4, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->buf:[C

    add-int/lit8 v1, v1, -0x1

    aput-char v3, v4, v1

    .line 366
    .end local v3    # "c":C
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    :cond_3
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 318
    .local v6, "isBatteryChanged":Z
    const/4 v0, 0x0

    .line 319
    .local v0, "batteryState":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    if-eqz v6, :cond_3

    .line 320
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->batteryChangedDebouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p2, v1}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryLevel(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;

    move-result-object v1

    .line 328
    .local v1, "batteryLevel":Ljava/lang/Float;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 329
    .local v2, "currentBatteryLevel":Ljava/lang/Integer;
    :goto_0
    iget-object v3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p2, v3}, Lio/sentry/android/core/DeviceInfoUtil;->isCharging(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;

    move-result-object v3

    .line 330
    .local v3, "currentChargingState":Ljava/lang/Boolean;
    new-instance v5, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    invoke-direct {v5, v2, v3}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object v0, v5

    .line 333
    iget-object v5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->this$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    invoke-static {v5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->access$000(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;)Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    return-void

    .line 337
    :cond_2
    iget-object v5, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->this$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    invoke-static {v5, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->access$002(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;

    move-object v7, v0

    goto :goto_1

    .line 319
    .end local v1    # "batteryLevel":Ljava/lang/Float;
    .end local v2    # "currentBatteryLevel":Ljava/lang/Integer;
    .end local v3    # "currentChargingState":Ljava/lang/Boolean;
    :cond_3
    move-object v7, v0

    .line 340
    .end local v0    # "batteryState":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    .local v7, "batteryState":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    :goto_1
    move-object v5, v7

    .line 341
    .local v5, "state":Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 342
    .local v1, "now":J
    move-object v0, p0

    move-object v3, p2

    .end local p2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->createBreadcrumb(JLandroid/content/Intent;Ljava/lang/String;Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$BatteryState;)Lio/sentry/Breadcrumb;

    move-result-object p2

    .line 343
    .local p2, "breadcrumb":Lio/sentry/Breadcrumb;
    new-instance v8, Lio/sentry/Hint;

    invoke-direct {v8}, Lio/sentry/Hint;-><init>()V

    .line 344
    .local v8, "hint":Lio/sentry/Hint;
    const-string v9, "android:intent"

    invoke-virtual {v8, v9, v3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v9, v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->scopes:Lio/sentry/IScopes;

    invoke-interface {v9, p2, v8}, Lio/sentry/IScopes;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 346
    return-void
.end method
