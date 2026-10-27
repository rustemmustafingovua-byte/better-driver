.class public final Le3/z;
.super Le3/k;
.source "SourceFile"


# instance fields
.field public final L:Landroid/view/View;

.field public final M:Lx1/d;

.field public N:Lc1/e;

.field public O:Li9/c;

.field public P:Li9/c;

.field public Q:Li9/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li9/c;Lr0/p;Lc1/f;ILe2/q1;)V
    .locals 7

    invoke-interface {p2, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/view/View;

    new-instance v4, Lx1/d;

    invoke-direct {v4}, Lx1/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Le3/k;-><init>(Landroid/content/Context;Lr0/p;ILx1/d;Landroid/view/View;Le2/q1;)V

    iput-object v5, v0, Le3/z;->L:Landroid/view/View;

    iput-object v4, v0, Le3/z;->M:Lx1/d;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4, p0}, Lc1/f;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    instance-of p3, p2, Landroid/util/SparseArray;

    if-eqz p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroid/util/SparseArray;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v5, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p1, Le3/j;

    const/4 p2, 0x2

    invoke-direct {p1, v0, p2}, Le3/j;-><init>(Le3/z;I)V

    invoke-interface {p4, p0, p1}, Lc1/f;->e(Ljava/lang/String;Li9/a;)Lc1/e;

    move-result-object p0

    invoke-direct {v0, p0}, Le3/z;->setSavableRegistryEntry(Lc1/e;)V

    :cond_3
    sget-object p0, Le3/c;->p:Le3/c;

    iput-object p0, v0, Le3/z;->O:Li9/c;

    iput-object p0, v0, Le3/z;->P:Li9/c;

    iput-object p0, v0, Le3/z;->Q:Li9/c;

    return-void
.end method

.method public static final h(Le3/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le3/z;->setSavableRegistryEntry(Lc1/e;)V

    return-void
.end method

.method private final setSavableRegistryEntry(Lc1/e;)V
    .locals 1

    iget-object v0, p0, Le3/z;->N:Lc1/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg5/m;

    invoke-virtual {v0}, Lg5/m;->x()V

    :cond_0
    iput-object p1, p0, Le3/z;->N:Lc1/e;

    return-void
.end method


# virtual methods
.method public final getDispatcher()Lx1/d;
    .locals 0

    iget-object p0, p0, Le3/z;->M:Lx1/d;

    return-object p0
.end method

.method public final getReleaseBlock()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/z;->Q:Li9/c;

    return-object p0
.end method

.method public final getResetBlock()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/z;->P:Li9/c;

    return-object p0
.end method

.method public bridge synthetic getSubCompositionView()Lf2/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUpdateBlock()Li9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li9/c;"
        }
    .end annotation

    iget-object p0, p0, Le3/z;->O:Li9/c;

    return-object p0
.end method

.method public getViewRoot()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final setReleaseBlock(Li9/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/z;->Q:Li9/c;

    new-instance p1, Le3/j;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Le3/j;-><init>(Le3/z;I)V

    invoke-virtual {p0, p1}, Le3/k;->setRelease(Li9/a;)V

    return-void
.end method

.method public final setResetBlock(Li9/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/z;->P:Li9/c;

    new-instance p1, Le3/j;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Le3/j;-><init>(Le3/z;I)V

    invoke-virtual {p0, p1}, Le3/k;->setReset(Li9/a;)V

    return-void
.end method

.method public final setUpdateBlock(Li9/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li9/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Le3/z;->O:Li9/c;

    new-instance p1, Le3/j;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Le3/j;-><init>(Le3/z;I)V

    invoke-virtual {p0, p1}, Le3/k;->setUpdate(Li9/a;)V

    return-void
.end method
