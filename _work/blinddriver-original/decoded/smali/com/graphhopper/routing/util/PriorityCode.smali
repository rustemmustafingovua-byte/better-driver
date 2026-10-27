.class public final enum Lcom/graphhopper/routing/util/PriorityCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/util/PriorityCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum AVOID:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum AVOID_MORE:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum BAD:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum BEST:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum EXCLUDE:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum PREFER:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum SLIGHT_PREFER:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final VALUES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VERY_BAD:Lcom/graphhopper/routing/util/PriorityCode;

.field public static final enum VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/util/PriorityCode;
    .locals 12

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->EXCLUDE:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v1, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v2, Lcom/graphhopper/routing/util/PriorityCode;->VERY_BAD:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v4, Lcom/graphhopper/routing/util/PriorityCode;->AVOID_MORE:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v5, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v6, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v7, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v8, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v9, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v10, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    sget-object v11, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    filled-new-array/range {v0 .. v11}, [Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "EXCLUDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->EXCLUDE:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "REACH_DESTINATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "VERY_BAD"

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VERY_BAD:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "BAD"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "AVOID_MORE"

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID_MORE:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "AVOID"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v3, v4}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "SLIGHT_AVOID"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v5, v3}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "UNCHANGED"

    const/4 v5, 0x7

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "SLIGHT_PREFER"

    const/16 v5, 0xb

    invoke-direct {v0, v1, v4, v5}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "PREFER"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v3, v4}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "VERY_NICE"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v6, v3}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Lcom/graphhopper/routing/util/PriorityCode;

    const-string v1, "BEST"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v5, v3}, Lcom/graphhopper/routing/util/PriorityCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-static {}, Lcom/graphhopper/routing/util/PriorityCode;->$values()[Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->$VALUES:[Lcom/graphhopper/routing/util/PriorityCode;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VALUES:Ljava/util/TreeMap;

    invoke-static {}, Lcom/graphhopper/routing/util/PriorityCode;->values()[Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/graphhopper/routing/util/PriorityCode;->VALUES:Ljava/util/TreeMap;

    invoke-virtual {v3}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/graphhopper/routing/util/PriorityCode;->value:I

    return-void
.end method

.method public static getFactor(I)D
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getValue(I)D
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getFactor(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static valueOf(I)Lcom/graphhopper/routing/util/PriorityCode;
    .locals 1

    .line 2
    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VALUES:Ljava/util/TreeMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/util/PriorityCode;
    .locals 1

    .line 1
    const-class v0, Lcom/graphhopper/routing/util/PriorityCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/util/PriorityCode;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->$VALUES:[Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/util/PriorityCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/util/PriorityCode;

    return-object v0
.end method


# virtual methods
.method public better()Lcom/graphhopper/routing/util/PriorityCode;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VALUES:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/graphhopper/routing/util/PriorityCode;->value:I

    return p0
.end method

.method public worse()Lcom/graphhopper/routing/util/PriorityCode;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/PriorityCode;->VALUES:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->EXCLUDE:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0
.end method
