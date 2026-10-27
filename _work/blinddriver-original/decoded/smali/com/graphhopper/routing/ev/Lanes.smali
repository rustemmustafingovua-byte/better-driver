.class public Lcom/graphhopper/routing/ev/Lanes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "lanes"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/IntEncodedValue;
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "lanes"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
