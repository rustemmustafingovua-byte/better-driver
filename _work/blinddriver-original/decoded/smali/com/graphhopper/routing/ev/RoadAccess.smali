.class public final enum Lcom/graphhopper/routing/ev/RoadAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/RoadAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum AGRICULTURAL:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum CUSTOMERS:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum DELIVERY:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum DESTINATION:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum FORESTRY:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final KEY:Ljava/lang/String; = "road_access"

.field public static final enum NO:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

.field public static final enum YES:Lcom/graphhopper/routing/ev/RoadAccess;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 8

    sget-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v1, Lcom/graphhopper/routing/ev/RoadAccess;->DESTINATION:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v2, Lcom/graphhopper/routing/ev/RoadAccess;->CUSTOMERS:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v3, Lcom/graphhopper/routing/ev/RoadAccess;->DELIVERY:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v4, Lcom/graphhopper/routing/ev/RoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v5, Lcom/graphhopper/routing/ev/RoadAccess;->AGRICULTURAL:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v6, Lcom/graphhopper/routing/ev/RoadAccess;->FORESTRY:Lcom/graphhopper/routing/ev/RoadAccess;

    sget-object v7, Lcom/graphhopper/routing/ev/RoadAccess;->NO:Lcom/graphhopper/routing/ev/RoadAccess;

    filled-new-array/range {v0 .. v7}, [Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "DESTINATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->DESTINATION:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "CUSTOMERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->CUSTOMERS:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "DELIVERY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->DELIVERY:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "PRIVATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "AGRICULTURAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->AGRICULTURAL:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "FORESTRY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->FORESTRY:Lcom/graphhopper/routing/ev/RoadAccess;

    new-instance v0, Lcom/graphhopper/routing/ev/RoadAccess;

    const-string v1, "NO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/RoadAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->NO:Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-static {}, Lcom/graphhopper/routing/ev/RoadAccess;->$values()[Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->$VALUES:[Lcom/graphhopper/routing/ev/RoadAccess;

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

.method public static countryHook(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/RoadAccess;)Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 2

    const-string v0, "country_rule"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/countryrules/CountryRule;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    sget-object v1, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    if-nez p1, :cond_1

    sget-object p1, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    :cond_1
    invoke-interface {v0, p0, v1, p1}, Lcom/graphhopper/routing/util/countryrules/CountryRule;->getAccess(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/util/TransportationMode;Lcom/graphhopper/routing/ev/RoadAccess;)Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadAccess;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "road_access"

    const-class v2, Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    return-object p0

    :cond_0
    const-string v0, "permit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/graphhopper/routing/ev/RoadAccess;->PRIVATE:Lcom/graphhopper/routing/ev/RoadAccess;

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadAccess;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/RoadAccess;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/RoadAccess;->$VALUES:[Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/RoadAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/RoadAccess;

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
