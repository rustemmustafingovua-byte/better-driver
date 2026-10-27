.class public final Lf2/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/t;


# instance fields
.field public final l:Landroid/view/View;

.field public final m:Lu2/y;

.field public final n:Lu9/t;

.field public final o:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Landroid/view/View;Lu2/y;Lu9/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/q0;->l:Landroid/view/View;

    iput-object p2, p0, Lf2/q0;->m:Lu2/y;

    iput-object p3, p0, Lf2/q0;->n:Lu9/t;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lf2/q0;->o:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final C()Ly8/h;
    .locals 0

    iget-object p0, p0, Lf2/q0;->n:Lu9/t;

    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lk0/s;La9/c;)V
    .locals 5

    instance-of v0, p2, Lf2/p0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf2/p0;

    iget v1, v0, Lf2/p0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf2/p0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf2/p0;

    invoke-direct {v0, p0, p2}, Lf2/p0;-><init>(Lf2/q0;La9/c;)V

    :goto_0
    iget-object p2, v0, Lf2/p0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lf2/p0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lc5/f;

    const/4 v2, 0x5

    invoke-direct {p2, v2, p1, p0}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/i0;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4, v2}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput v3, v0, Lf2/p0;->n:I

    new-instance v2, Landroidx/lifecycle/j0;

    iget-object p0, p0, Lf2/q0;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, p2, p0, p1, v4}, Landroidx/lifecycle/j0;-><init>(Li9/c;Ljava/util/concurrent/atomic/AtomicReference;Li9/e;Ly8/c;)V

    invoke-static {v2, v0}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-void

    :cond_3
    :goto_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
