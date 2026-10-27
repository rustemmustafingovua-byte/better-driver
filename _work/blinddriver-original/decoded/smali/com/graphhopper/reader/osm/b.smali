.class public final synthetic Lcom/graphhopper/reader/osm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/carrotsearch/hppc/j;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/carrotsearch/hppc/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/b;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/b;->b:Lcom/carrotsearch/hppc/j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/b;->b:Lcom/carrotsearch/hppc/j;

    check-cast p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/b;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->b(Ljava/util/ArrayList;Lcom/carrotsearch/hppc/j;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)V

    return-void
.end method
