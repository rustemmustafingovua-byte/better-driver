.class public final enum Lcom/graphhopper/routing/ev/UrbanDensity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/UrbanDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/UrbanDensity;

.field public static final enum CITY:Lcom/graphhopper/routing/ev/UrbanDensity;

.field public static final KEY:Ljava/lang/String; = "urban_density"

.field public static final enum RESIDENTIAL:Lcom/graphhopper/routing/ev/UrbanDensity;

.field public static final enum RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/UrbanDensity;
    .locals 3

    sget-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    sget-object v1, Lcom/graphhopper/routing/ev/UrbanDensity;->RESIDENTIAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    sget-object v2, Lcom/graphhopper/routing/ev/UrbanDensity;->CITY:Lcom/graphhopper/routing/ev/UrbanDensity;

    filled-new-array {v0, v1, v2}, [Lcom/graphhopper/routing/ev/UrbanDensity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/UrbanDensity;

    const-string v1, "RURAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/UrbanDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->RURAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    new-instance v0, Lcom/graphhopper/routing/ev/UrbanDensity;

    const-string v1, "RESIDENTIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/UrbanDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->RESIDENTIAL:Lcom/graphhopper/routing/ev/UrbanDensity;

    new-instance v0, Lcom/graphhopper/routing/ev/UrbanDensity;

    const-string v1, "CITY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/UrbanDensity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->CITY:Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-static {}, Lcom/graphhopper/routing/ev/UrbanDensity;->$values()[Lcom/graphhopper/routing/ev/UrbanDensity;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->$VALUES:[Lcom/graphhopper/routing/ev/UrbanDensity;

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
            "Lcom/graphhopper/routing/ev/UrbanDensity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "urban_density"

    const-class v2, Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/UrbanDensity;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/UrbanDensity;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/UrbanDensity;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/UrbanDensity;->$VALUES:[Lcom/graphhopper/routing/ev/UrbanDensity;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/UrbanDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/UrbanDensity;

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
