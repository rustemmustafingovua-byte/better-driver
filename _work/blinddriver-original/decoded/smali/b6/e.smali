.class public Lb6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/f;
.implements Ljava/io/Serializable;
.implements Lu6/b;


# instance fields
.field public final l:Ljava/io/Serializable;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb6/e;->l:Ljava/io/Serializable;

    .line 3
    iput-object p2, p0, Lb6/e;->m:Ljava/lang/Object;

    .line 4
    iput-object p5, p0, Lb6/e;->n:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lb6/e;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lb6/e;->l:Ljava/io/Serializable;

    .line 8
    iput-object p2, p0, Lb6/e;->n:Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lb6/e;->m:Ljava/lang/Object;

    .line 10
    iput-object p4, p0, Lb6/e;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lb6/e;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    iget-object v0, p0, Lb6/e;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lb6/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Lb6/i0;
    .locals 0

    iget-object p0, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast p0, Lb6/i0;

    return-object p0
.end method

.method public c()Lb6/h0;
    .locals 0

    iget-object p0, p0, Lb6/e;->n:Ljava/lang/Object;

    check-cast p0, Lb6/h0;

    return-object p0
.end method

.method public d()Lj6/h;
    .locals 0

    iget-object p0, p0, Lb6/e;->o:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    return-object p0
.end method

.method public e(Ld6/m;Ljava/lang/Class;)Lr5/a0;
    .locals 2

    iget-object v0, p0, Lb6/e;->m:Ljava/lang/Object;

    check-cast v0, Lb6/l;

    iget-object v0, v0, Lb6/l;->o:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Ld6/n;

    invoke-virtual {v1, v0}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    invoke-virtual {v1, p2}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object p2, v1, Ld6/n;->r:La6/n;

    iget-object p2, p2, La6/n;->m:Ljava/lang/Object;

    check-cast p2, Lr5/a0;

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lb6/e;->o:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lb6/d;->P(Lj6/a;)Lr5/a0;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Lr5/a0;->a(Lr5/a0;)Lr5/a0;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public f(Ld6/m;Ljava/lang/Class;)Lr5/q;
    .locals 0

    invoke-virtual {p1, p2}, Ld6/m;->h(Ljava/lang/Class;)Lr5/q;

    move-result-object p2

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lb6/e;->o:Ljava/lang/Object;

    check-cast p0, Lj6/h;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lb6/d;->s(Lj6/a;)Lr5/q;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Lr5/q;->e(Lr5/q;)Lr5/q;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast p0, Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lb6/l;
    .locals 0

    iget-object p0, p0, Lb6/e;->m:Ljava/lang/Object;

    check-cast p0, Lb6/l;

    return-object p0
.end method

.method public j([Ljava/lang/Class;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    iget-object v4, p0, Lb6/e;->l:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lb6/e;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
