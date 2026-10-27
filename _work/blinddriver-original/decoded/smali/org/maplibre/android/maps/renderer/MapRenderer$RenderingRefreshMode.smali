.class public final enum Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/renderer/MapRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingRefreshMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

.field public static final enum CONTINUOUS:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

.field public static final enum WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;


# direct methods
.method private static synthetic $values()[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 2

    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    sget-object v1, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->CONTINUOUS:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    filled-new-array {v0, v1}, [Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    const-string v1, "WHEN_DIRTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->WHEN_DIRTY:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    new-instance v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->CONTINUOUS:Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    invoke-static {}, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->$values()[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object v0

    sput-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->$VALUES:[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    const-class v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    return-object p0
.end method

.method public static values()[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    sget-object v0, Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->$VALUES:[Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    invoke-virtual {v0}, [Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    return-object v0
.end method
