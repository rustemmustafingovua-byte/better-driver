.class public Lorg/maplibre/android/exceptions/InvalidLatLngBoundsException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "Cannot create a LatLngBounds from "

    const-string v1, " items"

    invoke-static {p1, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
