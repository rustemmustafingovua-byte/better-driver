.class public interface abstract Lkotlinx/serialization/encoding/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract A()D
.end method

.method public abstract a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;
.end method

.method public abstract b()Z
.end method

.method public abstract c()C
.end method

.method public abstract g()I
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract l()J
.end method

.method public n(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 1

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract p()Z
.end method

.method public abstract u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
.end method

.method public abstract x()B
.end method

.method public abstract y()S
.end method

.method public abstract z()F
.end method
