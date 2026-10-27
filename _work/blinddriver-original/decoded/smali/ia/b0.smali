.class public final Lia/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lia/b0;

.field public static final b:Lia/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/b0;->a:Lia/b0;

    sget-object v0, Lia/a0;->b:Lia/a0;

    sput-object v0, Lia/b0;->b:Lia/a0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lpc/h;->d(Lkotlinx/serialization/encoding/Decoder;)Lja/p;

    new-instance p0, Lia/y;

    sget-object v0, Lha/a1;->a:Lha/a1;

    sget-object v0, Lia/o;->a:Lia/o;

    new-instance v1, Lha/e0;

    invoke-direct {v1, v0}, Lha/e0;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v1, p1}, Lha/a;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lia/y;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lia/b0;->b:Lia/a0;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lia/y;

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpc/h;->c(Lkotlinx/serialization/encoding/Encoder;)V

    sget-object p0, Lha/a1;->a:Lha/a1;

    sget-object p0, Lia/o;->a:Lia/o;

    new-instance v0, Lha/e0;

    invoke-direct {v0, p0}, Lha/e0;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v0, p1, p2}, Lha/e0;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    return-void
.end method
