.class public final enum Lcom/graphhopper/routing/ev/Hgv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Hgv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum AGRICULTURAL:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum DELIVERY:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum DESIGNATED:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum DESTINATION:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum DISCOURAGED:Lcom/graphhopper/routing/ev/Hgv;

.field public static final KEY:Ljava/lang/String; = "hgv"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum NO:Lcom/graphhopper/routing/ev/Hgv;

.field public static final enum YES:Lcom/graphhopper/routing/ev/Hgv;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Hgv;
    .locals 8

    sget-object v0, Lcom/graphhopper/routing/ev/Hgv;->MISSING:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v1, Lcom/graphhopper/routing/ev/Hgv;->YES:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v2, Lcom/graphhopper/routing/ev/Hgv;->DESIGNATED:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v3, Lcom/graphhopper/routing/ev/Hgv;->DESTINATION:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v4, Lcom/graphhopper/routing/ev/Hgv;->DELIVERY:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v5, Lcom/graphhopper/routing/ev/Hgv;->DISCOURAGED:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v6, Lcom/graphhopper/routing/ev/Hgv;->AGRICULTURAL:Lcom/graphhopper/routing/ev/Hgv;

    sget-object v7, Lcom/graphhopper/routing/ev/Hgv;->NO:Lcom/graphhopper/routing/ev/Hgv;

    filled-new-array/range {v0 .. v7}, [Lcom/graphhopper/routing/ev/Hgv;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->MISSING:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "YES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->YES:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "DESIGNATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->DESIGNATED:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "DESTINATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->DESTINATION:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "DELIVERY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->DELIVERY:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "DISCOURAGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->DISCOURAGED:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "AGRICULTURAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->AGRICULTURAL:Lcom/graphhopper/routing/ev/Hgv;

    new-instance v0, Lcom/graphhopper/routing/ev/Hgv;

    const-string v1, "NO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Hgv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->NO:Lcom/graphhopper/routing/ev/Hgv;

    invoke-static {}, Lcom/graphhopper/routing/ev/Hgv;->$values()[Lcom/graphhopper/routing/ev/Hgv;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Hgv;->$VALUES:[Lcom/graphhopper/routing/ev/Hgv;

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
            "Lcom/graphhopper/routing/ev/Hgv;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "hgv"

    const-class v2, Lcom/graphhopper/routing/ev/Hgv;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Hgv;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/Hgv;->MISSING:Lcom/graphhopper/routing/ev/Hgv;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Hgv;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Hgv;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/Hgv;->MISSING:Lcom/graphhopper/routing/ev/Hgv;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Hgv;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Hgv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Hgv;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Hgv;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Hgv;->$VALUES:[Lcom/graphhopper/routing/ev/Hgv;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Hgv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Hgv;

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
