.class public final enum Lcom/graphhopper/routing/ev/RoadEnvironment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/RoadEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final enum BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final enum FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final enum FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final KEY:Ljava/lang/String; = "road_environment"

.field public static final enum OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final enum ROAD:Lcom/graphhopper/routing/ev/RoadEnvironment;

.field public static final enum TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/RoadEnvironment;
    .locals 6

    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

    sget-object v1, Lcom/graphhopper/routing/ev/RoadEnvironment;->ROAD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    sget-object v2, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    sget-object v3, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    sget-object v4, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    sget-object v5, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    filled-new-array/range {v0 .. v5}, [Lcom/graphhopper/routing/ev/RoadEnvironment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "ROAD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->ROAD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "FERRY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "TUNNEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "BRIDGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    const-string v1, "FORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {}, Lcom/graphhopper/routing/ev/RoadEnvironment;->$values()[Lcom/graphhopper/routing/ev/RoadEnvironment;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->$VALUES:[Lcom/graphhopper/routing/ev/RoadEnvironment;

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
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "road_environment"

    const-class v2, Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadEnvironment;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/RoadEnvironment;->OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadEnvironment;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadEnvironment;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/RoadEnvironment;->OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadEnvironment;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/RoadEnvironment;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/RoadEnvironment;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->$VALUES:[Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/RoadEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/RoadEnvironment;

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
