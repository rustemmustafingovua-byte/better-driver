.class public final enum Lcom/graphhopper/routing/ev/Toll;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/Toll;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/Toll;

.field public static final enum ALL:Lcom/graphhopper/routing/ev/Toll;

.field public static final enum HGV:Lcom/graphhopper/routing/ev/Toll;

.field public static final KEY:Ljava/lang/String; = "toll"

.field public static final enum MISSING:Lcom/graphhopper/routing/ev/Toll;

.field public static final enum NO:Lcom/graphhopper/routing/ev/Toll;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/Toll;
    .locals 4

    sget-object v0, Lcom/graphhopper/routing/ev/Toll;->MISSING:Lcom/graphhopper/routing/ev/Toll;

    sget-object v1, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    sget-object v2, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    sget-object v3, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    filled-new-array {v0, v1, v2, v3}, [Lcom/graphhopper/routing/ev/Toll;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/Toll;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Toll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Toll;->MISSING:Lcom/graphhopper/routing/ev/Toll;

    new-instance v0, Lcom/graphhopper/routing/ev/Toll;

    const-string v1, "NO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Toll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    new-instance v0, Lcom/graphhopper/routing/ev/Toll;

    const-string v1, "HGV"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Toll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    new-instance v0, Lcom/graphhopper/routing/ev/Toll;

    const-string v1, "ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/Toll;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    invoke-static {}, Lcom/graphhopper/routing/ev/Toll;->$values()[Lcom/graphhopper/routing/ev/Toll;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/Toll;->$VALUES:[Lcom/graphhopper/routing/ev/Toll;

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
            "Lcom/graphhopper/routing/ev/Toll;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "toll"

    const-class v2, Lcom/graphhopper/routing/ev/Toll;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Toll;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/Toll;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/Toll;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/Toll;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/Toll;->$VALUES:[Lcom/graphhopper/routing/ev/Toll;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/Toll;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/Toll;

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
