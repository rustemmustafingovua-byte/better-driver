.class public final enum Lcom/graphhopper/routing/ev/Surface;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Surface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Surface;

.field public static final enum ASPHALT:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum COBBLESTONE:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum COMPACTED:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum CONCRETE:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum DIRT:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum FINE_GRAVEL:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum GRASS:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum GRAVEL:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum GROUND:Lcom/graphhopper/routing/ev/Surface;

.field public static final KEY:Ljava/lang/String; = "surface"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum OTHER:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum PAVED:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum PAVING_STONES:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum SAND:Lcom/graphhopper/routing/ev/Surface;

.field private static final SURFACE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNPAVED:Lcom/graphhopper/routing/ev/Surface;

.field public static final enum WOOD:Lcom/graphhopper/routing/ev/Surface;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Surface;
    .locals 17

    sget-object v1, Lcom/graphhopper/routing/ev/Surface;->MISSING:Lcom/graphhopper/routing/ev/Surface;

    sget-object v2, Lcom/graphhopper/routing/ev/Surface;->PAVED:Lcom/graphhopper/routing/ev/Surface;

    sget-object v3, Lcom/graphhopper/routing/ev/Surface;->ASPHALT:Lcom/graphhopper/routing/ev/Surface;

    sget-object v4, Lcom/graphhopper/routing/ev/Surface;->CONCRETE:Lcom/graphhopper/routing/ev/Surface;

    sget-object v5, Lcom/graphhopper/routing/ev/Surface;->PAVING_STONES:Lcom/graphhopper/routing/ev/Surface;

    sget-object v6, Lcom/graphhopper/routing/ev/Surface;->COBBLESTONE:Lcom/graphhopper/routing/ev/Surface;

    sget-object v7, Lcom/graphhopper/routing/ev/Surface;->UNPAVED:Lcom/graphhopper/routing/ev/Surface;

    sget-object v8, Lcom/graphhopper/routing/ev/Surface;->COMPACTED:Lcom/graphhopper/routing/ev/Surface;

    sget-object v9, Lcom/graphhopper/routing/ev/Surface;->FINE_GRAVEL:Lcom/graphhopper/routing/ev/Surface;

    sget-object v10, Lcom/graphhopper/routing/ev/Surface;->GRAVEL:Lcom/graphhopper/routing/ev/Surface;

    sget-object v11, Lcom/graphhopper/routing/ev/Surface;->GROUND:Lcom/graphhopper/routing/ev/Surface;

    sget-object v12, Lcom/graphhopper/routing/ev/Surface;->DIRT:Lcom/graphhopper/routing/ev/Surface;

    sget-object v13, Lcom/graphhopper/routing/ev/Surface;->GRASS:Lcom/graphhopper/routing/ev/Surface;

    sget-object v14, Lcom/graphhopper/routing/ev/Surface;->SAND:Lcom/graphhopper/routing/ev/Surface;

    sget-object v15, Lcom/graphhopper/routing/ev/Surface;->WOOD:Lcom/graphhopper/routing/ev/Surface;

    sget-object v16, Lcom/graphhopper/routing/ev/Surface;->OTHER:Lcom/graphhopper/routing/ev/Surface;

    filled-new-array/range {v1 .. v16}, [Lcom/graphhopper/routing/ev/Surface;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->MISSING:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "PAVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->PAVED:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "ASPHALT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->ASPHALT:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "CONCRETE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->CONCRETE:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "PAVING_STONES"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->PAVING_STONES:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "COBBLESTONE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->COBBLESTONE:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "UNPAVED"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->UNPAVED:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "COMPACTED"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->COMPACTED:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "FINE_GRAVEL"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->FINE_GRAVEL:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "GRAVEL"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->GRAVEL:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "GROUND"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->GROUND:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "DIRT"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->DIRT:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "GRASS"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->GRASS:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "SAND"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->SAND:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "WOOD"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->WOOD:Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Lcom/graphhopper/routing/ev/Surface;

    const-string v1, "OTHER"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lcom/graphhopper/routing/ev/Surface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->OTHER:Lcom/graphhopper/routing/ev/Surface;

    invoke-static {}, Lcom/graphhopper/routing/ev/Surface;->$values()[Lcom/graphhopper/routing/ev/Surface;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->$VALUES:[Lcom/graphhopper/routing/ev/Surface;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/ev/Surface;->SURFACE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/graphhopper/routing/ev/Surface;->values()[Lcom/graphhopper/routing/ev/Surface;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    sget-object v4, Lcom/graphhopper/routing/ev/Surface;->MISSING:Lcom/graphhopper/routing/ev/Surface;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/graphhopper/routing/ev/Surface;->OTHER:Lcom/graphhopper/routing/ev/Surface;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/graphhopper/routing/ev/Surface;->SURFACE_MAP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/graphhopper/routing/ev/Surface;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/graphhopper/routing/ev/Surface;->SURFACE_MAP:Ljava/util/Map;

    const-string v1, "metal"

    sget-object v2, Lcom/graphhopper/routing/ev/Surface;->PAVED:Lcom/graphhopper/routing/ev/Surface;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/graphhopper/routing/ev/Surface;->COBBLESTONE:Lcom/graphhopper/routing/ev/Surface;

    const-string v2, "sett"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "unhewn_cobblestone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "earth"

    sget-object v2, Lcom/graphhopper/routing/ev/Surface;->DIRT:Lcom/graphhopper/routing/ev/Surface;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pebblestone"

    sget-object v2, Lcom/graphhopper/routing/ev/Surface;->GRAVEL:Lcom/graphhopper/routing/ev/Surface;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grass_paver"

    sget-object v2, Lcom/graphhopper/routing/ev/Surface;->GRASS:Lcom/graphhopper/routing/ev/Surface;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
            "Lcom/graphhopper/routing/ev/Surface;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "surface"

    const-class v2, Lcom/graphhopper/routing/ev/Surface;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Surface;
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/Surface;->MISSING:Lcom/graphhopper/routing/ev/Surface;

    return-object p0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    sget-object v0, Lcom/graphhopper/routing/ev/Surface;->SURFACE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/graphhopper/routing/ev/Surface;->OTHER:Lcom/graphhopper/routing/ev/Surface;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Surface;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Surface;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Surface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Surface;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Surface;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Surface;->$VALUES:[Lcom/graphhopper/routing/ev/Surface;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Surface;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Surface;

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
