.class public abstract Lorg/maplibre/android/annotations/BaseMarkerOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lorg/maplibre/android/annotations/Marker;",
        "T:",
        "Lorg/maplibre/android/annotations/BaseMarkerOptions<",
        "TU;TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected icon:Lorg/maplibre/android/annotations/Icon;

.field protected position:Lorg/maplibre/android/geometry/LatLng;

.field protected snippet:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMarker()Lorg/maplibre/android/annotations/Marker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public abstract getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public icon(Lorg/maplibre/android/annotations/Icon;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/annotations/Icon;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon:Lorg/maplibre/android/annotations/Icon;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public position(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/geometry/LatLng;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position:Lorg/maplibre/android/geometry/LatLng;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public setIcon(Lorg/maplibre/android/annotations/Icon;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/annotations/Icon;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->icon(Lorg/maplibre/android/annotations/Icon;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public setPosition(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/geometry/LatLng;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->position(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public setSnippet(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->snippet:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lorg/maplibre/android/annotations/BaseMarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lorg/maplibre/android/annotations/BaseMarkerOptions;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/BaseMarkerOptions;->getThis()Lorg/maplibre/android/annotations/BaseMarkerOptions;

    move-result-object p0

    return-object p0
.end method
