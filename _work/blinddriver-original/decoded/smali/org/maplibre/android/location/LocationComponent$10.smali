.class Lorg/maplibre/android/location/LocationComponent$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/maplibre/android/location/LocationComponent;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$10;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeveloperAnimationStarted()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent$10;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationComponent;->a(Lorg/maplibre/android/location/LocationComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent$10;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {v0}, Lorg/maplibre/android/location/LocationComponent;->b(Lorg/maplibre/android/location/LocationComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$10;->this$0:Lorg/maplibre/android/location/LocationComponent;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    :cond_0
    return-void
.end method
