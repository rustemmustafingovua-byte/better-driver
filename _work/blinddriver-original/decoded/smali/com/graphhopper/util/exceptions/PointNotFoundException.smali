.class public Lcom/graphhopper/util/exceptions/PointNotFoundException;
.super Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;
.source "SourceFile"


# static fields
.field public static final INDEX_KEY:Ljava/lang/String; = "point_index"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "point_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getPointIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;->getDetails()Ljava/util/Map;

    move-result-object p0

    const-string v0, "point_index"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
