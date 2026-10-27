.class public final enum Lcom/graphhopper/util/FetchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/util/FetchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/util/FetchMode;

.field public static final enum ALL:Lcom/graphhopper/util/FetchMode;

.field public static final enum BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

.field public static final enum PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

.field public static final enum PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

.field public static final enum TOWER_ONLY:Lcom/graphhopper/util/FetchMode;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/util/FetchMode;
    .locals 5

    sget-object v0, Lcom/graphhopper/util/FetchMode;->TOWER_ONLY:Lcom/graphhopper/util/FetchMode;

    sget-object v1, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    sget-object v2, Lcom/graphhopper/util/FetchMode;->BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

    sget-object v3, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    sget-object v4, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/graphhopper/util/FetchMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/util/FetchMode;

    const-string v1, "TOWER_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/util/FetchMode;->TOWER_ONLY:Lcom/graphhopper/util/FetchMode;

    new-instance v0, Lcom/graphhopper/util/FetchMode;

    const-string v1, "PILLAR_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/util/FetchMode;->PILLAR_ONLY:Lcom/graphhopper/util/FetchMode;

    new-instance v0, Lcom/graphhopper/util/FetchMode;

    const-string v1, "BASE_AND_PILLAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/util/FetchMode;->BASE_AND_PILLAR:Lcom/graphhopper/util/FetchMode;

    new-instance v0, Lcom/graphhopper/util/FetchMode;

    const-string v1, "PILLAR_AND_ADJ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    new-instance v0, Lcom/graphhopper/util/FetchMode;

    const-string v1, "ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/util/FetchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-static {}, Lcom/graphhopper/util/FetchMode;->$values()[Lcom/graphhopper/util/FetchMode;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/FetchMode;->$VALUES:[Lcom/graphhopper/util/FetchMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/util/FetchMode;
    .locals 1

    const-class v0, Lcom/graphhopper/util/FetchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/FetchMode;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/util/FetchMode;
    .locals 1

    sget-object v0, Lcom/graphhopper/util/FetchMode;->$VALUES:[Lcom/graphhopper/util/FetchMode;

    invoke-virtual {v0}, [Lcom/graphhopper/util/FetchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/util/FetchMode;

    return-object v0
.end method
