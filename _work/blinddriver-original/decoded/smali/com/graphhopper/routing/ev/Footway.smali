.class public final enum Lcom/graphhopper/routing/ev/Footway;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Footway;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Footway;

.field public static final enum ACCESS_AISLE:Lcom/graphhopper/routing/ev/Footway;

.field public static final enum ALLEY:Lcom/graphhopper/routing/ev/Footway;

.field public static final enum CROSSING:Lcom/graphhopper/routing/ev/Footway;

.field public static final KEY:Ljava/lang/String; = "footway"

.field public static final enum LINK:Lcom/graphhopper/routing/ev/Footway;

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Footway;

.field public static final enum SIDEWALK:Lcom/graphhopper/routing/ev/Footway;

.field public static final enum TRAFFIC_ISLAND:Lcom/graphhopper/routing/ev/Footway;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Footway;
    .locals 7

    sget-object v0, Lcom/graphhopper/routing/ev/Footway;->MISSING:Lcom/graphhopper/routing/ev/Footway;

    sget-object v1, Lcom/graphhopper/routing/ev/Footway;->SIDEWALK:Lcom/graphhopper/routing/ev/Footway;

    sget-object v2, Lcom/graphhopper/routing/ev/Footway;->CROSSING:Lcom/graphhopper/routing/ev/Footway;

    sget-object v3, Lcom/graphhopper/routing/ev/Footway;->ACCESS_AISLE:Lcom/graphhopper/routing/ev/Footway;

    sget-object v4, Lcom/graphhopper/routing/ev/Footway;->LINK:Lcom/graphhopper/routing/ev/Footway;

    sget-object v5, Lcom/graphhopper/routing/ev/Footway;->TRAFFIC_ISLAND:Lcom/graphhopper/routing/ev/Footway;

    sget-object v6, Lcom/graphhopper/routing/ev/Footway;->ALLEY:Lcom/graphhopper/routing/ev/Footway;

    filled-new-array/range {v0 .. v6}, [Lcom/graphhopper/routing/ev/Footway;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->MISSING:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "SIDEWALK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->SIDEWALK:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "CROSSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->CROSSING:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "ACCESS_AISLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->ACCESS_AISLE:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "LINK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->LINK:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "TRAFFIC_ISLAND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->TRAFFIC_ISLAND:Lcom/graphhopper/routing/ev/Footway;

    new-instance v0, Lcom/graphhopper/routing/ev/Footway;

    const-string v1, "ALLEY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Footway;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->ALLEY:Lcom/graphhopper/routing/ev/Footway;

    invoke-static {}, Lcom/graphhopper/routing/ev/Footway;->$values()[Lcom/graphhopper/routing/ev/Footway;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Footway;->$VALUES:[Lcom/graphhopper/routing/ev/Footway;

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

.method public static create()Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Footway;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "footway"

    const-class v2, Lcom/graphhopper/routing/ev/Footway;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Footway;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Footway;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Footway;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/Footway;->MISSING:Lcom/graphhopper/routing/ev/Footway;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/graphhopper/routing/ev/Footway;->MISSING:Lcom/graphhopper/routing/ev/Footway;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Footway;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Footway;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Footway;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Footway;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Footway;->$VALUES:[Lcom/graphhopper/routing/ev/Footway;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Footway;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Footway;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
