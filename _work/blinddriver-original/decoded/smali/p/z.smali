.class public final Lp/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lp/e1;

.field public final synthetic m:Z

.field public final synthetic n:Li9/a;


# direct methods
.method public constructor <init>(Lp/e1;ZLi9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/z;->l:Lp/e1;

    iput-boolean p2, p0, Lp/z;->m:Z

    iput-object p3, p0, Lp/z;->n:Li9/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lf1/r;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const p1, -0x5af0b3b9

    invoke-virtual {p2, p1}, Lr0/q;->b0(I)V

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lr0/m;->a:Lr0/e;

    if-ne p1, p3, :cond_0

    new-instance p1, Ls/i;

    invoke-direct {p1}, Ls/i;-><init>()V

    invoke-virtual {p2, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    move-object v1, p1

    check-cast v1, Ls/i;

    sget-object p1, Lf1/o;->a:Lf1/o;

    iget-object p3, p0, Lp/z;->l:Lp/e1;

    invoke-static {p1, v1, p3}, Lp/b1;->a(Lf1/r;Ls/i;Lp/e1;)Lf1/r;

    move-result-object p1

    new-instance v0, Lp/y;

    const/4 v5, 0x0

    iget-object v6, p0, Lp/z;->n:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lp/z;->m:Z

    invoke-direct/range {v0 .. v6}, Lp/y;-><init>(Ls/i;Lp/e1;ZZLjava/lang/String;Li9/a;)V

    invoke-interface {p1, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lr0/q;->q(Z)V

    return-object p0
.end method
