.class public final Lorg/maplibre/android/location/engine/LocationEngineDefault;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/maplibre/android/location/engine/LocationEngineDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineDefault;

    invoke-direct {v0}, Lorg/maplibre/android/location/engine/LocationEngineDefault;-><init>()V

    sput-object v0, Lorg/maplibre/android/location/engine/LocationEngineDefault;->INSTANCE:Lorg/maplibre/android/location/engine/LocationEngineDefault;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultLocationEngine(Landroid/content/Context;)Lorg/maplibre/android/location/engine/LocationEngine;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/maplibre/android/location/engine/LocationEngineProxy;

    new-instance v0, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/maplibre/android/location/engine/MapLibreFusedLocationEngineImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/engine/LocationEngineProxy;-><init>(Lorg/maplibre/android/location/engine/LocationEngineImpl;)V

    return-object p0
.end method
