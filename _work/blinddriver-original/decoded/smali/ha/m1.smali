.class public final Lha/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/m1;

.field public static final b:Lha/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/m1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/m1;->a:Lha/m1;

    const-string v0, "kotlin.UShort"

    sget-object v1, Lha/z0;->a:Lha/z0;

    invoke-static {v0, v1}, Lha/n0;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lha/x;

    move-result-object v0

    sput-object v0, Lha/m1;->b:Lha/x;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lha/m1;->b:Lha/x;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->y()S

    move-result p0

    new-instance p1, Lt8/x;

    invoke-direct {p1, p0}, Lt8/x;-><init>(S)V

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/m1;->b:Lha/x;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lt8/x;

    iget-short p0, p2, Lt8/x;->l:S

    sget-object p2, Lha/m1;->b:Lha/x;

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->d(S)V

    return-void
.end method
