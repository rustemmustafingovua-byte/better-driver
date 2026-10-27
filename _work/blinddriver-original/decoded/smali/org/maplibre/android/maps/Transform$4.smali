.class Lorg/maplibre/android/maps/Transform$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/Transform;->cancelTransitions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/maps/Transform;

.field final synthetic val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/maps/Transform$4;->this$0:Lorg/maplibre/android/maps/Transform;

    iput-object p2, p0, Lorg/maplibre/android/maps/Transform$4;->val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Transform$4;->val$callback:Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onCancel()V

    return-void
.end method
