.class final Lorg/maplibre/android/location/LocationComponentNotInitializedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The LocationComponent has to be activated with one of the LocationComponent#activateLocationComponent overloads before any other methods are invoked."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
