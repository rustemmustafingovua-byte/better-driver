.class public Lha/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lha/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lha/w;

.field public final c:I

.field public d:I

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/util/List;

.field public final g:[Z

.field public h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lha/w;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/p0;->a:Ljava/lang/String;

    iput-object p2, p0, Lha/p0;->b:Lha/w;

    iput p3, p0, Lha/p0;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lha/p0;->d:I

    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lha/p0;->e:[Ljava/lang/String;

    iget p1, p0, Lha/p0;->c:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lha/p0;->f:[Ljava/util/List;

    new-array p1, p1, [Z

    iput-object p1, p0, Lha/p0;->g:[Z

    sget-object p1, Lu8/s;->l:Lu8/s;

    iput-object p1, p0, Lha/p0;->h:Ljava/lang/Object;

    sget-object p1, Lt8/h;->l:Lt8/h;

    new-instance p2, Lha/o0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lha/o0;-><init>(Lha/p0;I)V

    invoke-static {p1, p2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p2

    iput-object p2, p0, Lha/p0;->i:Ljava/lang/Object;

    new-instance p2, Lha/o0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lha/o0;-><init>(Lha/p0;I)V

    invoke-static {p1, p2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p2

    iput-object p2, p0, Lha/p0;->j:Ljava/lang/Object;

    new-instance p2, Lha/o0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lha/o0;-><init>(Lha/p0;I)V

    invoke-static {p1, p2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p1

    iput-object p1, p0, Lha/p0;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lha/p0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lha/p0;->h:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

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

    iget-object p0, p0, Lha/p0;->h:Ljava/lang/Object;

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

    sget-object p0, Lfa/g;->f:Lfa/g;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lha/p0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lha/p0;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lha/p0;

    iget-object v2, p0, Lha/p0;->j:Ljava/lang/Object;

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p1, Lha/p0;->j:Ljava/lang/Object;

    invoke-interface {p1}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result p1

    iget v2, p0, Lha/p0;->c:I

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    invoke-virtual {p0, p1}, Lha/p0;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lha/p0;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

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

    iget p0, p0, Lha/p0;->c:I

    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lha/p0;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lha/p0;->k:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lha/p0;->f:[Ljava/util/List;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lu8/r;->l:Lu8/r;

    :cond_0
    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lha/p0;->i:Ljava/lang/Object;

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/KSerializer;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    iget-object p0, p0, Lha/p0;->g:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final l(Ljava/lang/String;Z)V
    .locals 4

    iget v0, p0, Lha/p0;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lha/p0;->d:I

    iget-object v1, p0, Lha/p0;->e:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p1, p0, Lha/p0;->g:[Z

    aput-boolean p2, p1, v0

    iget-object p1, p0, Lha/p0;->f:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    iget p1, p0, Lha/p0;->c:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length p2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lha/p0;->h:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lha/n0;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
