.class public final Lha/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/i;

.field public static final b:Lha/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lha/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/i;->a:Lha/i;

    new-instance v0, Lha/u0;

    const-string v1, "kotlin.Byte"

    sget-object v2, Lfa/c;->g:Lfa/c;

    invoke-direct {v0, v1, v2}, Lha/u0;-><init>(Ljava/lang/String;Lfa/d;)V

    sput-object v0, Lha/i;->b:Lha/u0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->x()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/i;->b:Lha/u0;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->e(B)V

    return-void
.end method
