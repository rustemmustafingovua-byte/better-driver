.class Lorg/maplibre/android/maps/Transform$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/Transform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/Transform;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Transform;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/Transform$1;->this$0:Lorg/maplibre/android/maps/Transform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraDidChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform$1;->this$0:Lorg/maplibre/android/maps/Transform;

    invoke-static {p1}, Lorg/maplibre/android/maps/Transform;->a(Lorg/maplibre/android/maps/Transform;)Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraIdle()V

    iget-object p1, p0, Lorg/maplibre/android/maps/Transform$1;->this$0:Lorg/maplibre/android/maps/Transform;

    invoke-static {p1}, Lorg/maplibre/android/maps/Transform;->b(Lorg/maplibre/android/maps/Transform;)Lorg/maplibre/android/maps/MapView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapView;->removeOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    :cond_0
    return-void
.end method
