.class public final synthetic Lcom/graphhopper/reader/osm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/OSMReader;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/OSMReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/c;->a:Lcom/graphhopper/reader/osm/OSMReader;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/c;->a:Lcom/graphhopper/reader/osm/OSMReader;

    check-cast p1, Lcom/graphhopper/reader/ReaderNode;

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->getElevation(Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide p0

    return-wide p0
.end method
