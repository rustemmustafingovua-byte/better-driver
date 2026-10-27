.class public final synthetic Lcom/graphhopper/reader/osm/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/n;->a:Z

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/n;->a:Z

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->a(ZJ)J

    move-result-wide p0

    return-wide p0
.end method
