.class public final synthetic Lcom/graphhopper/storage/index/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/graphhopper/storage/index/LocationIndexTree;

.field public final synthetic b:Lcom/carrotsearch/hppc/c0;

.field public final synthetic c:Lcom/graphhopper/routing/util/EdgeFilter;

.field public final synthetic d:D

.field public final synthetic e:D

.field public final synthetic f:Lcom/graphhopper/storage/index/Snap;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/storage/index/LocationIndexTree;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/index/b;->a:Lcom/graphhopper/storage/index/LocationIndexTree;

    iput-object p2, p0, Lcom/graphhopper/storage/index/b;->b:Lcom/carrotsearch/hppc/c0;

    iput-object p3, p0, Lcom/graphhopper/storage/index/b;->c:Lcom/graphhopper/routing/util/EdgeFilter;

    iput-wide p4, p0, Lcom/graphhopper/storage/index/b;->d:D

    iput-wide p6, p0, Lcom/graphhopper/storage/index/b;->e:D

    iput-object p8, p0, Lcom/graphhopper/storage/index/b;->f:Lcom/graphhopper/storage/index/Snap;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 9

    iget-wide v5, p0, Lcom/graphhopper/storage/index/b;->e:D

    iget-object v7, p0, Lcom/graphhopper/storage/index/b;->f:Lcom/graphhopper/storage/index/Snap;

    iget-object v0, p0, Lcom/graphhopper/storage/index/b;->a:Lcom/graphhopper/storage/index/LocationIndexTree;

    iget-object v1, p0, Lcom/graphhopper/storage/index/b;->b:Lcom/carrotsearch/hppc/c0;

    iget-object v2, p0, Lcom/graphhopper/storage/index/b;->c:Lcom/graphhopper/routing/util/EdgeFilter;

    iget-wide v3, p0, Lcom/graphhopper/storage/index/b;->d:D

    move v8, p1

    invoke-static/range {v0 .. v8}, Lcom/graphhopper/storage/index/LocationIndexTree;->a(Lcom/graphhopper/storage/index/LocationIndexTree;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/routing/util/EdgeFilter;DDLcom/graphhopper/storage/index/Snap;I)V

    return-void
.end method
