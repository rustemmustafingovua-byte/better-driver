.class public Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/location/LocationComponentActivationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

.field private locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

.field private locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

.field private final style:Lorg/maplibre/android/maps/Style;

.field private styleRes:I

.field private useDefaultLocationEngine:Z

.field private useSpecializedLocationLayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useDefaultLocationEngine:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useSpecializedLocationLayer:Z

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->style:Lorg/maplibre/android/maps/Style;

    return-void
.end method


# virtual methods
.method public build()Lorg/maplibre/android/location/LocationComponentActivationOptions;
    .locals 11

    iget v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->styleRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You\'ve provided both a style resource and a LocationComponentOptions object to the LocationComponentActivationOptions builder. You can\'t use both and you must choose one of the two to style the LocationComponent."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->style:Lorg/maplibre/android/maps/Style;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/maplibre/android/location/LocationComponentActivationOptions;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->style:Lorg/maplibre/android/maps/Style;

    iget-object v4, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    iget-object v5, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    iget-object v6, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

    iget v7, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->styleRes:I

    iget-boolean v8, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useDefaultLocationEngine:Z

    iget-boolean v9, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useSpecializedLocationLayer:Z

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/maplibre/android/location/LocationComponentActivationOptions;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/engine/LocationEngine;Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/LocationComponentOptions;IZZI)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Style in LocationComponentActivationOptions isn\'t fully loaded. Wait for the map to fully load before passing the Style object to LocationComponentActivationOptions."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Style in LocationComponentActivationOptions is null. Make sure the Style object isn\'t null. Wait for the map to fully load before passing the Style object to LocationComponentActivationOptions."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Context in LocationComponentActivationOptions is null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public locationComponentOptions(Lorg/maplibre/android/location/LocationComponentOptions;)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

    return-object p0
.end method

.method public locationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    return-object p0
.end method

.method public locationEngineRequest(Lorg/maplibre/android/location/engine/LocationEngineRequest;)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    return-object p0
.end method

.method public styleRes(I)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->styleRes:I

    return-object p0
.end method

.method public useDefaultLocationEngine(Z)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useDefaultLocationEngine:Z

    return-object p0
.end method

.method public useSpecializedLocationLayer(Z)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;->useSpecializedLocationLayer:Z

    return-object p0
.end method
