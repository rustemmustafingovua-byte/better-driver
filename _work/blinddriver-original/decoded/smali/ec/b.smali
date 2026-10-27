.class public final Lec/b;
.super Lsb/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public c:Lpb/h;

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lec/b;->b:I

    invoke-direct {p0}, Lsb/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget v0, p0, Lec/b;->b:I

    packed-switch v0, :pswitch_data_0

    iget-boolean p0, p0, Lec/b;->d:Z

    return p0

    :pswitch_0
    iget-boolean p0, p0, Lec/b;->d:Z

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lpb/i;)V
    .locals 9

    iget v0, p0, Lec/b;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    iget-object v1, p0, Lec/b;->c:Lpb/h;

    invoke-virtual {v1, v0}, Lpb/h;->h(Lpb/h;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lc5/o;->l(Lpb/i;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lpb/q;

    iget-object v2, v2, Lpb/q;->o:Lpb/d;

    invoke-interface {v2}, Lpb/d;->m()Lpb/a;

    move-result-object v3

    invoke-interface {v2}, Lpb/d;->m()Lpb/a;

    move-result-object v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    invoke-interface {v2}, Lpb/d;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v2, v7, v3}, Lpb/d;->c(ILpb/a;)V

    invoke-interface {v2, v6, v4}, Lpb/d;->c(ILpb/a;)V

    iget-object v7, p0, Lec/b;->e:Ljava/lang/Object;

    check-cast v7, Lnb/c;

    invoke-virtual {v7, v3, v4}, Lnb/c;->a(Lpb/a;Lpb/a;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-boolean v5, p0, Lec/b;->d:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lec/b;->d:Z

    if-eqz v2, :cond_1

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    instance-of v0, p1, Lpb/x;

    if-nez v0, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {p1}, Lpb/i;->z()Lpb/h;

    move-result-object v0

    iget-object v1, p0, Lec/b;->c:Lpb/h;

    invoke-virtual {v1, v0}, Lpb/h;->h(Lpb/h;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    new-instance v1, Lpb/a;

    invoke-direct {v1}, Lpb/a;-><init>()V

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x4

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lec/b;->e:Ljava/lang/Object;

    check-cast v3, Lpb/d;

    invoke-interface {v3, v2, v1}, Lpb/d;->c(ILpb/a;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, v1, Lpb/a;->l:D

    iget-wide v5, v1, Lpb/a;->m:D

    invoke-virtual {v0}, Lpb/h;->i()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    iget-wide v7, v0, Lpb/h;->l:D

    cmpl-double v7, v3, v7

    if-ltz v7, :cond_8

    iget-wide v7, v0, Lpb/h;->m:D

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_8

    iget-wide v3, v0, Lpb/h;->n:D

    cmpl-double v3, v5, v3

    if-ltz v3, :cond_8

    iget-wide v3, v0, Lpb/h;->o:D

    cmpg-double v3, v5, v3

    if-gtz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, p1

    check-cast v3, Lpb/x;

    const/4 v4, 0x2

    invoke-static {v1, v3}, Lm2/j;->v(Lpb/a;Lpb/x;)I

    move-result v3

    if-eq v4, v3, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lec/b;->d:Z

    goto :goto_7

    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
