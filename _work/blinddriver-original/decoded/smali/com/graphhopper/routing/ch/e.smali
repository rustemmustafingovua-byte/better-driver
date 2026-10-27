.class public final synthetic Lcom/graphhopper/routing/ch/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lcom/graphhopper/routing/ch/CHPreparationGraph;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ch/CHPreparationGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/e;->a:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/e;->a:Lcom/graphhopper/routing/ch/CHPreparationGraph;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getShortcutForPrepareEdge(I)I

    move-result p0

    return p0
.end method
