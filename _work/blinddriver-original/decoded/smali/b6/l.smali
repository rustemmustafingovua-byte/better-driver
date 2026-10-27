.class public abstract Lb6/l;
.super Lb6/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/Type;


# instance fields
.field public final o:Ljava/lang/Class;

.field public final p:I

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb6/l;->o:Ljava/lang/Class;

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lb6/l;->p:I

    iput-object p3, p0, Lb6/l;->q:Ljava/lang/Object;

    iput-object p4, p0, Lb6/l;->r:Ljava/lang/Object;

    iput-boolean p5, p0, Lb6/l;->s:Z

    return-void
.end method


# virtual methods
.method public final N(I)Lb6/l;
    .locals 0

    check-cast p0, Lt6/l;

    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    invoke-virtual {p0, p1}, Lt6/o;->d(I)Lb6/l;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lt6/p;->E:Lt6/k;

    :cond_0
    return-object p0
.end method

.method public abstract O(Ljava/lang/Class;)Lb6/l;
.end method

.method public abstract P()Lt6/o;
.end method

.method public Q()Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract R(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract S(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public T()Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public U()Lb6/l;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract V()Lb6/l;
.end method

.method public W()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public X()Z
    .locals 0

    check-cast p0, Lt6/l;

    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    iget-object p0, p0, Lt6/o;->m:[Lb6/l;

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public Y()Z
    .locals 1

    iget-object v0, p0, Lb6/l;->r:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lb6/l;->q:Ljava/lang/Object;

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

.method public final Z(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public b0()Z
    .locals 1

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    return p0
.end method

.method public abstract c0()Z
.end method

.method public final d0()Z
    .locals 1

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const-class v0, Ljava/lang/Enum;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final e0()Z
    .locals 1

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final f0(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    if-eq p0, p1, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public final g0(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public abstract h0(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;)Lb6/l;
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lb6/l;->p:I

    return p0
.end method

.method public abstract i0(Lb6/l;)Lb6/l;
.end method

.method public abstract j0(Ljava/lang/Object;)Lb6/l;
.end method

.method public abstract k0(Lb6/n;)Lb6/l;
.end method

.method public l0(Lb6/l;)Lb6/l;
    .locals 2

    iget-object v0, p1, Lb6/l;->r:Ljava/lang/Object;

    iget-object v1, p0, Lb6/l;->r:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lb6/l;->n0(Ljava/lang/Object;)Lb6/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iget-object p1, p1, Lb6/l;->q:Ljava/lang/Object;

    iget-object p0, p0, Lb6/l;->q:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    invoke-virtual {v0, p1}, Lb6/l;->o0(Ljava/lang/Object;)Lb6/l;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public abstract m0()Lb6/l;
.end method

.method public abstract n0(Ljava/lang/Object;)Lb6/l;
.end method

.method public abstract o0(Ljava/lang/Object;)Lb6/l;
.end method

.method public bridge synthetic t()Lb6/l;
    .locals 0

    invoke-virtual {p0}, Lb6/l;->U()Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
