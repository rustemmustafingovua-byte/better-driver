.class public abstract Le4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Le4/a;->a:Lr0/a0;

    return-void
.end method

.method public static a(Lr0/q;)Landroidx/lifecycle/g1;
    .locals 3

    sget-object v0, Le4/a;->a:Lr0/a0;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x4b1d16e9    # 1.0295017E7f

    invoke-virtual {p0, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/lifecycle/t0;->f(Landroid/view/View;)Landroidx/lifecycle/g1;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    return-object v0

    :cond_0
    const v2, 0x4b1d128d    # 1.0293901E7f

    invoke-virtual {p0, v2}, Lr0/q;->b0(I)V

    goto :goto_0
.end method
