.class public Lo6/a;
.super Ln6/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lo6/p;

.field public final m:Lb6/l;

.field public final n:Lb6/f;

.field public final o:Lb6/l;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Ljava/util/concurrent/ConcurrentHashMap;

.field public s:Lb6/n;

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;I)V
    .locals 0

    iput p6, p0, Lo6/a;->t:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo6/a;->m:Lb6/l;

    .line 3
    iput-object p2, p0, Lo6/a;->l:Lo6/p;

    .line 4
    sget-object p1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p3, :cond_0

    .line 5
    const-string p3, ""

    .line 6
    :cond_0
    iput-object p3, p0, Lo6/a;->p:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lo6/a;->q:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 p2, 0x3f400000    # 0.75f

    const/4 p3, 0x2

    const/16 p4, 0x10

    invoke-direct {p1, p4, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lo6/a;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    iput-object p5, p0, Lo6/a;->o:Lb6/l;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lo6/a;->n:Lb6/f;

    return-void
.end method

.method public constructor <init>(Lo6/a;Lb6/f;I)V
    .locals 0

    iput p3, p0, Lo6/a;->t:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget-object p3, p1, Lo6/a;->m:Lb6/l;

    iput-object p3, p0, Lo6/a;->m:Lb6/l;

    .line 13
    iget-object p3, p1, Lo6/a;->l:Lo6/p;

    iput-object p3, p0, Lo6/a;->l:Lo6/p;

    .line 14
    iget-object p3, p1, Lo6/a;->p:Ljava/lang/String;

    iput-object p3, p0, Lo6/a;->p:Ljava/lang/String;

    .line 15
    iget-boolean p3, p1, Lo6/a;->q:Z

    iput-boolean p3, p0, Lo6/a;->q:Z

    .line 16
    iget-object p3, p1, Lo6/a;->r:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lo6/a;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    iget-object p3, p1, Lo6/a;->o:Lb6/l;

    iput-object p3, p0, Lo6/a;->o:Lb6/l;

    .line 18
    iget-object p1, p1, Lo6/a;->s:Lb6/n;

    iput-object p1, p0, Lo6/a;->s:Lb6/n;

    .line 19
    iput-object p2, p0, Lo6/a;->n:Lb6/f;

    return-void
.end method


# virtual methods
.method public b(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo6/a;->i(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lb6/f;)Ln6/d;
    .locals 2

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo6/a;->n:Lb6/f;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lo6/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lo6/a;-><init>(Lo6/a;Lb6/f;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo6/a;->n:Lb6/f;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lo6/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo6/a;-><init>(Lo6/a;Lb6/f;I)V

    move-object p0, v0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lr5/s0;
    .locals 0

    iget p0, p0, Lo6/a;->t:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lr5/s0;->m:Lr5/s0;

    return-object p0

    :pswitch_0
    sget-object p0, Lr5/s0;->n:Lr5/s0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lo6/a;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ls5/k;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->l0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lo6/a;->j(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->u:Ls5/n;

    iget-object v2, p0, Lo6/a;->m:Lb6/l;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "need JSON String that contains type id (for subtype of "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Lb6/l;->o:Ljava/lang/Class;

    const-string v0, ")"

    invoke-static {p1, p0, v0}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v5, p0, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_2
    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v0, v5, :cond_5

    :goto_0
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lo6/a;->l(Lb6/i;Ljava/lang/String;)Lb6/n;

    move-result-object v2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    iget-boolean v5, p0, Lo6/a;->q:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Ls5/k;->q0(Ls5/n;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v1

    invoke-virtual {v1}, Lu6/z;->n0()V

    iget-object p0, p0, Lo6/a;->p:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {p1}, Ls5/k;->m()V

    invoke-virtual {v1, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p0

    invoke-static {p0, p1}, La6/l;->F0(Lu6/x;Ls5/k;)La6/l;

    move-result-object p1

    invoke-virtual {p1}, La6/l;->z0()Ls5/n;

    :cond_3
    invoke-virtual {v2, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    sget-object v0, Ls5/n;->v:Ls5/n;

    if-ne p1, v0, :cond_4

    :goto_1
    return-object p0

    :cond_4
    const-string p0, "expected closing END_OBJECT after type information and deserialized value"

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p0, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_5
    iget-object p0, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "need JSON Object to contain As.WRAPPER_OBJECT type information for class "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v1, p0, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :pswitch_0
    invoke-virtual {p1}, Ls5/k;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ls5/k;->l0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2, v0}, Lo6/a;->j(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v1

    iget-object v2, p0, Lo6/a;->m:Lb6/l;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_9

    iget-object v1, p0, Lo6/a;->o:Lb6/l;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lo6/a;->l:Lo6/p;

    iget-object v2, v1, Lo6/p;->m:Lb6/l;

    iget-object v2, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Lo6/p;->d(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "`idFromBaseType()` (of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") returned `null`"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v4

    :cond_8
    sget-object p0, Ls5/n;->w:Ls5/n;

    iget-object p1, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "need Array value to contain `As.WRAPPER_ARRAY` type information for class "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_9
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    sget-object v5, Ls5/n;->A:Ls5/n;

    if-eq v1, v5, :cond_b

    if-eqz v1, :cond_a

    iget-boolean v1, v1, Ls5/n;->s:Z

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p0, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "need String, Number of Boolean value that contains type id (for subtype of %s)"

    invoke-virtual {p2, v5, p1, p0}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_b
    :goto_2
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    :goto_3
    invoke-virtual {p0, p2, v2}, Lo6/a;->l(Lb6/i;Ljava/lang/String;)Lb6/n;

    move-result-object v1

    iget-boolean v5, p0, Lo6/a;->q:Z

    if-eqz v5, :cond_c

    instance-of v5, p0, Lo6/e;

    if-nez v5, :cond_c

    sget-object v5, Ls5/n;->u:Ls5/n;

    invoke-virtual {p1, v5}, Ls5/k;->q0(Ls5/n;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v5

    invoke-virtual {v5}, Lu6/z;->n0()V

    iget-object p0, p0, Lo6/a;->p:Ljava/lang/String;

    invoke-virtual {v5, p0}, Lu6/z;->S(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lu6/z;->q0(Ljava/lang/String;)V

    invoke-virtual {p1}, Ls5/k;->m()V

    invoke-virtual {v5, p1}, Lu6/z;->H0(Ls5/k;)Lu6/x;

    move-result-object p0

    invoke-static {p0, p1}, La6/l;->F0(Lu6/x;Ls5/k;)La6/l;

    move-result-object p1

    invoke-virtual {p1}, La6/l;->z0()Ls5/n;

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    sget-object v2, Ls5/n;->x:Ls5/n;

    if-ne p0, v2, :cond_d

    invoke-virtual {v1, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_4

    :cond_d
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    sget-object v0, Ls5/n;->x:Ls5/n;

    if-ne p1, v0, :cond_e

    goto :goto_4

    :cond_e
    const-string p0, "expected closing `JsonToken.END_ARRAY` after type information and deserialized value"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p0, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_f
    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p2, p3}, Lo6/a;->l(Lb6/i;Ljava/lang/String;)Lb6/n;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lb6/i;)Lb6/n;
    .locals 3

    iget-object v0, p0, Lo6/a;->o:Lb6/l;

    if-nez v0, :cond_1

    sget-object p0, Lb6/j;->u:Lb6/j;

    invoke-virtual {p1, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lg6/e0;->o:Lg6/e0;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lg6/e0;->o:Lg6/e0;

    return-object p0

    :cond_2
    iget-object v0, p0, Lo6/a;->s:Lb6/n;

    if-nez v0, :cond_4

    iget-object v0, p0, Lo6/a;->o:Lb6/l;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo6/a;->s:Lb6/n;

    if-nez v1, :cond_3

    iget-object v1, p0, Lo6/a;->o:Lb6/l;

    iget-object v2, p0, Lo6/a;->n:Lb6/f;

    invoke-virtual {p1, v1, v2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lo6/a;->s:Lb6/n;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iget-object p0, p0, Lo6/a;->s:Lb6/n;

    return-object p0
.end method

.method public final l(Lb6/i;Ljava/lang/String;)Lb6/n;
    .locals 5

    iget-object v0, p0, Lo6/a;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/n;

    if-nez v1, :cond_7

    iget-object v1, p0, Lo6/a;->l:Lo6/p;

    invoke-virtual {v1, p1, p2}, Lo6/p;->e(Lb6/i;Ljava/lang/String;)Lb6/l;

    move-result-object v2

    iget-object v3, p0, Lo6/a;->n:Lb6/f;

    iget-object v4, p0, Lo6/a;->m:Lb6/l;

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lo6/a;->k(Lb6/i;)Lb6/n;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Lo6/p;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "type ids are not statically known"

    goto :goto_0

    :cond_0
    const-string v0, "known type ids = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (for POJO property \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/j;->u:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lg6/e0;->o:Lg6/e0;

    return-object p0

    :cond_2
    invoke-virtual {p1, v4, p2, p0}, Lb6/i;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_3
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p0, v1, :cond_5

    invoke-virtual {v2}, Lb6/l;->X()Z

    move-result p0

    if-nez p0, :cond_5

    :try_start_0
    iget-object p0, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, p0}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v2, v4

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lb6/i;->q:Lb6/h;

    iget-object v1, v1, Ld6/m;->m:Ld6/a;

    iget-object v1, v1, Ld6/a;->l:Lt6/p;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p0, v2}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p2, p0}, Lb6/i;->w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;

    move-result-object p0

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {p1, v2, v3}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p0

    :cond_6
    invoke-virtual {v0, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_7
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo6/a;->m:Lb6/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo6/a;->l:Lo6/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
