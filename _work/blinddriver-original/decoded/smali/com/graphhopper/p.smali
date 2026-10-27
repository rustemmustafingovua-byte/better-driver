.class public final synthetic Lcom/graphhopper/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/GraphHopper;

.field public final synthetic b:Lcom/graphhopper/routing/util/OSMParsers;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/util/OSMParsers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/p;->a:Lcom/graphhopper/GraphHopper;

    iput-object p2, p0, Lcom/graphhopper/p;->b:Lcom/graphhopper/routing/util/OSMParsers;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/graphhopper/p;->a:Lcom/graphhopper/GraphHopper;

    iget-object p0, p0, Lcom/graphhopper/p;->b:Lcom/graphhopper/routing/util/OSMParsers;

    invoke-static {v0, p0, p1, p2}, Lcom/graphhopper/GraphHopper;->E(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/util/OSMParsers;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
