.class public final Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;
.super Ljava/lang/Object;
.source "ForegroundServiceUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u001a\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u001a\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a(\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u001a\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "DEFAULT_NOTIFICATION_CHANNEL_ID",
        "",
        "DEFAULT_NOTIFICATION_CHANNEL_NAME",
        "DEFAULT_NOTIFICATION_TITLE",
        "DEFAULT_NOTIFICATION_TEXT",
        "DEFAULT_NOTIFICATION_ID",
        "",
        "createForegroundInfo",
        "Landroidx/work/ForegroundInfo;",
        "context",
        "Landroid/content/Context;",
        "config",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;",
        "createNotificationChannel",
        "",
        "requireForegroundServicePermission",
        "permission",
        "featureDescription",
        "fixHint",
        "resolveForegroundServiceType",
        "resolveNotificationIcon",
        "workmanager_android_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "workmanager_foreground_tasks"

.field private static final DEFAULT_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Long-running tasks"

.field private static final DEFAULT_NOTIFICATION_ID:I = 0x0

.field private static final DEFAULT_NOTIFICATION_TEXT:Ljava/lang/String; = "Your task is still running"

.field private static final DEFAULT_NOTIFICATION_TITLE:Ljava/lang/String; = "Task in progress"


# direct methods
.method public static final createForegroundInfo(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)Landroidx/work/ForegroundInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->createNotificationChannel(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V

    .line 39
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "workmanager_foreground_tasks"

    :cond_0
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Task in progress"

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Your task is still running"

    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 42
    invoke-static {p0}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->resolveNotificationIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 46
    .local v0, "notification":Landroid/app/Notification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-lt v1, v2, :cond_4

    .line 47
    new-instance v1, Landroidx/work/ForegroundInfo;

    .line 48
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 49
    :cond_3
    nop

    .line 50
    invoke-static {p0, p1}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->resolveForegroundServiceType(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)I

    move-result v2

    .line 47
    invoke-direct {v1, v3, v0, v2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 53
    :cond_4
    new-instance v1, Landroidx/work/ForegroundInfo;

    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v3, v2

    :cond_5
    invoke-direct {v1, v3, v0}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;)V

    .line 46
    :goto_0
    return-object v1
.end method

.method private static final createNotificationChannel(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 65
    nop

    .line 69
    new-instance v0, Landroid/app/NotificationChannel;

    .line 70
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "workmanager_foreground_tasks"

    .line 71
    :cond_0
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Long-running tasks"

    :cond_1
    check-cast v2, Ljava/lang/CharSequence;

    .line 72
    nop

    .line 69
    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 68
    nop

    .line 74
    .local v0, "channel":Landroid/app/NotificationChannel;
    nop

    .line 75
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 76
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 77
    return-void
.end method

.method public static final requireForegroundServicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "featureDescription"    # Ljava/lang/String;
    .param p3, "fixHint"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fixHint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    nop

    .line 100
    nop

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 100
    nop

    .line 101
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    nop

    .line 101
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 97
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    .line 101
    :cond_1
    :goto_0
    nop

    .line 96
    nop

    .line 102
    .local v1, "declared":Z
    if-eqz v1, :cond_2

    .line 108
    return-void

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "workmanager_android: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires the \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' permission in the merged manifest, but it is missing. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    nop

    .line 104
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final resolveForegroundServiceType(Landroid/content/Context;Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;

    .line 114
    invoke-virtual {p1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceConfig;->getForegroundServiceType()Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    .line 115
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 116
    const/16 v1, 0x800

    goto :goto_1

    .line 123
    :cond_1
    nop

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 122
    const-string v0, "android.permission.FOREGROUND_SERVICE_DATA_SYNC"

    const-string v2, "foregroundServiceType=dataSync"

    const-string v3, "Add \'workmanager.enableDataSyncForegroundService=true\' to your gradle.properties (see the workmanager_android README, issue #725)."

    invoke-static {p0, v0, v2, v3}, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;->requireForegroundServicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    nop

    .line 131
    :goto_1
    return v1
.end method

.method private static final resolveNotificationIcon(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 141
    .local v0, "applicationIcon":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const v1, 0x108009b

    :goto_0
    return v1
.end method
