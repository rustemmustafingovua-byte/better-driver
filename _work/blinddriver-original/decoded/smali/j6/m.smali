.class public final Lj6/m;
.super Lj6/h;
.source "SourceFile"


# instance fields
.field public final n:Lj6/n;

.field public final o:Lb6/l;

.field public final p:I


# direct methods
.method public constructor <init>(Lj6/n;Lb6/l;Lj6/k0;Lb0/l1;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lj6/h;-><init>(Lj6/k0;Lb0/l1;)V

    iput-object p1, p0, Lj6/m;->n:Lj6/n;

    iput-object p2, p0, Lj6/m;->o:Lb6/l;

    iput p5, p0, Lj6/m;->p:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {p0}, Lj6/a;->d()I

    move-result p0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lj6/m;

    invoke-static {v1, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj6/m;

    iget-object v1, p1, Lj6/m;->n:Lj6/n;

    iget-object v3, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {v1, v3}, Lj6/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p1, p1, Lj6/m;->p:I

    iget p0, p0, Lj6/m;->p:I

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/m;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final h()Lb6/l;
    .locals 0

    iget-object p0, p0, Lj6/m;->o:Lb6/l;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {v0}, Lj6/a;->hashCode()I

    move-result v0

    iget p0, p0, Lj6/m;->p:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final k()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/lang/reflect/Member;
    .locals 0

    iget-object p0, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {p0}, Lj6/h;->m()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p0, p0, Lj6/m;->n:Lj6/n;

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot call getValue() on constructor parameter of "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lb0/l1;)Lj6/a;
    .locals 2

    iget-object v0, p0, Lj6/h;->m:Lb0/l1;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lj6/m;->n:Lj6/n;

    iget-object v1, v0, Lj6/n;->n:[Lb0/l1;

    iget p0, p0, Lj6/m;->p:I

    aput-object p1, v1, p0

    invoke-virtual {v0, p0}, Lj6/n;->t(I)Lj6/m;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[parameter #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lj6/m;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lj6/h;->m:Lb0/l1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
