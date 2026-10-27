.class public final enum Lcom/graphhopper/routing/ev/BikeTemporalAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/BikeTemporalAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/BikeTemporalAccess;

.field public static final CONDITIONALS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "bike_temporal_access"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

.field public static final enum NO:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

.field public static final enum YES:Lcom/graphhopper/routing/ev/BikeTemporalAccess;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/BikeTemporalAccess;
    .locals 3

    sget-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->MISSING:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    sget-object v1, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->YES:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    sget-object v2, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->NO:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/BikeTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->MISSING:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    const-string v1, "YES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/BikeTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->YES:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    const-string v1, "NO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/BikeTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->NO:Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    invoke-static {}, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->$values()[Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->$VALUES:[Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "vehicle:conditional"

    const-string v2, "bicycle:conditional"

    const-string v3, "access:conditional"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->CONDITIONALS:Ljava/util/Collection;

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
            "Lcom/graphhopper/routing/ev/BikeTemporalAccess;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "bike_temporal_access"

    const-class v2, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BikeTemporalAccess;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/BikeTemporalAccess;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/BikeTemporalAccess;->$VALUES:[Lcom/graphhopper/routing/ev/BikeTemporalAccess;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/BikeTemporalAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/BikeTemporalAccess;

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
