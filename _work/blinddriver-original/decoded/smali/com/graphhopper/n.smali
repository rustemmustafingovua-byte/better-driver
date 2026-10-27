.class public final synthetic Lcom/graphhopper/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/GraphHopper;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/GraphHopper;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/n;->a:Lcom/graphhopper/GraphHopper;

    iput-object p2, p0, Lcom/graphhopper/n;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/graphhopper/n;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/graphhopper/routing/ev/ImportUnit;

    iget-object v0, p0, Lcom/graphhopper/n;->a:Lcom/graphhopper/GraphHopper;

    iget-object v1, p0, Lcom/graphhopper/n;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/graphhopper/n;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/graphhopper/GraphHopper;->s(Lcom/graphhopper/GraphHopper;Ljava/util/Map;Ljava/util/ArrayList;Ljava/lang/String;Lcom/graphhopper/routing/ev/ImportUnit;)V

    return-void
.end method
