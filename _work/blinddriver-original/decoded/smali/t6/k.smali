.class public Lt6/k;
.super Lt6/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 2
    sget-object v0, Lt6/o;->r:Lt6/o;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 10

    if-nez p2, :cond_0

    .line 4
    sget-object v0, Lt6/o;->r:Lt6/o;

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 5
    :goto_0
    iget v6, v0, Lt6/o;->o:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 6
    invoke-direct/range {v1 .. v9}, Lt6/l;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static s0(Ljava/lang/Class;)Lt6/k;
    .locals 8

    new-instance v0, Lt6/k;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lt6/l;->p0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    return-object p1
.end method

.method public S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lt6/l;->p0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    iget-object v0, p0, Lt6/o;->m:[Lb6/l;

    array-length v0, v0

    if-lez v0, :cond_1

    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lt6/o;->d(I)Lb6/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb6/l;->S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public W()Z
    .locals 0

    instance-of p0, p0, Lt6/e;

    return p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lt6/k;

    iget-object v1, p1, Lb6/l;->o:Ljava/lang/Class;

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    iget-object p1, p1, Lt6/l;->v:Lt6/o;

    invoke-virtual {p0, p1}, Lt6/o;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public i0(Lb6/l;)Lb6/l;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Simple types have no content types; cannot call withContentType()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Simple types have no content types; cannot call withContenTypeHandler()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic k0(Lb6/n;)Lb6/l;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/k;->t0(Lb6/n;)Lt6/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic m0()Lb6/l;
    .locals 0

    invoke-virtual {p0}, Lt6/k;->u0()Lt6/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic n0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/k;->v0(Ljava/lang/Object;)Lt6/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic o0(Ljava/lang/Object;)Lb6/l;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/k;->w0(Ljava/lang/Object;)Lt6/k;

    move-result-object p0

    return-object p0
.end method

.method public r0()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt6/l;->v:Lt6/o;

    iget-object v2, v1, Lt6/o;->m:[Lb6/l;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v2}, Lt6/l;->q0(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x3c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_1

    invoke-virtual {v1, p0}, Lt6/o;->d(I)Lb6/l;

    move-result-object v3

    if-lez p0, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Lb6/g;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t0(Lb6/n;)Lt6/k;
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Simple types have no content types; cannot call withContenValueHandler()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt6/k;->r0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u0()Lt6/k;
    .locals 9

    iget-boolean v0, p0, Lb6/l;->s:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/k;

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    const/4 v8, 0x1

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v1 .. v8}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public v0(Ljava/lang/Object;)Lt6/k;
    .locals 9

    iget-object v0, p0, Lb6/l;->r:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/k;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public w0(Ljava/lang/Object;)Lt6/k;
    .locals 9

    iget-object v0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/k;

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lt6/k;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method
