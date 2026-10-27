.class public interface abstract Lkotlinx/serialization/encoding/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;
.end method

.method public abstract b()V
.end method

.method public abstract c(D)V
.end method

.method public abstract d(S)V
.end method

.method public abstract e(B)V
.end method

.method public abstract f(Z)V
.end method

.method public abstract g(F)V
.end method

.method public abstract h(C)V
.end method

.method public i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lja/q;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p0

    return-object p0
.end method

.method public abstract j(I)V
.end method

.method public abstract k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
.end method

.method public l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract m(J)V
.end method

.method public abstract n(Ljava/lang/String;)V
.end method
