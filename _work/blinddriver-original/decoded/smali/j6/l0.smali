.class public final Lj6/l0;
.super Lj6/h;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/Class;

.field public final o:Lb6/l;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lj6/c;Ljava/lang/Class;Ljava/lang/String;Lb6/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj6/h;-><init>(Lj6/k0;Lb0/l1;)V

    iput-object p2, p0, Lj6/l0;->n:Ljava/lang/Class;

    iput-object p4, p0, Lj6/l0;->o:Lb6/l;

    iput-object p3, p0, Lj6/l0;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj6/l0;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const-class v1, Lj6/l0;

    invoke-static {v1, p1}, Lu6/h;->s(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lj6/l0;

    iget-object v1, p1, Lj6/l0;->n:Ljava/lang/Class;

    iget-object v3, p0, Lj6/l0;->n:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lj6/l0;->p:Ljava/lang/String;

    iget-object p0, p0, Lj6/l0;->p:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/l0;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final h()Lb6/l;
    .locals 0

    iget-object p0, p0, Lj6/l0;->o:Lb6/l;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lj6/l0;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj6/l0;->n:Ljava/lang/Class;

    return-object p0
.end method

.method public final m()Ljava/lang/reflect/Member;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot get virtual property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj6/l0;->p:Ljava/lang/String;

    const-string v1, "\'"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(Lb0/l1;)Lj6/a;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[virtual "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lj6/h;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
