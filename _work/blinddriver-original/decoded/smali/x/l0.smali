.class public final Lx/l0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/z1;


# instance fields
.field public A:Lw/c;

.field public B:Lr/m1;

.field public C:Z

.field public D:Lm2/i;

.field public final E:Lx/j0;

.field public F:Lx/j0;

.field public z:Li9/a;


# direct methods
.method public constructor <init>(Li9/a;Lw/c;Lr/m1;Z)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lx/l0;->z:Li9/a;

    iput-object p2, p0, Lx/l0;->A:Lw/c;

    iput-object p3, p0, Lx/l0;->B:Lr/m1;

    iput-boolean p4, p0, Lx/l0;->C:Z

    new-instance p1, Lx/j0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lx/j0;-><init>(Lx/l0;I)V

    iput-object p1, p0, Lx/l0;->E:Lx/j0;

    invoke-virtual {p0}, Lx/l0;->M0()V

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 7

    sget-object v0, Lm2/v;->a:[Lp9/d;

    sget-object v0, Lm2/t;->m:Lm2/w;

    sget-object v1, Lm2/v;->a:[Lp9/d;

    const/4 v2, 0x6

    aget-object v2, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v0, p0, Lx/l0;->E:Lx/j0;

    sget-object v2, Lm2/t;->M:Lm2/w;

    invoke-interface {p1, v2, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v0, p0, Lx/l0;->B:Lr/m1;

    sget-object v2, Lr/m1;->l:Lr/m1;

    const-string v3, "scrollAxisRange"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lx/l0;->D:Lm2/i;

    if-eqz v0, :cond_0

    sget-object v2, Lm2/t;->v:Lm2/w;

    const/16 v3, 0xd

    aget-object v3, v1, v3

    invoke-interface {p1, v2, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v0, p0, Lx/l0;->D:Lm2/i;

    if-eqz v0, :cond_4

    sget-object v2, Lm2/t;->u:Lm2/w;

    const/16 v3, 0xc

    aget-object v3, v1, v3

    invoke-interface {p1, v2, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lx/l0;->F:Lx/j0;

    if-eqz v0, :cond_2

    sget-object v2, Lm2/l;->f:Lm2/w;

    new-instance v3, Lm2/a;

    invoke-direct {v3, v4, v0}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lx/k0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lx/k0;-><init>(Lx/l0;I)V

    sget-object v2, Lm2/l;->C:Lm2/w;

    new-instance v3, Lm2/a;

    new-instance v5, Landroidx/fragment/app/t;

    const/16 v6, 0x19

    invoke-direct {v5, v6, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, v4, v5}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object p0, p0, Lx/l0;->A:Lw/c;

    iget-boolean v0, p0, Lw/c;->c:Z

    iget-object p0, p0, Lw/c;->a:Lr0/d0;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Lm2/c;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, p0, v2}, Lm2/c;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Lm2/c;

    invoke-virtual {p0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {v0, v2, p0}, Lm2/c;-><init>(II)V

    :goto_1
    sget-object p0, Lm2/t;->f:Lm2/w;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-interface {p1, p0, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {v3}, Lj9/n;->m(Ljava/lang/String;)V

    throw v4
.end method

.method public final M0()V
    .locals 4

    new-instance v0, Lm2/i;

    new-instance v1, Lx/k0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lx/k0;-><init>(Lx/l0;I)V

    new-instance v2, Lx/k0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lx/k0;-><init>(Lx/l0;I)V

    invoke-direct {v0, v1, v2}, Lm2/i;-><init>(Li9/a;Li9/a;)V

    iput-object v0, p0, Lx/l0;->D:Lm2/i;

    iget-boolean v0, p0, Lx/l0;->C:Z

    if-eqz v0, :cond_0

    new-instance v0, Lx/j0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lx/j0;-><init>(Lx/l0;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lx/l0;->F:Lx/j0;

    return-void
.end method
