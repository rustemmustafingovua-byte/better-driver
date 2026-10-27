.class public final Lio/sentry/android/core/AndroidLogger;
.super Ljava/lang/Object;
.source "AndroidLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const-string v0, "Sentry"

    invoke-direct {p0, v0}, Lio/sentry/android/core/AndroidLogger;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private toLogcatLevel(Lio/sentry/SentryLevel;)I
    .locals 2
    .param p1, "sentryLevel"    # Lio/sentry/SentryLevel;

    .line 82
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 88
    :pswitch_1
    const/4 v0, 0x7

    return v0

    .line 86
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 84
    :pswitch_3
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 56
    sget-object v0, Lio/sentry/android/core/AndroidLogger$1;->$SwitchMap$io$sentry$SentryLevel:[I

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    iget-object v0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    goto :goto_0

    .line 58
    :pswitch_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    nop

    .line 74
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 29
    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/AndroidLogger;->toLogcatLevel(Lio/sentry/SentryLevel;)I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/AndroidLogger;->toLogcatLevel(Lio/sentry/SentryLevel;)I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/core/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 43
    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lio/sentry/android/core/AndroidLogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lio/sentry/android/core/AndroidLogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_1
    return-void
.end method
