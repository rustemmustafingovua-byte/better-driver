.class public abstract Lha/t0;
.super Lha/n;
.source "SourceFile"


# instance fields
.field public final b:Lha/s0;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1

    const-string v0, "primitiveSerializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lha/n;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v0, Lha/s0;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lha/s0;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lha/t0;->b:Lha/s0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lha/t0;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lha/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lha/r0;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lha/r0;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lha/r0;->d()I

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use writeContents instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lha/a;->e(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lha/r0;

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lha/r0;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lha/r0;

    const-string p0, "<this>"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method lead to boxing and must not be used, use Builder.append instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract j()Ljava/lang/Object;
.end method

.method public abstract k(Lja/q;Ljava/lang/Object;I)V
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p2}, Lha/a;->d(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/Encoder;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lja/q;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v0}, Lha/t0;->k(Lja/q;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method
