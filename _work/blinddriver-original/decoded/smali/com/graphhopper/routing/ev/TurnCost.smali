.class public Lcom/graphhopper/routing/ev/TurnCost;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;I)Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 10

    invoke-static {p1}, Lcom/graphhopper/util/BitUtil;->countBitValue(I)I

    move-result v2

    new-instance v0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/TurnCost;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDDZZZ)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "turn_cost"

    invoke-static {p0, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
