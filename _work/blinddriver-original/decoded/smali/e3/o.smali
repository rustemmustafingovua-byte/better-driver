.class public final Le3/o;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Landroid/content/Context;

.field public final synthetic m:Li9/c;

.field public final synthetic n:Lr0/p;

.field public final synthetic o:Lc1/f;

.field public final synthetic p:I

.field public final synthetic q:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li9/c;Lr0/p;Lc1/f;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le3/o;->l:Landroid/content/Context;

    iput-object p2, p0, Le3/o;->m:Li9/c;

    iput-object p3, p0, Le3/o;->n:Lr0/p;

    iput-object p4, p0, Le3/o;->o:Lc1/f;

    iput p5, p0, Le3/o;->p:I

    iput-object p6, p0, Le3/o;->q:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    new-instance v0, Le3/z;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.node.Owner"

    iget-object v2, p0, Le3/o;->q:Landroid/view/View;

    invoke-static {v2, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Le2/q1;

    iget-object v1, p0, Le3/o;->l:Landroid/content/Context;

    iget-object v2, p0, Le3/o;->m:Li9/c;

    iget-object v3, p0, Le3/o;->n:Lr0/p;

    iget-object v4, p0, Le3/o;->o:Lc1/f;

    iget v5, p0, Le3/o;->p:I

    invoke-direct/range {v0 .. v6}, Le3/z;-><init>(Landroid/content/Context;Li9/c;Lr0/p;Lc1/f;ILe2/q1;)V

    invoke-virtual {v0}, Le3/k;->getLayoutNode()Le2/g0;

    move-result-object p0

    return-object p0
.end method
