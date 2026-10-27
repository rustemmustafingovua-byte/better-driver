.class public Lcom/graphhopper/routing/ev/VehiclePriority;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;IDZ)Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/VehiclePriority;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDZ)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "priority"

    invoke-static {p0, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
