.class final Lio/sentry/transport/ReusableCountLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReusableCountLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/ReusableCountLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52da2cdc2aea927aL


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 179
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 180
    invoke-virtual {p0, p1}, Lio/sentry/transport/ReusableCountLatch$Sync;->setState(I)V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lio/sentry/transport/ReusableCountLatch$Sync;)I
    .locals 1
    .param p0, "x0"    # Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 176
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lio/sentry/transport/ReusableCountLatch$Sync;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 176
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->decrement()V

    return-void
.end method

.method static synthetic access$200(Lio/sentry/transport/ReusableCountLatch$Sync;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/transport/ReusableCountLatch$Sync;

    .line 176
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->increment()V

    return-void
.end method

.method private decrement()V
    .locals 1

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/sentry/transport/ReusableCountLatch$Sync;->releaseShared(I)Z

    .line 199
    return-void
.end method

.method private getCount()I
    .locals 1

    .line 184
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method private increment()V
    .locals 3

    .line 189
    nop

    :goto_0
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    .line 190
    .local v0, "oldCount":I
    add-int/lit8 v1, v0, 0x1

    .line 191
    .local v1, "newCount":I
    invoke-virtual {p0, v0, v1}, Lio/sentry/transport/ReusableCountLatch$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    return-void

    .line 194
    .end local v0    # "oldCount":I
    .end local v1    # "newCount":I
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public tryAcquireShared(I)I
    .locals 1
    .param p1, "acquires"    # I

    .line 203
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public tryReleaseShared(I)Z
    .locals 4
    .param p1, "releases"    # I

    .line 210
    nop

    :goto_0
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    .line 211
    .local v0, "oldCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    return v1

    .line 214
    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 215
    .local v2, "newCount":I
    invoke-virtual {p0, v0, v2}, Lio/sentry/transport/ReusableCountLatch$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 218
    .end local v0    # "oldCount":I
    .end local v2    # "newCount":I
    :cond_2
    goto :goto_0
.end method
