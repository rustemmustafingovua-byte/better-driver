.class public final enum Lcom/graphhopper/routing/ev/RoadClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/RoadClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum BRIDLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum BUSWAY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum CONSTRUCTION:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum CORRIDOR:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum CYCLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum FOOTWAY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final KEY:Ljava/lang/String; = "road_class"

.field public static final enum LIVING_STREET:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum OTHER:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum PATH:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum PEDESTRIAN:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum PLATFORM:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum RESIDENTIAL:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum ROAD:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum SECONDARY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum SERVICE:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum STEPS:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum TERTIARY:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum TRACK:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

.field public static final enum UNCLASSIFIED:Lcom/graphhopper/routing/ev/RoadClass;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/RoadClass;
    .locals 23

    sget-object v1, Lcom/graphhopper/routing/ev/RoadClass;->OTHER:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v2, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v3, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v4, Lcom/graphhopper/routing/ev/RoadClass;->PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v5, Lcom/graphhopper/routing/ev/RoadClass;->SECONDARY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v6, Lcom/graphhopper/routing/ev/RoadClass;->TERTIARY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v7, Lcom/graphhopper/routing/ev/RoadClass;->RESIDENTIAL:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v8, Lcom/graphhopper/routing/ev/RoadClass;->UNCLASSIFIED:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v9, Lcom/graphhopper/routing/ev/RoadClass;->SERVICE:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v10, Lcom/graphhopper/routing/ev/RoadClass;->ROAD:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v11, Lcom/graphhopper/routing/ev/RoadClass;->TRACK:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v12, Lcom/graphhopper/routing/ev/RoadClass;->BRIDLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v13, Lcom/graphhopper/routing/ev/RoadClass;->STEPS:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v14, Lcom/graphhopper/routing/ev/RoadClass;->CYCLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v15, Lcom/graphhopper/routing/ev/RoadClass;->PATH:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v16, Lcom/graphhopper/routing/ev/RoadClass;->LIVING_STREET:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v17, Lcom/graphhopper/routing/ev/RoadClass;->FOOTWAY:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v18, Lcom/graphhopper/routing/ev/RoadClass;->PEDESTRIAN:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v19, Lcom/graphhopper/routing/ev/RoadClass;->PLATFORM:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v20, Lcom/graphhopper/routing/ev/RoadClass;->CORRIDOR:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v21, Lcom/graphhopper/routing/ev/RoadClass;->CONSTRUCTION:Lcom/graphhopper/routing/ev/RoadClass;

    sget-object v22, Lcom/graphhopper/routing/ev/RoadClass;->BUSWAY:Lcom/graphhopper/routing/ev/RoadClass;

    filled-new-array/range {v1 .. v22}, [Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->OTHER:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "MOTORWAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "TRUNK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "PRIMARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "SECONDARY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->SECONDARY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "TERTIARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->TERTIARY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "RESIDENTIAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->RESIDENTIAL:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "UNCLASSIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->UNCLASSIFIED:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "SERVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->SERVICE:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "ROAD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->ROAD:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "TRACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->TRACK:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "BRIDLEWAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->BRIDLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "STEPS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->STEPS:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "CYCLEWAY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->CYCLEWAY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "PATH"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->PATH:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "LIVING_STREET"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->LIVING_STREET:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "FOOTWAY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->FOOTWAY:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "PEDESTRIAN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->PEDESTRIAN:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "PLATFORM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->PLATFORM:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "CORRIDOR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->CORRIDOR:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "CONSTRUCTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->CONSTRUCTION:Lcom/graphhopper/routing/ev/RoadClass;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadClass;

    const-string v1, "BUSWAY"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->BUSWAY:Lcom/graphhopper/routing/ev/RoadClass;

    invoke-static {}, Lcom/graphhopper/routing/ev/RoadClass;->$values()[Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/RoadClass;->$VALUES:[Lcom/graphhopper/routing/ev/RoadClass;

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
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "road_class"

    const-class v2, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;
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

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/RoadClass;->OTHER:Lcom/graphhopper/routing/ev/RoadClass;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/graphhopper/routing/ev/RoadClass;->OTHER:Lcom/graphhopper/routing/ev/RoadClass;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/RoadClass;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/RoadClass;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/RoadClass;->$VALUES:[Lcom/graphhopper/routing/ev/RoadClass;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/RoadClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/RoadClass;

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
