.class final Lio/sentry/android/core/DefaultAndroidEventProcessor$DeviceInfoCacheThreadFactory;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/DefaultAndroidEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceInfoCacheThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/DefaultAndroidEventProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/android/core/DefaultAndroidEventProcessor$1;

    .line 432
    invoke-direct {p0}, Lio/sentry/android/core/DefaultAndroidEventProcessor$DeviceInfoCacheThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 435
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "SentryDeviceInfoCache"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 436
    .local v0, "ret":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 437
    return-object v0
.end method
