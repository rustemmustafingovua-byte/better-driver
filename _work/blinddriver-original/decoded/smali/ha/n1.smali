.class public final Lha/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final b:Lha/n1;


# instance fields
.field public final synthetic a:Lha/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lha/n1;

    invoke-direct {v0}, Lha/n1;-><init>()V

    sput-object v0, Lha/n1;->b:Lha/n1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lha/m0;

    invoke-direct {v0}, Lha/m0;-><init>()V

    iput-object v0, p0, Lha/n1;->a:Lha/m0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lha/n1;->a:Lha/m0;

    invoke-virtual {p0, p1}, Lha/m0;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lha/n1;->a:Lha/m0;

    invoke-virtual {p0}, Lha/m0;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lt8/z;

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/n1;->a:Lha/m0;

    invoke-virtual {p0, p1, p2}, Lha/m0;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
