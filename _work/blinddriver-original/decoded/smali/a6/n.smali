.class public final La6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/p;
.implements Ljava/io/Serializable;
.implements Lu6/b;
.implements Lt8/g;


# instance fields
.field public final synthetic l:I

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La6/n;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La6/n;->l:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, La6/n;->m:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, La6/n;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ls5/q;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La6/n;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La6/n;->m:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    .line 5
    iput-object p2, p0, La6/n;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, La6/n;->l:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 8
    :cond_0
    iput-object p1, p0, La6/n;->m:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, La6/n;->n:Ljava/lang/Object;

    return-void
.end method

.method public static n(Ld6/m;Lj6/c;)La6/n;
    .locals 8

    invoke-virtual {p0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    sget-object v1, Ld6/k;->n:Ld6/k;

    invoke-virtual {p0, v1}, Ld6/m;->n(Ld6/g;)Z

    move-result v1

    iget-object v2, p1, Lj6/c;->m:Ljava/lang/Class;

    sget-object v3, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Enum;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    if-eqz v3, :cond_4

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v3, v4}, Lb6/d;->q(Ld6/m;Lj6/c;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, v3

    new-array p1, p1, [Ls5/q;

    array-length v0, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    aget-object v5, v3, v4

    aget-object v6, p0, v4

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v7, Lw5/k;

    invoke-direct {v7, v6}, Lw5/k;-><init>(Ljava/lang/String;)V

    aput-object v7, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, La6/n;

    invoke-direct {p0, v2, p1}, La6/n;-><init>(Ljava/lang/Class;[Ls5/q;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No enum constants for class "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, La6/n;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ly5/b;)V
    .locals 0

    return-void
.end method

.method public c(Ls5/g;)V
    .locals 0

    return-void
.end method

.method public d(Lt5/a;I)V
    .locals 0

    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public e(Lt5/a;I)V
    .locals 0

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public f(Lt5/a;)V
    .locals 0

    const/16 p0, 0x7b

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La6/n;->n:Ljava/lang/Object;

    sget-object v1, Lt8/w;->a:Lt8/w;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La6/n;->m:Ljava/lang/Object;

    check-cast v0, Li9/a;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, La6/n;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, La6/n;->m:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/n;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ls5/g;->g0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, La6/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x3a

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public j([Ljava/lang/Class;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, La6/n;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public k(Lt5/a;)V
    .locals 0

    const/16 p0, 0x5b

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public l(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, La6/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public m(Ly5/b;)V
    .locals 0

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, La6/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ls5/g;->e0(C)V

    return-void
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, La6/n;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, La6/n;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, La6/n;->n:Ljava/lang/Object;

    sget-object v1, Lt8/w;->a:Lt8/w;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, La6/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
