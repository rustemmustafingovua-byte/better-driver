.class public final Lha/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/z0;

.field public static final b:Lha/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lha/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/z0;->a:Lha/z0;

    new-instance v0, Lha/u0;

    const-string v1, "kotlin.Short"

    sget-object v2, Lfa/c;->m:Lfa/c;

    invoke-direct {v0, v1, v2}, Lha/u0;-><init>(Ljava/lang/String;Lfa/d;)V

    sput-object v0, Lha/z0;->b:Lha/u0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->y()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/z0;->b:Lha/u0;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->d(S)V

    return-void
.end method
