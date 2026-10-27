.class public final Lt6/a;
.super Lt6/l;
.source "SourceFile"


# static fields
.field public static final synthetic z:I


# instance fields
.field public final x:Lb6/l;

.field public final y:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lb6/l;->hashCode()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lt6/l;-><init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object p1, v0, Lt6/a;->x:Lb6/l;

    iput-object p3, v0, Lt6/a;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final Q()Lb6/l;
    .locals 0

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    return-object p0
.end method

.method public final R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {p0, p1}, Lb6/l;->R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {p0, p1}, Lb6/l;->S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final X()Z
    .locals 0

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {p0}, Lb6/l;->X()Z

    move-result p0

    return p0
.end method

.method public final Y()Z
    .locals 1

    invoke-super {p0}, Lb6/l;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {p0}, Lb6/l;->Y()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final a0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
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

    const-class v2, Lt6/a;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lt6/a;

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    iget-object p1, p1, Lt6/a;->x:Lb6/l;

    invoke-virtual {p0, p1}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i0(Lb6/l;)Lb6/l;
    .locals 9

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    new-instance v2, Lt6/a;

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v4, p0, Lt6/l;->v:Lt6/o;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public final j0(Ljava/lang/Object;)Lb6/l;
    .locals 9

    iget-object v0, p0, Lt6/a;->x:Lb6/l;

    iget-object v1, v0, Lb6/l;->r:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lt6/a;

    invoke-virtual {v0, p1}, Lb6/l;->n0(Ljava/lang/Object;)Lb6/l;

    move-result-object v3

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v4, p0, Lt6/l;->v:Lt6/o;

    iget-object v5, p0, Lt6/a;->y:Ljava/lang/Object;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v2 .. v8}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public final k0(Lb6/n;)Lb6/l;
    .locals 9

    iget-object v0, p0, Lt6/a;->x:Lb6/l;

    iget-object v1, v0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Lt6/a;

    invoke-virtual {v0, p1}, Lb6/l;->o0(Ljava/lang/Object;)Lb6/l;

    move-result-object v3

    iget-object v7, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v8, p0, Lb6/l;->s:Z

    iget-object v4, p0, Lt6/l;->v:Lt6/o;

    iget-object v5, p0, Lt6/a;->y:Ljava/lang/Object;

    iget-object v6, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v2 .. v8}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2
.end method

.method public final m0()Lb6/l;
    .locals 8

    iget-boolean v0, p0, Lb6/l;->s:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/a;

    iget-object v0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {v0}, Lb6/l;->m0()Lb6/l;

    move-result-object v2

    iget-object v6, p0, Lb6/l;->r:Ljava/lang/Object;

    const/4 v7, 0x1

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/a;->y:Ljava/lang/Object;

    iget-object v5, p0, Lb6/l;->q:Ljava/lang/Object;

    invoke-direct/range {v1 .. v7}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final n0(Ljava/lang/Object;)Lb6/l;
    .locals 8

    iget-object v0, p0, Lb6/l;->r:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/a;

    iget-object v5, p0, Lb6/l;->q:Ljava/lang/Object;

    iget-boolean v7, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lt6/a;->x:Lb6/l;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/a;->y:Ljava/lang/Object;

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final o0(Ljava/lang/Object;)Lb6/l;
    .locals 8

    iget-object v0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lt6/a;

    iget-object v6, p0, Lb6/l;->r:Ljava/lang/Object;

    iget-boolean v7, p0, Lb6/l;->s:Z

    iget-object v2, p0, Lt6/a;->x:Lb6/l;

    iget-object v3, p0, Lt6/l;->v:Lt6/o;

    iget-object v4, p0, Lt6/a;->y:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lt6/a;-><init>(Lb6/l;Lt6/o;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[array type, component type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lt6/a;->x:Lb6/l;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
