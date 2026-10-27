.class public final Lmb/f6;
.super Lmb/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lmb/x;

.field public final synthetic g:I

.field public final h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmb/a7;Lmb/x;Lmb/s1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/f6;->g:I

    .line 3
    iput-object p1, p0, Lmb/f6;->i:Ljava/lang/Object;

    iput-object p3, p0, Lmb/f6;->h:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lmb/f6;-><init>(Lmb/x;)V

    return-void
.end method

.method public constructor <init>(Lmb/i6;Ljava/lang/reflect/Constructor;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmb/f6;->g:I

    .line 1
    iput-object p1, p0, Lmb/f6;->i:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmb/f6;-><init>(Lmb/x;)V

    iput-object p2, p0, Lmb/f6;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/x;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lmb/f6;->f:Lmb/x;

    invoke-direct {p0, p1}, Lmb/t;-><init>(Lmb/x;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Lmb/s1;

    iget-object p0, p0, Lmb/l0;->d:[Lmb/x3;

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p0

    invoke-static {p0}, Lmb/i6;->L(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lmb/c6;
    .locals 5

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/s1;

    iget-object v1, v0, Lmb/l0;->c:Lmb/v5;

    check-cast v1, Lmb/e0;

    instance-of v2, v1, Lmb/v2;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lmb/f6;->k()Lmb/c6;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    instance-of v1, v1, Lmb/r3;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmb/f6;->k()Lmb/c6;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lmb/f6;->i:Ljava/lang/Object;

    check-cast v2, Lmb/a7;

    iget-object v3, v0, Lmb/l0;->c:Lmb/v5;

    check-cast v3, Lmb/e0;

    invoke-virtual {v2, v3}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v2

    invoke-virtual {v2}, Lmb/x;->v()Lmb/x;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v0, Lmb/l0;->c:Lmb/v5;

    check-cast v0, Lmb/e0;

    iget-object v0, v0, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/s;

    invoke-virtual {v2}, Lmb/s;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "val$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lmb/s;->e()Lmb/x;

    move-result-object v2

    invoke-virtual {v2}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lmb/f6;->f()[Lmb/x;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lmb/c6;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "V"

    invoke-direct {p0, v1, v0}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Lmb/c6;

    const-string v0, "V"

    invoke-direct {p0, v0, v1}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()[Lmb/x;
    .locals 7

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmb/f6;->i:Ljava/lang/Object;

    check-cast v0, Lmb/a7;

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Lmb/s1;

    iget-object v1, p0, Lmb/r2;->g:Lmb/q2;

    iget-object v1, v1, Lmb/q2;->c:[Lmb/p2;

    array-length v2, v1

    new-array v2, v2, [Lmb/x;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {v0, v4}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v4

    check-cast v4, Lmb/x;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lmb/r2;->g:Lmb/q2;

    iget-boolean v5, v5, Lmb/q2;->d:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lmb/a7;->h:Lmb/b;

    invoke-virtual {v5, v4}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object v4

    :cond_0
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :pswitch_0
    iget-object v0, p0, Lmb/f6;->i:Ljava/lang/Object;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object v1

    invoke-virtual {v0}, Lmb/x;->v()Lmb/x;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v5, v1, v2

    if-ne v5, v0, :cond_2

    array-length p0, v1

    sub-int/2addr p0, v4

    new-array v0, p0, [Lmb/x;

    invoke-static {v1, v4, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v4, Lhb/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Enclosing instance parameter of constructor \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\" has wrong type -- \""

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v1, v2

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\" vs. \""

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v3, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v0, Lhb/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructor \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\" lacks synthetic enclosing instance parameter"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v3, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()[Lmb/x;
    .locals 6

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast v0, Lmb/s1;

    iget-object v1, v0, Lmb/r2;->h:[Lmb/s5;

    array-length v1, v1

    new-array v2, v1, [Lmb/x;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lmb/f6;->i:Ljava/lang/Object;

    check-cast v4, Lmb/a7;

    iget-object v5, v0, Lmb/r2;->h:[Lmb/s5;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v4

    check-cast v4, Lmb/x;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_0
    iget-object v0, p0, Lmb/f6;->i:Ljava/lang/Object;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmb/i6;->K([Ljava/lang/Class;)[Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Lmb/s1;

    iget-object p0, p0, Lmb/r2;->g:Lmb/q2;

    iget-boolean p0, p0, Lmb/q2;->d:Z

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Lmb/c6;
    .locals 5

    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object v0

    iget-object v1, p0, Lmb/f6;->f:Lmb/x;

    invoke-virtual {v1}, Lmb/x;->v()Lmb/x;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [Lmb/x;

    aput-object v1, v4, v3

    array-length v1, v0

    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_0
    invoke-static {v0}, Lmb/x;->q([Lmb/x;)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmb/t;->e:Lmb/x;

    invoke-virtual {p0}, Lmb/x;->E()Z

    move-result p0

    if-eqz p0, :cond_1

    array-length p0, v0

    const/4 v1, 0x2

    add-int/2addr p0, v1

    new-array p0, p0, [Ljava/lang/String;

    const-string v4, "Ljava/lang/String;"

    aput-object v4, p0, v3

    const-string v4, "I"

    aput-object v4, p0, v2

    array-length v2, v0

    invoke-static {v0, v3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    :cond_1
    new-instance p0, Lmb/c6;

    const-string v1, "V"

    invoke-direct {p0, v1, v0}, Lmb/c6;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/t;->e:Lmb/x;

    invoke-virtual {v1}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Lmb/t;->e()[Lmb/x;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lhb/a; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "<invalid type>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lmb/f6;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lmb/f6;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lmb/f6;->h:Ljava/lang/Object;

    check-cast p0, Lmb/s1;

    iget-object v1, p0, Lmb/l0;->c:Lmb/v5;

    invoke-interface {v1}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/r2;->g:Lmb/q2;

    iget-object v1, v1, Lmb/q2;->c:[Lmb/p2;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    if-eqz v3, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v4, v1, v3

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lmb/r2;->g:Lmb/q2;

    iget-boolean v5, v5, Lmb/q2;->d:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Lmb/p2;->x(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
