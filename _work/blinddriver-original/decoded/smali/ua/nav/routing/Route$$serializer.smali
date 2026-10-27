.class public final synthetic Lua/nav/routing/Route$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/Route;
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
.field public static final INSTANCE:Lua/nav/routing/Route$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/Route$$serializer;

    invoke-direct {v0}, Lua/nav/routing/Route$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.Route"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "provider"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "distanceM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "durationS"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "trafficDelayS"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "geometry"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "steps"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "summary"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "maxspeedKmh"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "congestion"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "signals"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/Route$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object p0, Lua/nav/routing/Route;->l:[Lt8/g;

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lha/q;->a:Lha/q;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aget-object v3, p0, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aget-object v3, p0, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aget-object v2, p0, v1

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aget-object v2, p0, v1

    invoke-interface {v2}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aget-object p0, p0, v1

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/Route$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/Route;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/Route;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/routing/Route$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    .line 3
    sget-object v2, Lua/nav/routing/Route;->l:[Lt8/g;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v15, v10

    move-object/from16 v18, v15

    move-wide v11, v6

    move-wide v13, v11

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v6, v18

    move-object v7, v6

    :goto_0
    if-eqz v16, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v3}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v3, 0x9

    aget-object v17, v2, v3

    invoke-interface/range {v17 .. v17}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v3, v2, v9}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    or-int/lit16 v4, v4, 0x200

    :goto_1
    move-object/from16 v2, v19

    goto :goto_0

    :pswitch_1
    move-object/from16 v19, v2

    const/16 v2, 0x8

    aget-object v3, v19, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v2, v3, v8}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    goto :goto_1

    :pswitch_2
    move-object/from16 v19, v2

    const/4 v2, 0x7

    aget-object v3, v19, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v2, v3, v7}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/List;

    or-int/lit16 v4, v4, 0x80

    goto :goto_1

    :pswitch_3
    move-object/from16 v19, v2

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v4, v4, 0x40

    goto :goto_1

    :pswitch_4
    move-object/from16 v19, v2

    const/4 v2, 0x5

    aget-object v3, v19, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v2, v3, v6}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    goto :goto_1

    :pswitch_5
    move-object/from16 v19, v2

    const/4 v2, 0x4

    aget-object v3, v19, v2

    invoke-interface {v3}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v2, v3, v5}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    goto :goto_1

    :pswitch_6
    move-object/from16 v19, v2

    sget-object v2, Lha/q;->a:Lha/q;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2, v15}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Double;

    or-int/lit8 v4, v4, 0x8

    goto :goto_1

    :pswitch_7
    move-object/from16 v19, v2

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v13

    or-int/lit8 v4, v4, 0x4

    goto :goto_1

    :pswitch_8
    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v11

    or-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v19, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :pswitch_a
    const/4 v3, 0x0

    move/from16 v16, v3

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v20, v8

    new-instance v8, Lua/nav/routing/Route;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v9

    move v9, v4

    invoke-direct/range {v8 .. v21}, Lua/nav/routing/Route;-><init>(ILjava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/routing/Route$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/Route;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/Route$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/Route;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/Route;)V
    .locals 9

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/Route$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/routing/Route;->l:[Lt8/g;

    iget-object v1, p2, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-object v2, p2, Lua/nav/routing/Route;->j:Ljava/util/List;

    iget-object v3, p2, Lua/nav/routing/Route;->i:Ljava/util/List;

    iget-object v4, p2, Lua/nav/routing/Route;->h:Ljava/util/List;

    iget-object v5, p2, Lua/nav/routing/Route;->g:Ljava/lang/String;

    iget-object v6, p2, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    const/4 v7, 0x0

    invoke-virtual {p1, p0, v7, v1}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-wide v7, p2, Lua/nav/routing/Route;->b:D

    invoke-virtual {p1, p0, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v1, 0x2

    iget-wide v7, p2, Lua/nav/routing/Route;->c:D

    invoke-virtual {p1, p0, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    :goto_0
    sget-object v1, Lha/q;->a:Lha/q;

    const/4 v7, 0x3

    invoke-virtual {p1, p0, v7, v1, v6}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x4

    aget-object v6, v0, v1

    invoke-interface {v6}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    iget-object v7, p2, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v6, v7}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v6, v0, v1

    invoke-interface {v6}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    iget-object p2, p2, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v6, p2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    const-string p2, ""

    .line 5
    invoke-static {v5, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p2, 0x6

    invoke-virtual {p1, p0, p2, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    :goto_2
    const/4 p2, 0x7

    aget-object v1, v0, p2

    invoke-interface {v1}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v1, v4}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    const/16 p2, 0x8

    aget-object v1, v0, p2

    invoke-interface {v1}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v1, v3}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    .line 6
    :cond_8
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 7
    invoke-static {v2, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    :goto_4
    const/16 p2, 0x9

    aget-object v0, v0, p2

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v0, v2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 8
    :cond_9
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
