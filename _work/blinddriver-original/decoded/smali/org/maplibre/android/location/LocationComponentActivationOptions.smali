.class public Lorg/maplibre/android/location/LocationComponentActivationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

.field private final locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

.field private final locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

.field private final style:Lorg/maplibre/android/maps/Style;

.field private final styleRes:I

.field private final useDefaultLocationEngine:Z

.field private final useSpecializedLocationLayer:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/engine/LocationEngine;Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/LocationComponentOptions;IZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->style:Lorg/maplibre/android/maps/Style;

    .line 5
    iput-object p3, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    .line 6
    iput-object p4, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 7
    iput-object p5, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 8
    iput p6, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->styleRes:I

    .line 9
    iput-boolean p7, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useDefaultLocationEngine:Z

    .line 10
    iput-boolean p8, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useSpecializedLocationLayer:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/engine/LocationEngine;Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/LocationComponentOptions;IZZI)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/maplibre/android/location/LocationComponentActivationOptions;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/engine/LocationEngine;Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/LocationComponentOptions;IZZ)V

    return-void
.end method

.method public static builder(Landroid/content/Context;Lorg/maplibre/android/maps/Style;)Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;
    .locals 1

    new-instance v0, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions$Builder;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/Style;)V

    return-object v0
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->context:Landroid/content/Context;

    return-object p0
.end method

.method public locationComponentOptions()Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationComponentOptions:Lorg/maplibre/android/location/LocationComponentOptions;

    return-object p0
.end method

.method public locationEngine()Lorg/maplibre/android/location/engine/LocationEngine;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    return-object p0
.end method

.method public locationEngineRequest()Lorg/maplibre/android/location/engine/LocationEngineRequest;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    return-object p0
.end method

.method public style()Lorg/maplibre/android/maps/Style;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->style:Lorg/maplibre/android/maps/Style;

    return-object p0
.end method

.method public styleRes()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->styleRes:I

    return p0
.end method

.method public useDefaultLocationEngine()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useDefaultLocationEngine:Z

    return p0
.end method

.method public useSpecializedLocationLayer()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useSpecializedLocationLayer:Z

    return p0
.end method
