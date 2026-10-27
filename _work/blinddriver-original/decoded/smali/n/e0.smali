.class public final Ln/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt0/b;

.field public final b:Lr0/e1;

.field public c:J

.field public final d:Lr0/e1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Ln/c0;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Ln/e0;->a:Lt0/b;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/e0;->b:Lr0/e1;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ln/e0;->c:J

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p0, Ln/e0;->d:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lr0/q;I)V
    .locals 6

    const v0, -0x12f4f699

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lr0/m;->a:Lr0/e;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lr0/u0;

    iget-object v3, p0, Ln/e0;->d:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Ln/e0;->b:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const v0, -0x90e1985

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    :goto_2
    invoke-virtual {p1, v4}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    :goto_3
    const v3, -0x8a21ce8

    invoke-virtual {p1, v3}, Lr0/q;->b0(I)V

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_5

    if-ne v5, v2, :cond_6

    :cond_5
    new-instance v5, Landroidx/lifecycle/j0;

    const/16 v2, 0xa

    invoke-direct {v5, v0, p0, v1, v2}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {p1, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Li9/e;

    invoke-static {v5, p0, p1}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Lb0/x;

    const/16 v1, 0xd

    invoke-direct {v0, p2, v1, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method
