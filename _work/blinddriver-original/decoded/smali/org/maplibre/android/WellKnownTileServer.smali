.class public final enum Lorg/maplibre/android/WellKnownTileServer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/maplibre/android/WellKnownTileServer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/maplibre/android/WellKnownTileServer;

.field public static final enum MapLibre:Lorg/maplibre/android/WellKnownTileServer;

.field public static final enum MapTiler:Lorg/maplibre/android/WellKnownTileServer;

.field public static final enum Mapbox:Lorg/maplibre/android/WellKnownTileServer;


# direct methods
.method private static synthetic $values()[Lorg/maplibre/android/WellKnownTileServer;
    .locals 3

    sget-object v0, Lorg/maplibre/android/WellKnownTileServer;->Mapbox:Lorg/maplibre/android/WellKnownTileServer;

    sget-object v1, Lorg/maplibre/android/WellKnownTileServer;->MapTiler:Lorg/maplibre/android/WellKnownTileServer;

    sget-object v2, Lorg/maplibre/android/WellKnownTileServer;->MapLibre:Lorg/maplibre/android/WellKnownTileServer;

    filled-new-array {v0, v1, v2}, [Lorg/maplibre/android/WellKnownTileServer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/maplibre/android/WellKnownTileServer;

    const-string v1, "Mapbox"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/WellKnownTileServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/WellKnownTileServer;->Mapbox:Lorg/maplibre/android/WellKnownTileServer;

    new-instance v0, Lorg/maplibre/android/WellKnownTileServer;

    const-string v1, "MapTiler"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/WellKnownTileServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/WellKnownTileServer;->MapTiler:Lorg/maplibre/android/WellKnownTileServer;

    new-instance v0, Lorg/maplibre/android/WellKnownTileServer;

    const-string v1, "MapLibre"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/WellKnownTileServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/WellKnownTileServer;->MapLibre:Lorg/maplibre/android/WellKnownTileServer;

    invoke-static {}, Lorg/maplibre/android/WellKnownTileServer;->$values()[Lorg/maplibre/android/WellKnownTileServer;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/WellKnownTileServer;->$VALUES:[Lorg/maplibre/android/WellKnownTileServer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/maplibre/android/WellKnownTileServer;
    .locals 1

    const-class v0, Lorg/maplibre/android/WellKnownTileServer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/WellKnownTileServer;

    return-object p0
.end method

.method public static values()[Lorg/maplibre/android/WellKnownTileServer;
    .locals 1

    sget-object v0, Lorg/maplibre/android/WellKnownTileServer;->$VALUES:[Lorg/maplibre/android/WellKnownTileServer;

    invoke-virtual {v0}, [Lorg/maplibre/android/WellKnownTileServer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/WellKnownTileServer;

    return-object v0
.end method
