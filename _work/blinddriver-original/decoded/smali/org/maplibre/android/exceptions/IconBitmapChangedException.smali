.class public Lorg/maplibre/android/exceptions/IconBitmapChangedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The added Marker has an Icon with a bitmap that has been modified. An Icon cannot be modifiedafter it has been added to the map in a Marker."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
