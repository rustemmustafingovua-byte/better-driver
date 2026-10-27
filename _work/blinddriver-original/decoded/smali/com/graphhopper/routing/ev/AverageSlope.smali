.class public Lcom/graphhopper/routing/ev/AverageSlope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "average_slope"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 10

    new-instance v0, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v1, "average_slope"

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValueImpl;-><init>(Ljava/lang/String;IDDZZZ)V

    return-object v0
.end method
