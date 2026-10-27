.class public final synthetic Lcom/graphhopper/reader/osm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/WayToEdgesMap;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WayToEdgesMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/f;->a:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/f;->a:Lcom/graphhopper/reader/osm/WayToEdgesMap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/WayToEdgesMap;->reserve(J)V

    return-void
.end method
