.class public final Lia/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lia/w;

.field public static final b:Lfa/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lia/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/w;->a:Lia/w;

    sget-object v3, Lfa/f;->g:Lfa/f;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v2, "kotlinx.serialization.json.JsonNull"

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lfa/g;->f:Lfa/g;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v6, Lfa/a;

    invoke-direct {v6, v2}, Lfa/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfa/e;

    iget-object v4, v6, Lfa/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v0}, Lu8/l;->H0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lfa/e;-><init>(Ljava/lang/String;La/a;ILjava/util/List;Lfa/a;)V

    sput-object v1, Lia/w;->b:Lfa/e;

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

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->p()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lia/v;->INSTANCE:Lia/v;

    return-object p0

    :cond_0
    new-instance p0, Lja/h;

    const-string p1, "Expected \'null\' literal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lia/w;->b:Lfa/e;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lia/v;

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpc/h;->c(Lkotlinx/serialization/encoding/Encoder;)V

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Encoder;->b()V

    return-void
.end method
