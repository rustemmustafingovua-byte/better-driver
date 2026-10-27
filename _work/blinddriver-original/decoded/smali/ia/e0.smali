.class public final Lia/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lia/e0;

.field public static final b:Lfa/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lia/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lia/e0;->a:Lia/e0;

    sget-object v3, Lfa/c;->n:Lfa/c;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v2, "kotlinx.serialization.json.JsonPrimitive"

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

    sput-object v1, Lia/e0;->b:Lfa/e;

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
    .locals 1

    invoke-static {p1}, Lpc/h;->d(Lkotlinx/serialization/encoding/Decoder;)Lja/p;

    move-result-object p0

    invoke-virtual {p0}, Lja/p;->b0()Lia/l;

    move-result-object p0

    instance-of p1, p0, Lia/d0;

    if-eqz p1, :cond_0

    check-cast p0, Lia/d0;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0, p1, p0}, Lja/k;->b(ILjava/lang/String;Ljava/lang/CharSequence;)Lja/h;

    move-result-object p0

    throw p0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lia/e0;->b:Lfa/e;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lia/d0;

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpc/h;->c(Lkotlinx/serialization/encoding/Encoder;)V

    instance-of p0, p2, Lia/v;

    if-eqz p0, :cond_0

    sget-object p0, Lia/w;->a:Lia/w;

    sget-object p2, Lia/v;->INSTANCE:Lia/v;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lia/t;->a:Lia/t;

    check-cast p2, Lia/s;

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method
