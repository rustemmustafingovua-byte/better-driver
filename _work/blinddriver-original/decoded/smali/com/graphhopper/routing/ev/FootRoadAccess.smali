.class public final enum Lcom/graphhopper/routing/ev/FootRoadAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/FootRoadAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum DESIGNATED:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum DESTINATION:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final KEY:Ljava/lang/String; = "foot_road_access"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum NO:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum PRIVATE:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum USE_SIDEPATH:Lcom/graphhopper/routing/ev/FootRoadAccess;

.field public static final enum YES:Lcom/graphhopper/routing/ev/FootRoadAccess;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/FootRoadAccess;
    .locals 7

    sget-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->MISSING:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v1, Lcom/graphhopper/routing/ev/FootRoadAccess;->YES:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v2, Lcom/graphhopper/routing/ev/FootRoadAccess;->DESIGNATED:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v3, Lcom/graphhopper/routing/ev/FootRoadAccess;->DESTINATION:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v4, Lcom/graphhopper/routing/ev/FootRoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v5, Lcom/graphhopper/routing/ev/FootRoadAccess;->USE_SIDEPATH:Lcom/graphhopper/routing/ev/FootRoadAccess;

    sget-object v6, Lcom/graphhopper/routing/ev/FootRoadAccess;->NO:Lcom/graphhopper/routing/ev/FootRoadAccess;

    filled-new-array/range {v0 .. v6}, [Lcom/graphhopper/routing/ev/FootRoadAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->MISSING:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "YES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->YES:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "DESIGNATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->DESIGNATED:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "DESTINATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->DESTINATION:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "PRIVATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "USE_SIDEPATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->USE_SIDEPATH:Lcom/graphhopper/routing/ev/FootRoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    const-string v1, "NO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/FootRoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->NO:Lcom/graphhopper/routing/ev/FootRoadAccess;

    invoke-static {}, Lcom/graphhopper/routing/ev/FootRoadAccess;->$values()[Lcom/graphhopper/routing/ev/FootRoadAccess;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->$VALUES:[Lcom/graphhopper/routing/ev/FootRoadAccess;

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
            "Lcom/graphhopper/routing/ev/FootRoadAccess;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "foot_road_access"

    const-class v2, Lcom/graphhopper/routing/ev/FootRoadAccess;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/FootRoadAccess;
    .locals 1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "permit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "customers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/FootRoadAccess;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/FootRoadAccess;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/FootRoadAccess;->YES:Lcom/graphhopper/routing/ev/FootRoadAccess;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/graphhopper/routing/ev/FootRoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/FootRoadAccess;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/graphhopper/routing/ev/FootRoadAccess;->MISSING:Lcom/graphhopper/routing/ev/FootRoadAccess;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/FootRoadAccess;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/FootRoadAccess;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/FootRoadAccess;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/FootRoadAccess;->$VALUES:[Lcom/graphhopper/routing/ev/FootRoadAccess;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/FootRoadAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/FootRoadAccess;

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
