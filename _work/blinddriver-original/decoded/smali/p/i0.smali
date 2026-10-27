.class public final Lp/i0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/n;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public final z:Ls/i;


# direct methods
.method public constructor <init>(Ls/i;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lp/i0;->z:Ls/i;

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 4

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v1, Lad/w;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final z(Le2/j0;)V
    .locals 8

    invoke-virtual {p1}, Le2/j0;->b()V

    iget-object v2, p1, Le2/j0;->l:Lo1/b;

    iget-boolean v3, p0, Lp/i0;->A:Z

    if-eqz v3, :cond_0

    sget-wide v3, Lm1/p;->b:J

    const v0, 0x3e99999a    # 0.3f

    invoke-static {v0, v3, v4}, Lm1/p;->b(FJ)J

    move-result-wide v3

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v5

    const/16 v7, 0x7a

    move-wide v1, v3

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lo1/d;->h(Lo1/d;JJJI)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lp/i0;->B:Z

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lp/i0;->C:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-wide v0, Lm1/p;->b:J

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v0, v1}, Lm1/p;->b(FJ)J

    move-result-wide v0

    invoke-interface {v2}, Lo1/d;->d()J

    move-result-wide v5

    const/16 v7, 0x7a

    const-wide/16 v3, 0x0

    move-wide v1, v0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lo1/d;->h(Lo1/d;JJJI)V

    return-void
.end method
