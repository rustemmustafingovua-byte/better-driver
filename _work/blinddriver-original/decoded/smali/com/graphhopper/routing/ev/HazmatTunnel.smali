.class public final enum Lcom/graphhopper/routing/ev/HazmatTunnel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/ev/HazmatTunnel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final enum A:Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final enum B:Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final enum C:Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final enum D:Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final enum E:Lcom/graphhopper/routing/ev/HazmatTunnel;

.field public static final KEY:Ljava/lang/String; = "hazmat_tunnel"


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/ev/HazmatTunnel;
    .locals 5

    sget-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->A:Lcom/graphhopper/routing/ev/HazmatTunnel;

    sget-object v1, Lcom/graphhopper/routing/ev/HazmatTunnel;->B:Lcom/graphhopper/routing/ev/HazmatTunnel;

    sget-object v2, Lcom/graphhopper/routing/ev/HazmatTunnel;->C:Lcom/graphhopper/routing/ev/HazmatTunnel;

    sget-object v3, Lcom/graphhopper/routing/ev/HazmatTunnel;->D:Lcom/graphhopper/routing/ev/HazmatTunnel;

    sget-object v4, Lcom/graphhopper/routing/ev/HazmatTunnel;->E:Lcom/graphhopper/routing/ev/HazmatTunnel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/HazmatTunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->A:Lcom/graphhopper/routing/ev/HazmatTunnel;

    new-instance v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    const-string v1, "B"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/HazmatTunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->B:Lcom/graphhopper/routing/ev/HazmatTunnel;

    new-instance v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    const-string v1, "C"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/HazmatTunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->C:Lcom/graphhopper/routing/ev/HazmatTunnel;

    new-instance v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    const-string v1, "D"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/HazmatTunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->D:Lcom/graphhopper/routing/ev/HazmatTunnel;

    new-instance v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    const-string v1, "E"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/HazmatTunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->E:Lcom/graphhopper/routing/ev/HazmatTunnel;

    invoke-static {}, Lcom/graphhopper/routing/ev/HazmatTunnel;->$values()[Lcom/graphhopper/routing/ev/HazmatTunnel;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->$VALUES:[Lcom/graphhopper/routing/ev/HazmatTunnel;

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
            "Lcom/graphhopper/routing/ev/HazmatTunnel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "hazmat_tunnel"

    const-class v2, Lcom/graphhopper/routing/ev/HazmatTunnel;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/ev/HazmatTunnel;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/HazmatTunnel;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/ev/HazmatTunnel;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/HazmatTunnel;->$VALUES:[Lcom/graphhopper/routing/ev/HazmatTunnel;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/ev/HazmatTunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/ev/HazmatTunnel;

    return-object v0
.end method
