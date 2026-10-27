.class public final synthetic Lua/nav/routing/OsrmManeuver$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/OsrmManeuver;
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
.field public static final INSTANCE:Lua/nav/routing/OsrmManeuver$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmManeuver$$serializer;

    invoke-direct {v0}, Lua/nav/routing/OsrmManeuver$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmManeuver$$serializer;->INSTANCE:Lua/nav/routing/OsrmManeuver$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.OsrmManeuver"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "modifier"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "exit"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "location"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "instruction"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/OsrmManeuver$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lua/nav/routing/OsrmManeuver;->f:[Lt8/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lha/c0;->a:Lha/c0;

    invoke-static {v2}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aget-object p0, p0, v2

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v2

    const/4 p0, 0x4

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/OsrmManeuver$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmManeuver;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmManeuver;
    .locals 12

    const-string p0, "decoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/OsrmManeuver$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/routing/OsrmManeuver;->f:[Lt8/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    .line 4
    invoke-interface {p1, p0}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    if-eqz v4, :cond_4

    if-eq v4, v1, :cond_3

    const/4 v11, 0x2

    if-eq v4, v11, :cond_2

    const/4 v11, 0x3

    if-eq v4, v11, :cond_1

    const/4 v11, 0x4

    if-ne v4, v11, :cond_0

    sget-object v4, Lha/a1;->a:Lha/a1;

    invoke-interface {p1, p0, v11, v4, v10}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v5, v5, 0x10

    goto :goto_0

    :cond_0
    new-instance p0, Lda/d;

    invoke-direct {p0, v4}, Lda/d;-><init>(I)V

    throw p0

    :cond_1
    aget-object v4, v0, v11

    invoke-interface {v4}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, p0, v11, v4, v9}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/List;

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_2
    sget-object v4, Lha/c0;->a:Lha/c0;

    invoke-interface {p1, p0, v11, v4, v8}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Integer;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_3
    sget-object v4, Lha/a1;->a:Lha/a1;

    invoke-interface {p1, p0, v1, v4, v7}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0, v2}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    invoke-interface {p1, p0}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lua/nav/routing/OsrmManeuver;

    invoke-direct/range {v4 .. v10}, Lua/nav/routing/OsrmManeuver;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/OsrmManeuver$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/OsrmManeuver;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/OsrmManeuver$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmManeuver;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmManeuver;)V
    .locals 6

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/OsrmManeuver$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/routing/OsrmManeuver;->f:[Lt8/g;

    iget-object v1, p2, Lua/nav/routing/OsrmManeuver;->a:Ljava/lang/String;

    iget-object v2, p2, Lua/nav/routing/OsrmManeuver;->e:Ljava/lang/String;

    iget-object v3, p2, Lua/nav/routing/OsrmManeuver;->c:Ljava/lang/Integer;

    iget-object v4, p2, Lua/nav/routing/OsrmManeuver;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v5, v1}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    :goto_0
    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v5, 0x1

    invoke-virtual {p1, p0, v5, v1, v4}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    sget-object v1, Lha/c0;->a:Lha/c0;

    const/4 v4, 0x2

    invoke-virtual {p1, p0, v4, v1, v3}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p2, p2, Lua/nav/routing/OsrmManeuver;->d:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v0, p2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    :goto_2
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0, p2, v2}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 4
    :cond_5
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
