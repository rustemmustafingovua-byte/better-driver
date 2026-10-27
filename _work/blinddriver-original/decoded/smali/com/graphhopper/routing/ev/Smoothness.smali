.class public final enum Lcom/graphhopper/routing/ev/Smoothness;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Smoothness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum BAD:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum EXCELLENT:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum GOOD:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum IMPASSABLE:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum INTERMEDIATE:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final KEY:Ljava/lang/String; = "smoothness"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum OTHER:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum VERY_BAD:Lcom/graphhopper/routing/ev/Smoothness;

.field public static final enum VERY_HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Smoothness;
    .locals 10

    sget-object v0, Lcom/graphhopper/routing/ev/Smoothness;->MISSING:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v1, Lcom/graphhopper/routing/ev/Smoothness;->EXCELLENT:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v2, Lcom/graphhopper/routing/ev/Smoothness;->GOOD:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v3, Lcom/graphhopper/routing/ev/Smoothness;->INTERMEDIATE:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v4, Lcom/graphhopper/routing/ev/Smoothness;->BAD:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v5, Lcom/graphhopper/routing/ev/Smoothness;->VERY_BAD:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v6, Lcom/graphhopper/routing/ev/Smoothness;->HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v7, Lcom/graphhopper/routing/ev/Smoothness;->VERY_HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v8, Lcom/graphhopper/routing/ev/Smoothness;->IMPASSABLE:Lcom/graphhopper/routing/ev/Smoothness;

    sget-object v9, Lcom/graphhopper/routing/ev/Smoothness;->OTHER:Lcom/graphhopper/routing/ev/Smoothness;

    filled-new-array/range {v0 .. v9}, [Lcom/graphhopper/routing/ev/Smoothness;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->MISSING:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "EXCELLENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->EXCELLENT:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "GOOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->GOOD:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "INTERMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->INTERMEDIATE:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "BAD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->BAD:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "VERY_BAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->VERY_BAD:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "HORRIBLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "VERY_HORRIBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->VERY_HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "IMPASSABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->IMPASSABLE:Lcom/graphhopper/routing/ev/Smoothness;

    new-instance v0, Lcom/graphhopper/routing/ev/Smoothness;

    const-string v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Smoothness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->OTHER:Lcom/graphhopper/routing/ev/Smoothness;

    invoke-static {}, Lcom/graphhopper/routing/ev/Smoothness;->$values()[Lcom/graphhopper/routing/ev/Smoothness;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Smoothness;->$VALUES:[Lcom/graphhopper/routing/ev/Smoothness;

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
            "Lcom/graphhopper/routing/ev/Smoothness;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "smoothness"

    const-class v2, Lcom/graphhopper/routing/ev/Smoothness;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Smoothness;
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/Smoothness;->MISSING:Lcom/graphhopper/routing/ev/Smoothness;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/graphhopper/util/Helper;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Smoothness;->valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Smoothness;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/ev/Smoothness;->OTHER:Lcom/graphhopper/routing/ev/Smoothness;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Smoothness;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Smoothness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Smoothness;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Smoothness;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Smoothness;->$VALUES:[Lcom/graphhopper/routing/ev/Smoothness;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Smoothness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Smoothness;

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
