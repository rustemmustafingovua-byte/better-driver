.class public Lcom/dexterous/flutterlocalnotifications/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static orCombineFlags(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 43
    .local p0, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 44
    .local v0, "flag":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "com.dexterous.flutterlocalnotifications.ForegroundServiceStartParameter"

    if-lt v0, v1, :cond_0

    .line 18
    const-class v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .line 20
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .local v0, "parameter":Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;
    goto :goto_0

    .line 23
    .end local v0    # "parameter":Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;
    :cond_0
    nop

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;

    .line 28
    .restart local v0    # "parameter":Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;
    :goto_0
    iget-object v1, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    .line 29
    invoke-static {p0, v1}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;->createNotification(Landroid/content/Context;Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;)Landroid/app/Notification;

    move-result-object v1

    .line 30
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->foregroundServiceTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 32
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    iget-object v2, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->foregroundServiceTypes:Ljava/util/ArrayList;

    .line 35
    invoke-static {v3}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->orCombineFlags(Ljava/util/ArrayList;)I

    move-result v3

    .line 32
    invoke-virtual {p0, v2, v1, v3}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_1

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->notificationData:Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;

    iget-object v2, v2, Lcom/dexterous/flutterlocalnotifications/models/NotificationDetails;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/dexterous/flutterlocalnotifications/ForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 39
    :goto_1
    iget v2, v0, Lcom/dexterous/flutterlocalnotifications/ForegroundServiceStartParameter;->startMode:I

    return v2
.end method
