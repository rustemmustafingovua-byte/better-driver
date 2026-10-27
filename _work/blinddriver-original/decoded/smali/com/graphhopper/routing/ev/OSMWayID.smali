.class public Lcom/graphhopper/routing/ev/OSMWayID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "osm_way_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/graphhopper/routing/ev/IntEncodedValue;
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const-string v3, "osm_way_id"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
