.class public final synthetic Lcom/graphhopper/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lcom/carrotsearch/hppc/x;


# direct methods
.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/h;->a:Lcom/carrotsearch/hppc/x;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/h;->a:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    return p0
.end method
