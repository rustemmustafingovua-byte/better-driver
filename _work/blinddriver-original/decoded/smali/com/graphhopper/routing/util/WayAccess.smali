.class public final enum Lcom/graphhopper/routing/util/WayAccess;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/util/WayAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/util/WayAccess;

.field public static final enum CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

.field public static final enum FERRY:Lcom/graphhopper/routing/util/WayAccess;

.field public static final enum OTHER:Lcom/graphhopper/routing/util/WayAccess;

.field public static final enum WAY:Lcom/graphhopper/routing/util/WayAccess;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/util/WayAccess;
    .locals 4

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    sget-object v1, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    sget-object v2, Lcom/graphhopper/routing/util/WayAccess;->OTHER:Lcom/graphhopper/routing/util/WayAccess;

    sget-object v3, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    filled-new-array {v0, v1, v2, v3}, [Lcom/graphhopper/routing/util/WayAccess;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/WayAccess;

    const-string v1, "WAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/util/WayAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    new-instance v0, Lcom/graphhopper/routing/util/WayAccess;

    const-string v1, "FERRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/util/WayAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    new-instance v0, Lcom/graphhopper/routing/util/WayAccess;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/util/WayAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/util/WayAccess;->OTHER:Lcom/graphhopper/routing/util/WayAccess;

    new-instance v0, Lcom/graphhopper/routing/util/WayAccess;

    const-string v1, "CAN_SKIP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/util/WayAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    invoke-static {}, Lcom/graphhopper/routing/util/WayAccess;->$values()[Lcom/graphhopper/routing/util/WayAccess;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/WayAccess;->$VALUES:[Lcom/graphhopper/routing/util/WayAccess;

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

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/util/WayAccess;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/util/WayAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/WayAccess;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/util/WayAccess;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->$VALUES:[Lcom/graphhopper/routing/util/WayAccess;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/util/WayAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/util/WayAccess;

    return-object v0
.end method


# virtual methods
.method public canSkip()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->CAN_SKIP:Lcom/graphhopper/routing/util/WayAccess;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFerry()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->FERRY:Lcom/graphhopper/routing/util/WayAccess;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOther()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->OTHER:Lcom/graphhopper/routing/util/WayAccess;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWay()Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lcom/graphhopper/routing/util/WayAccess;->WAY:Lcom/graphhopper/routing/util/WayAccess;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
