.class Lorg/maplibre/android/location/StaleStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;
    }
.end annotation


# instance fields
.field private delayTime:J

.field private final handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

.field private final innerOnLocationStaleListeners:Lorg/maplibre/android/location/OnLocationStaleListener;

.field private isEnabled:Z

.field private isStale:Z

.field private final staleStateMessage:I


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/OnLocationStaleListener;Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    iput v0, p0, Lorg/maplibre/android/location/StaleStateManager;->staleStateMessage:I

    iput-object p1, p0, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/OnLocationStaleListener;

    new-instance p1, Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;-><init>(Lorg/maplibre/android/location/StaleStateManager;I)V

    iput-object p1, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState()Z

    move-result p1

    iput-boolean p1, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/StaleStateManager;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    return-void
.end method

.method private postTheCallback()V
    .locals 4

    iget-object v0, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setState(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/OnLocationStaleListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/location/OnLocationStaleListener;->onStaleStateChange(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isStale()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    return p0
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/maplibre/android/location/StaleStateManager;->postTheCallback()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/maplibre/android/location/StaleStateManager;->delayTime:J

    iget-object p1, p0, Lorg/maplibre/android/location/StaleStateManager;->handler:Lorg/maplibre/android/location/StaleStateManager$StaleMessageHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/maplibre/android/location/StaleStateManager;->postTheCallback()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isStale:Z

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/location/StaleStateManager;->onStop()V

    iget-object v0, p0, Lorg/maplibre/android/location/StaleStateManager;->innerOnLocationStaleListeners:Lorg/maplibre/android/location/OnLocationStaleListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/maplibre/android/location/OnLocationStaleListener;->onStaleStateChange(Z)V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/maplibre/android/location/StaleStateManager;->isEnabled:Z

    return-void
.end method

.method public updateLatestLocationTime()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/StaleStateManager;->setState(Z)V

    invoke-direct {p0}, Lorg/maplibre/android/location/StaleStateManager;->postTheCallback()V

    return-void
.end method
