.class Lorg/maplibre/android/maps/CameraChangeDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;
    }
.end annotation


# static fields
.field private static final IDLE:I = 0x3

.field private static final MOVE:I = 0x1

.field private static final MOVE_CANCELED:I = 0x2

.field private static final MOVE_STARTED:I


# instance fields
.field private final handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

.field private idle:Z

.field private moveStartedReason:I

.field private final onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;-><init>(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    return p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->executeOnCameraIdle()V

    return-void
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->executeOnCameraMove()V

    return-void
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->executeOnCameraMoveCancelled()V

    return-void
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/maps/CameraChangeDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->executeOnCameraMoveStarted()V

    return-void
.end method

.method private executeOnCameraIdle()V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;->onCameraIdle()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private executeOnCameraMove()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;->onCameraMove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executeOnCameraMoveCancelled()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;->onCameraMoveCanceled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private executeOnCameraMoveStarted()V
    .locals 3

    iget-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->idle:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;

    iget v2, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->moveStartedReason:I

    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;->onCameraMoveStarted(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCameraIdle()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMove()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMoveCanceled()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onCameraMoveStarted(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->moveStartedReason:I

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;->scheduleMessage(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->handler:Lorg/maplibre/android/maps/CameraChangeDispatcher$CameraChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public removeOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveCanceled:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMove:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
