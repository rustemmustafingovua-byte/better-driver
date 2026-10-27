.class public final Lp/p0;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/z1;
.implements Le2/o;
.implements Le2/i;
.implements Le2/l1;
.implements Le2/e2;


# static fields
.field public static final H:Lp/v1;


# instance fields
.field public B:Ls/i;

.field public final C:Li9/c;

.field public D:Ls/d;

.field public E:Lx/a0;

.field public F:Le2/h1;

.field public final G:Lk1/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp/v1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp/p0;->H:Lp/v1;

    return-void
.end method

.method public constructor <init>(Ls/i;ILb0/k2;)V
    .locals 9

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p1, p0, Lp/p0;->B:Ls/i;

    iput-object p3, p0, Lp/p0;->C:Li9/c;

    new-instance v0, Le3/v;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x2

    const-class v3, Lp/p0;

    const-string v4, "onFocusStateChange"

    const-string v5, "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Le3/v;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance p0, Lk1/b0;

    const/16 p1, 0xa

    invoke-direct {p0, p2, p1, v0}, Lk1/b0;-><init>(IILi9/e;)V

    invoke-virtual {v2, p0}, Le2/k;->M0(Le2/j;)Le2/j;

    iput-object p0, v2, Lp/p0;->G:Lk1/b0;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 11

    iget-object v0, p0, Lp/p0;->G:Lk1/b0;

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Lk1/z;->b()Z

    move-result v0

    sget-object v1, Lm2/v;->a:[Lp9/d;

    sget-object v1, Lm2/t;->k:Lm2/w;

    sget-object v2, Lm2/v;->a:[Lp9/d;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v2, Lf2/p;

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v3, 0x0

    const-class v5, Lp/p0;

    const-string v6, "requestFocus"

    const-string v7, "requestFocus()Z"

    const/4 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lf2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    sget-object p0, Lm2/l;->w:Lm2/w;

    new-instance v0, Lm2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void
.end method

.method public final G0()V
    .locals 1

    iget-object v0, p0, Lp/p0;->E:Lx/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lx/a0;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp/p0;->E:Lx/a0;

    return-void
.end method

.method public final P0(Ls/i;Ls/h;)V
    .locals 7

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    check-cast v0, Lz9/d;

    iget-object v0, v0, Lz9/d;->l:Ly8/h;

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/v0;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v1, Lp/o0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lu9/v0;->P(Li9/c;)Lu9/g0;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/m0;

    const/16 v6, 0xc

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x3

    invoke-static {p0, v5, v5, v1, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void

    :cond_1
    move-object v2, p1

    move-object v3, p2

    invoke-virtual {v2, v3}, Ls/i;->b(Ls/h;)V

    return-void
.end method

.method public final Q0()V
    .locals 9

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->f:Lf1/q;

    iget v1, v1, Lf1/q;->o:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v1, v0, Lf1/q;->n:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    move-object v1, v0

    move-object v4, v3

    :goto_2
    if-eqz v1, :cond_8

    instance-of v5, v1, Le2/e2;

    if-eqz v5, :cond_1

    check-cast v1, Le2/e2;

    invoke-interface {v1}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lp/q0;->z:Lp/v1;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_1
    iget v5, v1, Lf1/q;->n:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    instance-of v5, v1, Le2/k;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Le2/k;

    iget-object v5, v5, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x1

    if-eqz v5, :cond_6

    iget v8, v5, Lf1/q;->n:I

    and-int/2addr v8, v2

    if-eqz v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_2

    move-object v1, v5

    goto :goto_4

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Lt0/b;

    const/16 v7, 0x10

    new-array v7, v7, [Lf1/q;

    invoke-direct {v4, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_4
    invoke-virtual {v4, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v5, v5, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v6, v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_a
    move-object v0, v3

    goto :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method public final R0(Ls/i;)V
    .locals 3

    iget-object v0, p0, Lp/p0;->B:Ls/i;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp/p0;->B:Ls/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lp/p0;->D:Ls/d;

    if-eqz v1, :cond_0

    new-instance v2, Ls/e;

    invoke-direct {v2, v1}, Ls/e;-><init>(Ls/d;)V

    invoke-virtual {v0, v2}, Ls/i;->b(Ls/h;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp/p0;->D:Ls/d;

    iput-object p1, p0, Lp/p0;->B:Ls/i;

    :cond_1
    return-void
.end method

.method public final d0()V
    .locals 3

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v1, Lb0/n;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, v0, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Le2/l;->r(Lf1/q;Li9/a;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lx/a0;

    iget-object v1, p0, Lp/p0;->G:Lk1/b0;

    invoke-virtual {v1}, Lk1/b0;->R0()Lk1/z;

    move-result-object v1

    invoke-virtual {v1}, Lk1/z;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp/p0;->E:Lx/a0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lx/a0;->b()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx/a0;->a()Lx/a0;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lp/p0;->E:Lx/a0;

    :cond_2
    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lp/p0;->H:Lp/v1;

    return-object p0
.end method

.method public final q0(Le2/h1;)V
    .locals 1

    iput-object p1, p0, Lp/p0;->F:Le2/h1;

    iget-object v0, p0, Lp/p0;->G:Lk1/b0;

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Lk1/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le2/h1;->U0()Lf1/q;

    move-result-object p1

    iget-boolean p1, p1, Lf1/q;->y:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lp/p0;->F:Le2/h1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le2/h1;->U0()Lf1/q;

    move-result-object p1

    iget-boolean p1, p1, Lf1/q;->y:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lp/p0;->Q0()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lp/p0;->Q0()V

    return-void
.end method
