.class public Lcom/graphhopper/routing/ev/FerrySpeed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "ferry_speed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 6

    new-instance v0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    const-string v1, "ferry_speed"

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDZ)V

    return-object v0
.end method
