.class public final enum Lcom/graphhopper/routing/ev/CarTemporalAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/CarTemporalAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/CarTemporalAccess;

.field public static final CONDITIONALS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "car_temporal_access"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/CarTemporalAccess;

.field public static final enum NO:Lcom/graphhopper/routing/ev/CarTemporalAccess;

.field public static final enum YES:Lcom/graphhopper/routing/ev/CarTemporalAccess;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/CarTemporalAccess;
    .locals 3

    sget-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->MISSING:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    sget-object v1, Lcom/graphhopper/routing/ev/CarTemporalAccess;->YES:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    sget-object v2, Lcom/graphhopper/routing/ev/CarTemporalAccess;->NO:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/routing/ev/CarTemporalAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/CarTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->MISSING:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    const-string v1, "YES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/CarTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->YES:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    const-string v1, "NO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/CarTemporalAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->NO:Lcom/graphhopper/routing/ev/CarTemporalAccess;

    invoke-static {}, Lcom/graphhopper/routing/ev/CarTemporalAccess;->$values()[Lcom/graphhopper/routing/ev/CarTemporalAccess;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->$VALUES:[Lcom/graphhopper/routing/ev/CarTemporalAccess;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "motor_vehicle:conditional"

    const-string v2, "motorcar:conditional"

    const-string v3, "access:conditional"

    const-string v4, "vehicle:conditional"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->CONDITIONALS:Ljava/util/Collection;

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
            "Lcom/graphhopper/routing/ev/CarTemporalAccess;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "car_temporal_access"

    const-class v2, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/CarTemporalAccess;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/CarTemporalAccess;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/CarTemporalAccess;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/CarTemporalAccess;->$VALUES:[Lcom/graphhopper/routing/ev/CarTemporalAccess;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/CarTemporalAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/CarTemporalAccess;

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
