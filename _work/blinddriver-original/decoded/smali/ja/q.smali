.class public final Lja/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/encoding/Encoder;


# instance fields
.field public final a:Lb6/g0;

.field public final b:Lia/c;

.field public final c:Lja/u;

.field public final d:[Lja/q;

.field public final e:Lia/j;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb6/g0;Lia/c;Lja/u;[Lja/q;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja/q;->a:Lb6/g0;

    iput-object p2, p0, Lja/q;->b:Lia/c;

    iput-object p3, p0, Lja/q;->c:Lja/u;

    iput-object p4, p0, Lja/q;->d:[Lja/q;

    iget-object p1, p2, Lia/c;->a:Lia/j;

    iput-object p1, p0, Lja/q;->e:Lia/j;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lja/q;->b:Lia/c;

    invoke-static {v0, p1}, Lja/k;->j(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/u;

    move-result-object v1

    iget-char v2, v1, Lja/u;->l:C

    iget-object v3, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {v3, v2}, Lb6/g0;->c(C)V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lb6/g0;->l:Z

    iget-object v2, p0, Lja/q;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lja/q;->h:Ljava/lang/String;

    if-nez v4, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v3}, Lb6/g0;->a()V

    invoke-virtual {p0, v2}, Lja/q;->n(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v3, p1}, Lb6/g0;->c(C)V

    invoke-virtual {p0, v4}, Lja/q;->n(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lja/q;->g:Ljava/lang/String;

    iput-object p1, p0, Lja/q;->h:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lja/q;->c:Lja/u;

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p0, Lja/q;->d:[Lja/q;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lja/q;

    invoke-direct {p1, v3, v0, v1, p0}, Lja/q;-><init>(Lb6/g0;Lia/c;Lja/u;[Lja/q;)V

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lb6/g0;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final c(D)V
    .locals 6

    iget-boolean v0, p0, Lja/q;->f:Z

    iget-object v1, p0, Lja/q;->a:Lb6/g0;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lja/q;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf7/c0;->n(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-object p1, v1, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p1, Lf7/c0;

    invoke-virtual {p1}, Lf7/c0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lja/k;->a(Ljava/lang/String;Ljava/lang/Number;)Lja/j;

    move-result-object p0

    throw p0
.end method

.method public final d(S)V
    .locals 1

    iget-boolean v0, p0, Lja/q;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p0, p1}, Lb6/g0;->g(S)V

    return-void
.end method

.method public final e(B)V
    .locals 1

    iget-boolean v0, p0, Lja/q;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p0, p1}, Lb6/g0;->b(B)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lja/q;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/c0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final g(F)V
    .locals 2

    iget-boolean v0, p0, Lja/q;->f:Z

    iget-object v1, p0, Lja/q;->a:Lb6/g0;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lja/q;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, v1, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Lf7/c0;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf7/c0;->n(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget-object p1, v1, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p1, Lf7/c0;

    invoke-virtual {p1}, Lf7/c0;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lja/k;->a(Ljava/lang/String;Ljava/lang/Number;)Lja/j;

    move-result-object p0

    throw p0
.end method

.method public final h(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-boolean v0, p0, Lja/q;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p0, p1}, Lb6/g0;->d(I)V

    return-void
.end method

.method public final k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lja/r;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lja/q;->c:Lja/u;

    iget-object v3, p0, Lja/q;->b:Lia/c;

    iget-object v4, p0, Lja/q;->a:Lb6/g0;

    if-eqz v0, :cond_1

    instance-of p1, v4, Lja/f;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v4, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p1, Lf7/c0;

    iget-boolean p0, p0, Lja/q;->f:Z

    new-instance v4, Lja/f;

    invoke-direct {v4, p1, p0}, Lja/f;-><init>(Lf7/c0;Z)V

    :goto_0
    new-instance p0, Lja/q;

    invoke-direct {p0, v4, v3, v2, v1}, Lja/q;-><init>(Lb6/g0;Lia/c;Lja/u;[Lja/q;)V

    return-object p0

    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lia/m;->a:Lha/x;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, v4, Lja/e;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v4, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p1, Lf7/c0;

    iget-boolean p0, p0, Lja/q;->f:Z

    new-instance v4, Lja/e;

    invoke-direct {v4, p1, p0}, Lja/e;-><init>(Lf7/c0;Z)V

    :goto_1
    new-instance p0, Lja/q;

    invoke-direct {p0, v4, v3, v2, v1}, Lja/q;-><init>(Lb6/g0;Lia/c;Lja/u;[Lja/q;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lja/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lja/q;->h:Ljava/lang/String;

    :cond_4
    return-object p0
.end method

.method public final l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lja/q;->b:Lia/c;

    iget-object v0, v0, Lia/c;->a:Lia/j;

    iget-object v1, v0, Lia/j;->i:Lia/a;

    instance-of v2, p1, Lda/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v4, Lia/a;->l:Lia/a;

    if-eq v1, v4, :cond_6

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object v1

    sget-object v4, Lfa/g;->f:Lfa/g;

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lfa/g;->i:Lfa/g;

    invoke-static {v1, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    const-string v4, "<this>"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;

    instance-of v5, v4, Lia/i;

    if-eqz v5, :cond_4

    check-cast v4, Lia/i;

    invoke-interface {v4}, Lia/i;->discriminator()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lia/j;->g:Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_1
    move-object v0, v3

    :goto_2
    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lja/q;->g:Ljava/lang/String;

    iput-object v1, p0, Lja/q;->h:Ljava/lang/String;

    :cond_7
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void

    :cond_8
    check-cast p1, Lda/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v3
.end method

.method public final m(J)V
    .locals 1

    iget-boolean v0, p0, Lja/q;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p0, p1, p2}, Lb6/g0;->e(J)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p0, p1}, Lb6/g0;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3}, Lja/q;->f(Z)V

    return-void
.end method

.method public final p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3, p4}, Lja/q;->c(D)V

    return-void
.end method

.method public final q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lja/q;->c:Lja/u;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2c

    iget-object v2, p0, Lja/q;->a:Lb6/g0;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/16 v4, 0x3a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    iget-boolean v0, v2, Lb6/g0;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lb6/g0;->c(C)V

    :cond_0
    invoke-virtual {v2}, Lb6/g0;->a()V

    iget-object v0, p0, Lja/q;->b:Lia/c;

    invoke-static {v0, p1}, Lja/k;->i(Lia/c;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->n(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lb6/g0;->c(C)V

    invoke-virtual {v2}, Lb6/g0;->i()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v3, p0, Lja/q;->f:Z

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-virtual {v2, v1}, Lb6/g0;->c(C)V

    invoke-virtual {v2}, Lb6/g0;->i()V

    iput-boolean v5, p0, Lja/q;->f:Z

    :cond_3
    return-void

    :cond_4
    iget-boolean p1, v2, Lb6/g0;->l:Z

    if-nez p1, :cond_6

    rem-int/2addr p2, v6

    if-nez p2, :cond_5

    invoke-virtual {v2, v1}, Lb6/g0;->c(C)V

    invoke-virtual {v2}, Lb6/g0;->a()V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v4}, Lb6/g0;->c(C)V

    invoke-virtual {v2}, Lb6/g0;->i()V

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lja/q;->f:Z

    return-void

    :cond_6
    iput-boolean v3, p0, Lja/q;->f:Z

    invoke-virtual {v2}, Lb6/g0;->a()V

    return-void

    :cond_7
    iget-boolean p0, v2, Lb6/g0;->l:Z

    if-nez p0, :cond_8

    invoke-virtual {v2, v1}, Lb6/g0;->c(C)V

    :cond_8
    invoke-virtual {v2}, Lb6/g0;->a()V

    return-void
.end method

.method public final r(Lha/s0;I)Lkotlinx/serialization/encoding/Encoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p1, p2}, Lha/f0;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/q;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p0

    return-object p0
.end method

.method public final s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p2}, Lja/q;->j(I)V

    return-void
.end method

.method public final t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3, p4}, Lja/q;->m(J)V

    return-void
.end method

.method public final u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_1

    iget-object v0, p0, Lja/q;->e:Lia/j;

    iget-boolean v0, v0, Lia/j;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-interface {p3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, p3, p4}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Encoder;->b()V

    goto :goto_1

    :cond_3
    invoke-interface {p0, p3, p4}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3, p4}, Lja/q;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3}, Lja/q;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lja/q;->a:Lb6/g0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lb6/g0;->l:Z

    iget-object p0, p0, Lja/q;->c:Lja/u;

    iget-char p0, p0, Lja/u;->m:C

    invoke-virtual {p1, p0}, Lb6/g0;->c(C)V

    return-void
.end method

.method public final y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lja/q;->e:Lia/j;

    iget-boolean p0, p0, Lia/j;->a:Z

    return p0
.end method
