.class public final enum Lcom/graphhopper/routing/ev/Crossing;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Crossing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Crossing;

.field public static final KEY:Ljava/lang/String; = "crossing"

.field public static final enum MARKED:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum NO:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum RAILWAY:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum RAILWAY_BARRIER:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum TRAFFIC_SIGNALS:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum UNCONTROLLED:Lcom/graphhopper/routing/ev/Crossing;

.field public static final enum UNMARKED:Lcom/graphhopper/routing/ev/Crossing;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Crossing;
    .locals 8

    sget-object v0, Lcom/graphhopper/routing/ev/Crossing;->MISSING:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v1, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY_BARRIER:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v2, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v3, Lcom/graphhopper/routing/ev/Crossing;->TRAFFIC_SIGNALS:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v4, Lcom/graphhopper/routing/ev/Crossing;->UNCONTROLLED:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v5, Lcom/graphhopper/routing/ev/Crossing;->MARKED:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v6, Lcom/graphhopper/routing/ev/Crossing;->UNMARKED:Lcom/graphhopper/routing/ev/Crossing;

    sget-object v7, Lcom/graphhopper/routing/ev/Crossing;->NO:Lcom/graphhopper/routing/ev/Crossing;

    filled-new-array/range {v0 .. v7}, [Lcom/graphhopper/routing/ev/Crossing;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->MISSING:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "RAILWAY_BARRIER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY_BARRIER:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "RAILWAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "TRAFFIC_SIGNALS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->TRAFFIC_SIGNALS:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "UNCONTROLLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->UNCONTROLLED:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "MARKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->MARKED:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "UNMARKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->UNMARKED:Lcom/graphhopper/routing/ev/Crossing;

    new-instance v0, Lcom/graphhopper/routing/ev/Crossing;

    const-string v1, "NO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Crossing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->NO:Lcom/graphhopper/routing/ev/Crossing;

    invoke-static {}, Lcom/graphhopper/routing/ev/Crossing;->$values()[Lcom/graphhopper/routing/ev/Crossing;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Crossing;->$VALUES:[Lcom/graphhopper/routing/ev/Crossing;

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
            "Lcom/graphhopper/routing/ev/Crossing;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "crossing"

    const-class v2, Lcom/graphhopper/routing/ev/Crossing;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Crossing;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/Crossing;->MISSING:Lcom/graphhopper/routing/ev/Crossing;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Crossing;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Crossing;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/Crossing;->MISSING:Lcom/graphhopper/routing/ev/Crossing;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Crossing;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Crossing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Crossing;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Crossing;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Crossing;->$VALUES:[Lcom/graphhopper/routing/ev/Crossing;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Crossing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Crossing;

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
