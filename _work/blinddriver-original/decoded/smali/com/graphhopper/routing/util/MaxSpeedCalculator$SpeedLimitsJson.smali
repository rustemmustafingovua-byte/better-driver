.class Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/MaxSpeedCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedLimitsJson"
.end annotation


# instance fields
.field private meta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
    .end annotation
.end field

.field private roadTypesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
    .end annotation
.end field

.field private speedLimitsByCountryCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeImpl;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
    .end annotation
.end field

.field private warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;->roadTypesByName:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$SpeedLimitsJson;->speedLimitsByCountryCode:Ljava/util/Map;

    return-object p0
.end method
