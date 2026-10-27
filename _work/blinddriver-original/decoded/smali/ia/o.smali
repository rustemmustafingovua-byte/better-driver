.class public final Lia/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lia/o;

.field public static final b:Lfa/e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lia/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/o;->a:Lia/o;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v1, Lgd/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lgd/e;-><init>(I)V

    const-string v4, "kotlinx.serialization.json.JsonElement"

    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lfa/g;->f:Lfa/g;

    sget-object v5, Lfa/b;->f:Lfa/b;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v8, Lfa/a;

    invoke-direct {v8, v4}, Lfa/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lfa/e;

    iget-object v1, v8, Lfa/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v0}, Lu8/l;->H0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lfa/e;-><init>(Ljava/lang/String;La/a;ILjava/util/List;Lfa/a;)V

    sput-object v3, Lia/o;->b:Lfa/e;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank serial names are prohibited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lpc/h;->d(Lkotlinx/serialization/encoding/Decoder;)Lja/p;

    move-result-object p0

    invoke-virtual {p0}, Lja/p;->b0()Lia/l;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lia/o;->b:Lfa/e;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lia/l;

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpc/h;->c(Lkotlinx/serialization/encoding/Encoder;)V

    instance-of p0, p2, Lia/d0;

    if-eqz p0, :cond_0

    sget-object p0, Lia/e0;->a:Lia/e0;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Lia/y;

    if-eqz p0, :cond_1

    sget-object p0, Lia/b0;->a:Lia/b0;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Lia/e;

    if-eqz p0, :cond_2

    sget-object p0, Lia/g;->a:Lia/g;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
