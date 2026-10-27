.class final enum Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExploreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

.field public static final enum DISTANCE:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

.field public static final enum TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

.field public static final enum WEIGHT:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;
    .locals 3

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    sget-object v1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->DISTANCE:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    sget-object v2, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->WEIGHT:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    const-string v1, "TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->TIME:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    const-string v1, "DISTANCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->DISTANCE:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    const-string v1, "WEIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->WEIGHT:Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    invoke-static {}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->$values()[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->$VALUES:[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;
    .locals 1

    const-class v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;
    .locals 1

    sget-object v0, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->$VALUES:[Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    invoke-virtual {v0}, [Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$ExploreType;

    return-object v0
.end method
