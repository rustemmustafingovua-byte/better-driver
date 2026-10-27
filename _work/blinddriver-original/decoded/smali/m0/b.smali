.class public final synthetic Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Li9/a;ZLm1/e;Lm1/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lm0/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/b;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lm0/b;->m:Z

    iput-object p3, p0, Lm0/b;->o:Ljava/lang/Object;

    iput-object p4, p0, Lm0/b;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lm0/b;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/b;->m:Z

    iput-object p2, p0, Lm0/b;->n:Ljava/lang/Object;

    iput-object p3, p0, Lm0/b;->o:Ljava/lang/Object;

    iput-object p4, p0, Lm0/b;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lm0/b;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/b;->n:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object v1, p0, Lm0/b;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, p0, Lm0/b;->p:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    check-cast p1, Lc2/u;

    const-string v3, "it"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lc2/u;->I()Lc2/u;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3, p1, v4, v5}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v4

    :cond_0
    const-wide v6, 0xffffffffL

    and-long v3, v4, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide v3

    and-long/2addr v3, v6

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lm0/b;->m:Z

    if-nez p0, :cond_1

    invoke-interface {p1}, Lc2/u;->o()J

    move-result-wide p0

    and-long/2addr p0, v6

    long-to-int p0, p0

    invoke-static {v2, p0}, Lod/g3;->l(Lr0/u0;I)V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lm0/b;->n:Ljava/lang/Object;

    check-cast v0, Li9/a;

    iget-object v1, p0, Lm0/b;->o:Ljava/lang/Object;

    check-cast v1, Lm1/e;

    iget-object v2, p0, Lm0/b;->p:Ljava/lang/Object;

    check-cast v2, Lm1/j;

    check-cast p1, Le2/j0;

    invoke-virtual {p1}, Le2/j0;->b()V

    iget-object p1, p1, Le2/j0;->l:Lo1/b;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lm0/b;->m:Z

    if-eqz p0, :cond_3

    invoke-interface {p1}, Lo1/d;->j0()J

    move-result-wide v3

    iget-object p0, p1, Lo1/b;->m:Lg5/m;

    invoke-virtual {p0}, Lg5/m;->m()J

    move-result-wide v5

    invoke-virtual {p0}, Lg5/m;->h()Lm1/o;

    move-result-object v0

    invoke-interface {v0}, Lm1/o;->h()V

    :try_start_0
    iget-object v0, p0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lm2/j;

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v7, v8, v3, v4}, Lm2/j;->A(FFJ)V

    invoke-virtual {p1, v1, v2}, Lo1/b;->e(Lm1/e;Lm1/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v5, v6}, Lm/a;->t(Lg5/m;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v5, v6}, Lm/a;->t(Lg5/m;J)V

    throw p1

    :cond_3
    invoke-virtual {p1, v1, v2}, Lo1/b;->e(Lm1/e;Lm1/j;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
