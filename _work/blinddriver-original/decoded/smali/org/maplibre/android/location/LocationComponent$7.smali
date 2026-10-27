.class Lorg/maplibre/android/location/LocationComponent$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/location/CompassListener;


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

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent$7;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompassAccuracyChange(I)V
    .locals 0

    return-void
.end method

.method public onCompassChanged(F)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent$7;->this$0:Lorg/maplibre/android/location/LocationComponent;

    invoke-static {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->m(Lorg/maplibre/android/location/LocationComponent;F)V

    return-void
.end method
