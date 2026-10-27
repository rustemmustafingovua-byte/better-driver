.class public final Lia/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lia/g;

.field public static final b:Lia/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/g;->a:Lia/g;

    sget-object v0, Lia/f;->b:Lia/f;

    sput-object v0, Lia/g;->b:Lia/f;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lpc/h;->d(Lkotlinx/serialization/encoding/Decoder;)Lja/p;

    new-instance p0, Lia/e;

    sget-object v0, Lia/o;->a:Lia/o;

    invoke-static {v0}, Ly4/s;->a(Lkotlinx/serialization/KSerializer;)Lha/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lha/a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lia/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lia/g;->b:Lia/f;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lia/e;

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpc/h;->c(Lkotlinx/serialization/encoding/Encoder;)V

    sget-object p0, Lia/o;->a:Lia/o;

    invoke-static {p0}, Ly4/s;->a(Lkotlinx/serialization/KSerializer;)Lha/c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lha/n;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
