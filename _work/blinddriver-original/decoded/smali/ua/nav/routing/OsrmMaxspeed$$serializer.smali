.class public final synthetic Lua/nav/routing/OsrmMaxspeed$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/OsrmMaxspeed;
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
.field public static final INSTANCE:Lua/nav/routing/OsrmMaxspeed$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmMaxspeed$$serializer;

    invoke-direct {v0}, Lua/nav/routing/OsrmMaxspeed$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmMaxspeed$$serializer;->INSTANCE:Lua/nav/routing/OsrmMaxspeed$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.OsrmMaxspeed"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "speed"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "unit"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "unknown"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "none"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/OsrmMaxspeed$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object p0, Lha/c0;->a:Lha/c0;

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-static {v0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    sget-object p0, Lha/f;->a:Lha/f;

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const/4 v0, 0x3

    aput-object p0, v1, v0

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/OsrmMaxspeed$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmMaxspeed;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmMaxspeed;
    .locals 10

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/OsrmMaxspeed$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v7, v4

    move v8, v7

    move-object v5, v2

    move-object v6, v5

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-interface {p1, p0}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    if-eqz v3, :cond_3

    if-eq v3, v0, :cond_2

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    invoke-interface {p1, p0, v8}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v8

    or-int/lit8 v4, v4, 0x8

    goto :goto_0

    :cond_0
    new-instance p0, Lda/d;

    invoke-direct {p0, v3}, Lda/d;-><init>(I)V

    throw p0

    :cond_1
    invoke-interface {p1, p0, v9}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v7

    or-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_2
    sget-object v3, Lha/a1;->a:Lha/a1;

    invoke-interface {p1, p0, v0, v3, v6}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    sget-object v3, Lha/c0;->a:Lha/c0;

    invoke-interface {p1, p0, v1, v3, v5}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    invoke-interface {p1, p0}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v3, Lua/nav/routing/OsrmMaxspeed;

    invoke-direct/range {v3 .. v8}, Lua/nav/routing/OsrmMaxspeed;-><init>(ILjava/lang/Integer;Ljava/lang/String;ZZ)V

    return-object v3
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/OsrmMaxspeed$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/OsrmMaxspeed;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/OsrmMaxspeed$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmMaxspeed;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmMaxspeed;)V
    .locals 5

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p2, Lua/nav/routing/OsrmMaxspeed;->d:Z

    iget-boolean v0, p2, Lua/nav/routing/OsrmMaxspeed;->c:Z

    iget-object v1, p2, Lua/nav/routing/OsrmMaxspeed;->b:Ljava/lang/String;

    iget-object p2, p2, Lua/nav/routing/OsrmMaxspeed;->a:Ljava/lang/Integer;

    .line 2
    sget-object v2, Lua/nav/routing/OsrmMaxspeed$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v2}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v2}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    sget-object v3, Lha/c0;->a:Lha/c0;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3, p2}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v2}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, p2, v1}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, v2}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    :goto_2
    const/4 p2, 0x2

    invoke-virtual {p1, v2, p2, v0}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_5
    invoke-virtual {p1, v2}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p0, :cond_7

    :goto_3
    const/4 p2, 0x3

    invoke-virtual {p1, v2, p2, p0}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    .line 4
    :cond_7
    invoke-virtual {p1, v2}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
