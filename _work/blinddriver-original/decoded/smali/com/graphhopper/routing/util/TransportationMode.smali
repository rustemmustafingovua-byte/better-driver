.class public final enum Lcom/graphhopper/routing/util/TransportationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/routing/util/TransportationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum BIKE:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum BUS:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum CAR:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum FOOT:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum HGV:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum HOV:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum MOTORCYCLE:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum OTHER:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum PSV:Lcom/graphhopper/routing/util/TransportationMode;

.field public static final enum VEHICLE:Lcom/graphhopper/routing/util/TransportationMode;


# instance fields
.field private final motorVehicle:Z


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/routing/util/TransportationMode;
    .locals 10

    sget-object v0, Lcom/graphhopper/routing/util/TransportationMode;->OTHER:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v1, Lcom/graphhopper/routing/util/TransportationMode;->FOOT:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v2, Lcom/graphhopper/routing/util/TransportationMode;->VEHICLE:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v3, Lcom/graphhopper/routing/util/TransportationMode;->BIKE:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v4, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v5, Lcom/graphhopper/routing/util/TransportationMode;->MOTORCYCLE:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v6, Lcom/graphhopper/routing/util/TransportationMode;->HGV:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v7, Lcom/graphhopper/routing/util/TransportationMode;->PSV:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v8, Lcom/graphhopper/routing/util/TransportationMode;->BUS:Lcom/graphhopper/routing/util/TransportationMode;

    sget-object v9, Lcom/graphhopper/routing/util/TransportationMode;->HOV:Lcom/graphhopper/routing/util/TransportationMode;

    filled-new-array/range {v0 .. v9}, [Lcom/graphhopper/routing/util/TransportationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->OTHER:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "FOOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->FOOT:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "VEHICLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->VEHICLE:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "BIKE"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->BIKE:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "CAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->CAR:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "MOTORCYCLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->MOTORCYCLE:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "HGV"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->HGV:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "PSV"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->PSV:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "BUS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->BUS:Lcom/graphhopper/routing/util/TransportationMode;

    new-instance v0, Lcom/graphhopper/routing/util/TransportationMode;

    const-string v1, "HOV"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/routing/util/TransportationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->HOV:Lcom/graphhopper/routing/util/TransportationMode;

    invoke-static {}, Lcom/graphhopper/routing/util/TransportationMode;->$values()[Lcom/graphhopper/routing/util/TransportationMode;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/TransportationMode;->$VALUES:[Lcom/graphhopper/routing/util/TransportationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/graphhopper/routing/util/TransportationMode;->motorVehicle:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/routing/util/TransportationMode;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/util/TransportationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/TransportationMode;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/routing/util/TransportationMode;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/TransportationMode;->$VALUES:[Lcom/graphhopper/routing/util/TransportationMode;

    invoke-virtual {v0}, [Lcom/graphhopper/routing/util/TransportationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/routing/util/TransportationMode;

    return-object v0
.end method


# virtual methods
.method public isMotorVehicle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/util/TransportationMode;->motorVehicle:Z

    return p0
.end method
