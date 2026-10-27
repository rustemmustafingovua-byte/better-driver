.class public abstract Lp/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/p1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ln/p1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/c;)V

    sput-object v1, Lp/u1;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lr0/q;)Lp/j;
    .locals 10

    const v0, 0x10dd5ab0

    invoke-virtual {p0, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lp/u1;->a:Lr0/a0;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v4, Lp/j;

    iget-object v5, v0, Lp/k;->a:Landroid/content/Context;

    iget-object v6, v0, Lp/k;->b:Lb3/c;

    iget-wide v7, v0, Lp/k;->c:J

    iget-object v9, v0, Lp/k;->d:Lu/s0;

    invoke-direct/range {v4 .. v9}, Lp/j;-><init>(Landroid/content/Context;Lb3/c;JLu/s0;)V

    invoke-virtual {p0, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v3, v4

    :cond_2
    check-cast v3, Lp/j;

    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    return-object v3
.end method
