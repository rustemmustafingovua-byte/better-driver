.class public final Ls5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final r:Ls5/w;


# instance fields
.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ls5/w;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ls5/w;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Ls5/w;->r:Ls5/w;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ls5/w;->l:I

    iput p5, p0, Ls5/w;->m:I

    iput p6, p0, Ls5/w;->n:I

    iput-object p1, p0, Ls5/w;->q:Ljava/lang/String;

    const-string p1, ""

    if-nez p3, :cond_0

    move-object p3, p1

    :cond_0
    iput-object p3, p0, Ls5/w;->o:Ljava/lang/String;

    if-nez p4, :cond_1

    move-object p4, p1

    :cond_1
    iput-object p4, p0, Ls5/w;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Ls5/w;->q:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ls5/w;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls5/w;->o:Ljava/lang/String;

    iget-object v1, p1, Ls5/w;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ls5/w;->p:Ljava/lang/String;

    iget-object v1, p1, Ls5/w;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Ls5/w;->l:I

    iget v1, p1, Ls5/w;->l:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Ls5/w;->m:I

    iget v1, p1, Ls5/w;->m:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    iget v0, p0, Ls5/w;->n:I

    iget v1, p1, Ls5/w;->n:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ls5/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls5/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ls5/w;->q:Ljava/lang/String;

    iget-object p1, p1, Ls5/w;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Ls5/w;->a()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ls5/w;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Ls5/w;

    iget v2, p1, Ls5/w;->l:I

    iget v3, p0, Ls5/w;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Ls5/w;->m:I

    iget v3, p0, Ls5/w;->m:I

    if-ne v2, v3, :cond_3

    iget v2, p1, Ls5/w;->n:I

    iget v3, p0, Ls5/w;->n:I

    if-ne v2, v3, :cond_3

    iget-object v2, p1, Ls5/w;->q:Ljava/lang/String;

    iget-object v3, p0, Ls5/w;->q:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Ls5/w;->p:Ljava/lang/String;

    iget-object v3, p0, Ls5/w;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Ls5/w;->o:Ljava/lang/String;

    iget-object p0, p0, Ls5/w;->o:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ls5/w;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ls5/w;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ls5/w;->q:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Ls5/w;->l:I

    add-int/2addr v1, v2

    iget v2, p0, Ls5/w;->m:I

    sub-int/2addr v1, v2

    iget p0, p0, Ls5/w;->n:I

    add-int/2addr v1, p0

    xor-int p0, v0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ls5/w;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ls5/w;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ls5/w;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls5/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls5/w;->q:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
