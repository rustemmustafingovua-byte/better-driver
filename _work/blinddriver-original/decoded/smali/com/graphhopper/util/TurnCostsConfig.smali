.class public Lcom/graphhopper/util/TurnCostsConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_SUPPORTED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFINITE_U_TURN_COSTS:I = -0x1


# instance fields
.field private allowTurnPenaltyInRequest:Z

.field private uTurnCosts:I

.field private vehicleTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 37

    const-string v35, "trailer"

    const-string v36, "tourist_bus"

    const-string v1, "agricultural"

    const-string v2, "atv"

    const-string v3, "auto_rickshaw"

    const-string v4, "bdouble"

    const-string v5, "bicycle"

    const-string v6, "bus"

    const-string v7, "caravan"

    const-string v8, "carpool"

    const-string v9, "coach"

    const-string v10, "delivery"

    const-string v11, "destination"

    const-string v12, "emergency"

    const-string v13, "foot"

    const-string v14, "golf_cart"

    const-string v15, "goods"

    const-string v16, "hazmat"

    const-string v17, "hgv"

    const-string v18, "hgv:trailer"

    const-string v19, "hov"

    const-string v20, "minibus"

    const-string v21, "mofa"

    const-string v22, "moped"

    const-string v23, "motorcar"

    const-string v24, "motorcycle"

    const-string v25, "motor_vehicle"

    const-string v26, "motorhome"

    const-string v27, "nev"

    const-string v28, "ohv"

    const-string v29, "psv"

    const-string v30, "residents"

    const-string v31, "share_taxi"

    const-string v32, "small_electric_vehicle"

    const-string v33, "speed_pedelec"

    const-string v34, "taxi"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/TurnCostsConfig;->ALL_SUPPORTED:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/TurnCostsConfig;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    .line 5
    iget v0, p1, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    iput v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    .line 6
    iget-object v0, p1, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    .line 10
    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TurnCostsConfig;->check(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    .line 13
    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TurnCostsConfig;->check(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    .line 14
    iput p2, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    return-void
.end method

.method public static bike()Lcom/graphhopper/util/TurnCostsConfig;
    .locals 4

    new-instance v0, Lcom/graphhopper/util/TurnCostsConfig;

    const-string v1, "bicycle"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/graphhopper/util/TurnCostsConfig;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static car()Lcom/graphhopper/util/TurnCostsConfig;
    .locals 6

    new-instance v0, Lcom/graphhopper/util/TurnCostsConfig;

    const-string v1, "motorcar"

    const-string v2, "motor_vehicle"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/graphhopper/util/TurnCostsConfig;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public check(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/graphhopper/util/TurnCostsConfig;->ALL_SUPPORTED:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Currently we do not support the restriction: "

    invoke-static {p1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "turn_costs cannot have empty vehicle_types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUTurnCosts()I
    .locals 0
    .annotation runtime Lr5/i0;
        value = "u_turn_costs"
    .end annotation

    iget p0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    return p0
.end method

.method public getVehicleTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
        value = "vehicle_types"
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/TurnCostsConfig;->check(Ljava/util/List;)Ljava/util/List;

    iget-object p0, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    return-object p0
.end method

.method public isAllowTurnPenaltyInRequest()Z
    .locals 0
    .annotation runtime Lr5/i0;
        value = "allow_turn_penalty_in_request"
    .end annotation

    iget-boolean p0, p0, Lcom/graphhopper/util/TurnCostsConfig;->allowTurnPenaltyInRequest:Z

    return p0
.end method

.method public setAllowTurnPenaltyInRequest(Z)Lcom/graphhopper/util/TurnCostsConfig;
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/util/TurnCostsConfig;->allowTurnPenaltyInRequest:Z

    return-object p0
.end method

.method public setUTurnCosts(I)Lcom/graphhopper/util/TurnCostsConfig;
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    return-object p0
.end method

.method public setVehicleTypes(Ljava/util/List;)Lcom/graphhopper/util/TurnCostsConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/graphhopper/util/TurnCostsConfig;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TurnCostsConfig;->check(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/TurnCostsConfig;->uTurnCosts:I

    iget-object p0, p0, Lcom/graphhopper/util/TurnCostsConfig;->vehicleTypes:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uTurnCosts="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vehicleTypes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
