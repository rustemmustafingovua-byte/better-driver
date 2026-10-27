.class public final Lha/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/j1;

.field public static final b:Lha/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/j1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/j1;->a:Lha/j1;

    const-string v0, "kotlin.ULong"

    sget-object v1, Lha/i0;->a:Lha/i0;

    invoke-static {v0, v1}, Lha/n0;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lha/x;

    move-result-object v0

    sput-object v0, Lha/j1;->b:Lha/x;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    sget-object p0, Lha/j1;->b:Lha/x;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->l()J

    move-result-wide p0

    new-instance v0, Lt8/u;

    invoke-direct {v0, p0, p1}, Lt8/u;-><init>(J)V

    return-object v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/j1;->b:Lha/x;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lt8/u;

    iget-wide v0, p2, Lt8/u;->l:J

    sget-object p0, Lha/j1;->b:Lha/x;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->k(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lkotlinx/serialization/encoding/Encoder;->m(J)V

    return-void
.end method
