.class public final synthetic Lua/nav/support/DevMessage$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/support/DevMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lha/w;"
    }
.end annotation

.annotation runtime Lt8/c;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lua/nav/support/DevMessage$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/support/DevMessage$$serializer;

    invoke-direct {v0}, Lua/nav/support/DevMessage$$serializer;-><init>()V

    sput-object v0, Lua/nav/support/DevMessage$$serializer;->INSTANCE:Lua/nav/support/DevMessage$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.support.DevMessage"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "ts"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "fromMe"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/support/DevMessage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lha/i0;->a:Lha/i0;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x1

    aput-object v1, p0, v2

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lha/f;->a:Lha/f;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/support/DevMessage$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/support/DevMessage;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/support/DevMessage;
    .locals 13

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/support/DevMessage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v6, v1

    move v12, v6

    move-wide v7, v2

    move-wide v10, v7

    move-object v9, v4

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {p1, p0}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p1, p0, v4}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    or-int/lit8 v6, v6, 0x8

    goto :goto_0

    :cond_0
    new-instance p0, Lda/d;

    invoke-direct {p0, v3}, Lda/d;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v4}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v10

    or-int/lit8 v6, v6, 0x4

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0, v0}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v1}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v7

    or-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    invoke-interface {p1, p0}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v5, Lua/nav/support/DevMessage;

    invoke-direct/range {v5 .. v12}, Lua/nav/support/DevMessage;-><init>(IJLjava/lang/String;JZ)V

    return-object v5
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/support/DevMessage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/support/DevMessage;

    invoke-virtual {p0, p1, p2}, Lua/nav/support/DevMessage$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/support/DevMessage;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/support/DevMessage;)V
    .locals 5

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/support/DevMessage$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    iget-wide v0, p2, Lua/nav/support/DevMessage;->a:J

    iget-boolean v2, p2, Lua/nav/support/DevMessage;->d:Z

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3, v0, v1}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x1

    iget-object v1, p2, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-wide v3, p2, Lua/nav/support/DevMessage;->c:J

    invoke-virtual {p1, p0, v0, v3, v4}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    const/4 p2, 0x3

    invoke-virtual {p1, p0, p2, v2}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 4
    :cond_1
    invoke-virtual {p1, p0}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lha/n0;->b:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
