.class public final Lia/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:Lt8/o;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lia/p;->a:Lt8/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lia/p;->a:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e()La/a;
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()La/a;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()I

    move-result p0

    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/lang/String;

    move-result-object p0

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

.method public final i(I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->i(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    invoke-virtual {p0}, Lia/p;->b()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->k(I)Z

    move-result p0

    return p0
.end method
