.class public final synthetic Lua/nav/routing/OsrmRoute$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/OsrmRoute;
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
.field public static final INSTANCE:Lua/nav/routing/OsrmRoute$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmRoute$$serializer;

    invoke-direct {v0}, Lua/nav/routing/OsrmRoute$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmRoute$$serializer;->INSTANCE:Lua/nav/routing/OsrmRoute$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.OsrmRoute"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "distance"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "duration"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "duration_typical"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "geometry"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "legs"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/OsrmRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object p0, Lua/nav/routing/OsrmRoute;->f:[Lt8/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/q;->a:Lha/q;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lha/a1;->a:Lha/a1;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-object p0, p0, v1

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/OsrmRoute$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmRoute;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/OsrmRoute;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/routing/OsrmRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    .line 3
    sget-object v2, Lua/nav/routing/OsrmRoute;->f:[Lt8/g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v9, v4

    move-wide v10, v5

    move-wide v12, v10

    move-object v14, v7

    move-object v15, v14

    move v5, v3

    :goto_0
    if-eqz v5, :cond_6

    .line 4
    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_5

    if-eqz v6, :cond_4

    if-eq v6, v3, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_1

    const/4 v8, 0x4

    if-ne v6, v8, :cond_0

    aget-object v6, v2, v8

    invoke-interface {v6}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v8, v6, v7}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    or-int/lit8 v9, v9, 0x10

    goto :goto_0

    :cond_0
    new-instance v0, Lda/d;

    invoke-direct {v0, v6}, Lda/d;-><init>(I)V

    throw v0

    :cond_1
    invoke-interface {v0, v1, v8}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v15

    or-int/lit8 v9, v9, 0x8

    goto :goto_0

    :cond_2
    sget-object v6, Lha/q;->a:Lha/q;

    invoke-interface {v0, v1, v8, v6, v14}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Ljava/lang/Double;

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v3}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v12

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v0, v1, v4}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v10

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_0

    :cond_6
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v8, Lua/nav/routing/OsrmRoute;

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lua/nav/routing/OsrmRoute;-><init>(IDDLjava/lang/Double;Ljava/lang/String;Ljava/util/List;)V

    return-object v8
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/OsrmRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/OsrmRoute;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/OsrmRoute$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmRoute;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/OsrmRoute;)V
    .locals 7

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/OsrmRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/routing/OsrmRoute;->f:[Lt8/g;

    iget-wide v1, p2, Lua/nav/routing/OsrmRoute;->a:D

    iget-object v3, p2, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    iget-object v4, p2, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    const/4 v5, 0x0

    invoke-virtual {p1, p0, v5, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v1, 0x1

    iget-wide v5, p2, Lua/nav/routing/OsrmRoute;->b:D

    invoke-virtual {p1, p0, v1, v5, v6}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    :goto_0
    sget-object v1, Lha/q;->a:Lha/q;

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v2, v1, v4}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x3

    iget-object p2, p2, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, p2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 5
    invoke-static {v3, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p2, 0x4

    aget-object v0, v0, p2

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v0, v3}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 6
    :cond_3
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
