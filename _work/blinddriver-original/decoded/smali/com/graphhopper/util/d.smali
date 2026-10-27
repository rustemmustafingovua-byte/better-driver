.class public final synthetic Lcom/graphhopper/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:D

.field public final synthetic b:D

.field public final synthetic c:D


# direct methods
.method public synthetic constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/util/d;->a:D

    iput-wide p3, p0, Lcom/graphhopper/util/d;->b:D

    iput-wide p5, p0, Lcom/graphhopper/util/d;->c:D

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 7

    iget-wide v2, p0, Lcom/graphhopper/util/d;->b:D

    iget-wide v4, p0, Lcom/graphhopper/util/d;->c:D

    iget-wide v0, p0, Lcom/graphhopper/util/d;->a:D

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/graphhopper/util/GHUtility;->h(DDDI)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method
