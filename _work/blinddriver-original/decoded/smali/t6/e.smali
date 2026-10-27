.class public final Lt6/e;
.super Lt6/k;
.source "SourceFile"


# instance fields
.field public final x:Lb6/l;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9

    invoke-static {p5}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lt6/l;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object p5, p0, Lt6/e;->x:Lb6/l;

    return-void
.end method


# virtual methods
.method public final Q()Lb6/l;
    .locals 0

    iget-object p0, p0, Lt6/e;->x:Lb6/l;

    return-object p0
.end method

.method public final R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lt6/l;->p0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    return-object p1
.end method

.method public final S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lt6/l;->p0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt6/e;->x:Lb6/l;

    invoke-virtual {p0, p1}, Lb6/l;->S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ">;"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
    .locals 9

    new-instance v0, Lt6/e;

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lt6/l;->v:Lt6/o;

    iget-object v5, p0, Lt6/e;->x:Lb6/l;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public final i0(Lb6/l;)Lb6/l;
    .locals 10

    iget-object v0, p0, Lt6/e;->x:Lb6/l;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v8, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v9, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v7, p0, Lb6/l;->q:Ljava/lang/Object;

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final j0(Ljava/lang/Object;)Lb6/l;
    .locals 11

    iget-object v0, p0, Lt6/e;->x:Lb6/l;

    iget-object v1, v0, Lb6/l;->r:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lt6/e;

    invoke-virtual {v0, p1}, Lb6/l;->n0(Ljava/lang/Object;)Lb6/l;

    move-result-object v7

    iget-object v9, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v10, p0, Lb6/l;->s:Z

    iget-object v3, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v4, p0, Lt6/l;->v:Lt6/o;

    iget-object v5, p0, Lt6/l;->t:Lb6/l;

    iget-object v6, p0, Lt6/l;->u:[Lb6/l;

    iget-object v8, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v2 .. v10}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public final bridge synthetic k0(Lb6/n;)Lb6/l;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/e;->x0(Lb6/n;)Lt6/e;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic m0()Lb6/l;
    .locals 0

    invoke-virtual {p0}, Lt6/e;->y0()Lt6/e;

    move-result-object p0

    return-object p0
.end method

.method public final n0(Ljava/lang/Object;)Lb6/l;
    .locals 10

    iget-object v0, p0, Lb6/l;->r:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v7, p0, Lb6/l;->q:Ljava/lang/Object;

    iget-boolean v9, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v6, p0, Lt6/e;->x:Lb6/l;

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final o0(Ljava/lang/Object;)Lb6/l;
    .locals 10

    iget-object v0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v8, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v9, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v6, p0, Lt6/e;->x:Lb6/l;

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final r0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt6/e;->x:Lb6/l;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lt6/l;->q0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lb6/g;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic t0(Lb6/n;)Lt6/k;
    .locals 0

    invoke-virtual {p0, p1}, Lt6/e;->x0(Lb6/n;)Lt6/e;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic u0()Lt6/k;
    .locals 0

    invoke-virtual {p0}, Lt6/e;->y0()Lt6/e;

    move-result-object p0

    return-object p0
.end method

.method public final v0(Ljava/lang/Object;)Lt6/k;
    .locals 10

    iget-object v0, p0, Lb6/l;->r:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v7, p0, Lb6/l;->q:Ljava/lang/Object;

    iget-boolean v9, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v6, p0, Lt6/e;->x:Lb6/l;

    move-object v8, p1

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final w0(Ljava/lang/Object;)Lt6/k;
    .locals 10

    iget-object v0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v8, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v9, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v6, p0, Lt6/e;->x:Lb6/l;

    move-object v7, p1

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final x0(Lb6/n;)Lt6/e;
    .locals 11

    iget-object v0, p0, Lt6/e;->x:Lb6/l;

    iget-object v1, v0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lt6/e;

    invoke-virtual {v0, p1}, Lb6/l;->o0(Ljava/lang/Object;)Lb6/l;

    move-result-object v7

    iget-object v9, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v10, p0, Lb6/l;->s:Z

    iget-object v3, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v4, p0, Lt6/l;->v:Lt6/o;

    iget-object v5, p0, Lt6/l;->t:Lb6/l;

    iget-object v6, p0, Lt6/l;->u:[Lb6/l;

    iget-object v8, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v2 .. v10}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public final y0()Lt6/e;
    .locals 10

    iget-boolean v0, p0, Lb6/l;->s:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/e;

    iget-object v0, p0, Lt6/e;->x:Lb6/l;

    invoke-virtual {v0}, Lb6/l;->m0()Lb6/l;

    move-result-object v6

    iget-object v8, p0, Lb6/l;->r:Ljava/lang/Object;

    const/4 v9, 0x1

    iget-object v2, p0, Lb6/l;->o:Ljava/lang/Class;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/l;->t:Lb6/l;

    iget-object v5, p0, Lt6/l;->u:[Lb6/l;

    iget-object v7, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v1 .. v9}, Lt6/e;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;Lb6/l;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method
