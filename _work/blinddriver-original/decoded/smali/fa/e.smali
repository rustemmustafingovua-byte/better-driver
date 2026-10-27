.class public final Lfa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lha/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:La/a;

.field public final c:I

.field public final d:Ljava/util/HashSet;

.field public final e:[Ljava/lang/String;

.field public final f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final g:[Ljava/util/List;

.field public final h:[Z

.field public final i:Ljava/util/Map;

.field public final j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final k:Lt8/o;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a;ILjava/util/List;Lfa/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfa/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lfa/e;->b:La/a;

    iput p3, p0, Lfa/e;->c:I

    iget-object p1, p5, Lfa/a;->b:Ljava/util/ArrayList;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/util/HashSet;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lu8/v;->J(I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1, p3}, Lu8/m;->z0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iput-object p3, p0, Lfa/e;->d:Ljava/util/HashSet;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lfa/e;->e:[Ljava/lang/String;

    iget-object p1, p5, Lfa/a;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Lha/n0;->c(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lfa/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p5, Lfa/a;->e:Ljava/util/ArrayList;

    new-array v0, p3, [Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/List;

    iput-object p1, p0, Lfa/e;->g:[Ljava/util/List;

    iget-object p1, p5, Lfa/a;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    new-array p5, p5, [Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    add-int/lit8 v3, p3, 0x1

    aput-boolean v2, p5, p3

    move p3, v3

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lfa/e;->h:[Z

    iget-object p1, p0, Lfa/e;->e:[Ljava/lang/String;

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lq9/l;

    new-instance p3, Lod/x4;

    const/16 p5, 0xd

    invoke-direct {p3, p5, p1}, Lod/x4;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p2, p1, p3}, Lq9/l;-><init>(ILjava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lq9/l;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    move-object p3, p2

    check-cast p3, Lq9/b;

    iget-object p5, p3, Lq9/b;->n:Ljava/util/Iterator;

    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {p3}, Lq9/b;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lu8/u;

    iget-object p5, p3, Lu8/u;->b:Ljava/lang/Object;

    iget p3, p3, Lu8/u;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lt8/j;

    invoke-direct {v0, p5, p3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lu8/v;->M(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfa/e;->i:Ljava/util/Map;

    invoke-static {p4}, Lha/n0;->c(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lfa/e;->j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance p1, Lad/t;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lfa/e;->k:Lt8/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfa/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lfa/e;->d:Ljava/util/HashSet;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lfa/e;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public final e()La/a;
    .locals 0

    iget-object p0, p0, Lfa/e;->b:La/a;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lfa/e;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfa/e;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lfa/e;

    iget-object v2, p0, Lfa/e;->j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p1, Lfa/e;->j:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result p1

    iget v2, p0, Lfa/e;->c:I

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    iget-object v3, p0, Lfa/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object v4, v3, p1

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    aget-object v3, v3, p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v3

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    return v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lfa/e;->c:I

    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfa/e;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lfa/e;->k:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfa/e;->g:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lfa/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    iget-object p0, p0, Lfa/e;->h:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lha/n0;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
