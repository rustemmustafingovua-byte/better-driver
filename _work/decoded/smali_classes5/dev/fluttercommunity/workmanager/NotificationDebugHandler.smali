.class public final Ldev/fluttercommunity/workmanager/NotificationDebugHandler;
.super Ldev/fluttercommunity/workmanager/WorkmanagerDebug;
.source "NotificationDebugHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/NotificationDebugHandler$Companion;,
        Ldev/fluttercommunity/workmanager/NotificationDebugHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\"\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J(\u0010 \u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003H\u0002J\u0010\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\n \u0010*\u0004\u0018\u00010\u00030\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/NotificationDebugHandler;",
        "Ldev/fluttercommunity/workmanager/WorkmanagerDebug;",
        "channelId",
        "",
        "channelName",
        "groupKey",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "isUsingDefaultChannel",
        "",
        "startEmoji",
        "retryEmoji",
        "successEmoji",
        "failureEmoji",
        "stopEmoji",
        "currentTime",
        "kotlin.jvm.PlatformType",
        "getCurrentTime",
        "()Ljava/lang/String;",
        "onTaskStatusUpdate",
        "",
        "context",
        "Landroid/content/Context;",
        "taskInfo",
        "Ldev/fluttercommunity/workmanager/TaskDebugInfo;",
        "status",
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        "result",
        "Ldev/fluttercommunity/workmanager/TaskResult;",
        "onExceptionEncountered",
        "exception",
        "",
        "postNotification",
        "notificationId",
        "",
        "title",
        "contentText",
        "createNotificationChannel",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "Companion",
        "workmanager_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Ldev/fluttercommunity/workmanager/NotificationDebugHandler$Companion;

.field private static final debugDateFormatter:Ljava/text/DateFormat;


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelName:Ljava/lang/String;

.field private final failureEmoji:Ljava/lang/String;

.field private final groupKey:Ljava/lang/String;

.field private final isUsingDefaultChannel:Z

.field private final retryEmoji:Ljava/lang/String;

.field private final startEmoji:Ljava/lang/String;

.field private final stopEmoji:Ljava/lang/String;

.field private final successEmoji:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->Companion:Ldev/fluttercommunity/workmanager/NotificationDebugHandler$Companion;

    .line 31
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->debugDateFormatter:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ldev/fluttercommunity/workmanager/WorkmanagerDebug;-><init>()V

    .line 23
    iput-object p1, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->groupKey:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelId:Ljava/lang/String;

    const-string v1, "WorkmanagerDebugChannelId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->isUsingDefaultChannel:Z

    .line 34
    const-string v0, "\u25b6\ufe0f"

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->startEmoji:Ljava/lang/String;

    .line 35
    const-string v0, "\ud83d\udd04"

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->retryEmoji:Ljava/lang/String;

    .line 36
    const-string v0, "\u2705"

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->successEmoji:Ljava/lang/String;

    .line 37
    const-string v0, "\u274c"

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->failureEmoji:Ljava/lang/String;

    .line 38
    const-string v0, "\u23f9\ufe0f"

    iput-object v0, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->stopEmoji:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 23
    const-string p1, "WorkmanagerDebugChannelId"

    .line 22
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 24
    const-string p2, "Workmanager Debug"

    .line 22
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 25
    const/4 p3, 0x0

    .line 22
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private final createNotificationChannel(Landroid/app/NotificationManager;)V
    .locals 4
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;

    .line 158
    nop

    .line 160
    new-instance v0, Landroid/app/NotificationChannel;

    .line 161
    iget-object v1, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelId:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelName:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    .line 163
    nop

    .line 160
    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 159
    nop

    .line 165
    .local v0, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 167
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    return-void
.end method

.method private final getCurrentTime()Ljava/lang/String;
    .locals 2

    .line 39
    sget-object v0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->debugDateFormatter:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final postNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "contentText"    # Ljava/lang/String;

    .line 128
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 131
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-boolean v1, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->isUsingDefaultChannel:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0, v0}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->createNotificationChannel(Landroid/app/NotificationManager;)V

    .line 137
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->channelId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 139
    move-object v2, p4

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 142
    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 143
    move-object v3, p4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Style;

    .line 140
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 144
    const v2, 0x108007c

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 145
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "setPriority(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    nop

    .line 148
    .local v1, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->groupKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$a$-let-NotificationDebugHandler$postNotification$1":I
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 148
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-NotificationDebugHandler$postNotification$1":I
    nop

    .line 152
    :cond_1
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v0, p2, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    return-void
.end method


# virtual methods
.method public onExceptionEncountered(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskInfo"    # Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    .param p3, "exception"    # Ljava/lang/Throwable;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    .line 113
    .local v0, "notificationId":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "unknown"

    .line 114
    .local v1, "taskName":Ljava/lang/String;
    :cond_1
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->failureEmoji:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-direct {p0, p1, v0, v2, v3}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->postNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onTaskStatusUpdate(Landroid/content/Context;Ldev/fluttercommunity/workmanager/TaskDebugInfo;Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;Ldev/fluttercommunity/workmanager/TaskResult;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskInfo"    # Ldev/fluttercommunity/workmanager/TaskDebugInfo;
    .param p3, "status"    # Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .param p4, "result"    # Ldev/fluttercommunity/workmanager/TaskResult;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result v0

    .line 49
    .local v0, "notificationId":I
    sget-object v1, Ldev/fluttercommunity/workmanager/NotificationDebugHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Failed "

    const-wide/16 v3, 0x0

    const/16 v5, 0x73

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 92
    :pswitch_0
    new-instance v1, Lkotlin/Triple;

    .line 93
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->stopEmoji:Ljava/lang/String;

    .line 94
    nop

    .line 95
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string v4, "Cancelled"

    invoke-direct {v1, v2, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 84
    :pswitch_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ldev/fluttercommunity/workmanager/TaskResult;->getDuration()J

    move-result-wide v3

    :cond_0
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 85
    .local v3, "duration":J
    new-instance v1, Lkotlin/Triple;

    .line 86
    iget-object v6, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->failureEmoji:Ljava/lang/String;

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ldev/fluttercommunity/workmanager/TaskResult;->getError()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    const-string v7, "Unknown"

    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-direct {v1, v6, v2, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "duration":J
    goto/16 :goto_3

    .line 75
    :pswitch_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ldev/fluttercommunity/workmanager/TaskResult;->getSuccess()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 76
    .local v1, "success":Z
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ldev/fluttercommunity/workmanager/TaskResult;->getDuration()J

    move-result-wide v3

    :cond_4
    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 77
    .restart local v3    # "duration":J
    new-instance v6, Lkotlin/Triple;

    .line 78
    if-eqz v1, :cond_5

    iget-object v7, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->successEmoji:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v7, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->failureEmoji:Ljava/lang/String;

    .line 79
    :goto_1
    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Success "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_2
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-direct {v6, v7, v2, v5}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v6

    .end local v1    # "success":Z
    .end local v3    # "duration":J
    goto :goto_3

    .line 69
    :pswitch_3
    new-instance v1, Lkotlin/Triple;

    .line 70
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->retryEmoji:Ljava/lang/String;

    .line 71
    nop

    .line 72
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string v4, "Rescheduled"

    invoke-direct {v1, v2, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 63
    :pswitch_4
    new-instance v1, Lkotlin/Triple;

    .line 64
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->retryEmoji:Ljava/lang/String;

    .line 65
    nop

    .line 66
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string v4, "Retrying"

    invoke-direct {v1, v2, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 57
    :pswitch_5
    new-instance v1, Lkotlin/Triple;

    .line 58
    iget-object v2, p0, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->startEmoji:Ljava/lang/String;

    .line 59
    nop

    .line 60
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v3

    .line 57
    const-string v4, "Started"

    invoke-direct {v1, v2, v4, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 51
    :pswitch_6
    new-instance v1, Lkotlin/Triple;

    .line 52
    nop

    .line 53
    nop

    .line 54
    invoke-virtual {p2}, Ldev/fluttercommunity/workmanager/TaskDebugInfo;->getTaskName()Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string v3, "\ud83d\udcc5"

    const-string v4, "Scheduled"

    invoke-direct {v1, v3, v4, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    :goto_3
    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "emoji":Ljava/lang/String;
    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "title":Ljava/lang/String;
    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "content":Ljava/lang/String;
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    nop

    .line 99
    invoke-direct {p0, p1, v0, v4, v1}, Ldev/fluttercommunity/workmanager/NotificationDebugHandler;->postNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
