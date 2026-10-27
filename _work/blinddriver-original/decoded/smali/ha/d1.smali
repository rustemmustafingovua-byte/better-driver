.class public final Lha/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/d1;

.field public static final b:Lha/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/d1;->a:Lha/d1;

    const-string v0, "kotlin.UByte"

    sget-object v1, Lha/i;->a:Lha/i;

    invoke-static {v0, v1}, Lha/n0;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lha/x;

    move-result-object v0

    sput-object v0, Lha/d1;->b:Lha/x;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lha/d1;->b:Lha/x;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->x()B

    move-result p0

    new-instance p1, Lt8/q;

    invoke-direct {p1, p0}, Lt8/q;-><init>(B)V

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/d1;->b:Lha/x;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lt8/q;

    iget-byte p0, p2, Lt8/q;->l:B

    sget-object p2, Lha/d1;->b:Lha/x;

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->e(B)V

    return-void
.end method
