.class public final synthetic Lua/nav/routing/SavedRoute$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/SavedRoute;
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

.field public static final INSTANCE:Lua/nav/routing/SavedRoute$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/SavedRoute$$serializer;

    invoke-direct {v0}, Lua/nav/routing/SavedRoute$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/SavedRoute$$serializer;->INSTANCE:Lua/nav/routing/SavedRoute$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.SavedRoute"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "route"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "a"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "aLabel"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "b"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "bLabel"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "via"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "origin"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "createdMs"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/SavedRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lua/nav/routing/SavedRoute;->k:[Lt8/g;

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/i0;->a:Lha/i0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v2, Lha/a1;->a:Lha/a1;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    sget-object v4, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    aput-object v4, v0, v3

    sget-object v3, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const/4 v4, 0x4

    aput-object v2, v0, v4

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/4 v3, 0x7

    aget-object p0, p0, v3

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v3

    const/16 p0, 0x8

    aput-object v2, v0, p0

    const/16 p0, 0x9

    aput-object v1, v0, p0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/SavedRoute$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/SavedRoute;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/SavedRoute;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/routing/SavedRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    .line 3
    sget-object v2, Lua/nav/routing/SavedRoute;->k:[Lt8/g;

    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v10, v5

    move-wide/from16 v20, v10

    move-object v5, v7

    move-object v12, v5

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v17, v15

    move-object/from16 v19, v17

    const/4 v9, 0x0

    move v6, v3

    :goto_0
    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v8}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v8, 0x9

    invoke-interface {v0, v1, v8}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v20

    or-int/lit16 v9, v9, 0x200

    goto :goto_0

    :pswitch_1
    const/16 v8, 0x8

    invoke-interface {v0, v1, v8}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit16 v9, v9, 0x100

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x7

    aget-object v16, v2, v8

    invoke-interface/range {v16 .. v16}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v8, v4, v5}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/List;

    or-int/lit16 v9, v9, 0x80

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x6

    invoke-interface {v0, v1, v4}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v9, v9, 0x40

    goto :goto_0

    :pswitch_4
    sget-object v4, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v8, 0x5

    invoke-interface {v0, v1, v8, v4, v7}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lua/nav/routing/GeoPoint;

    or-int/lit8 v9, v9, 0x20

    goto :goto_0

    :pswitch_5
    const/4 v4, 0x4

    invoke-interface {v0, v1, v4}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v15

    or-int/lit8 v9, v9, 0x10

    goto :goto_0

    :pswitch_6
    sget-object v4, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v8, 0x3

    invoke-interface {v0, v1, v8, v4, v14}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lua/nav/routing/GeoPoint;

    or-int/lit8 v9, v9, 0x8

    goto :goto_0

    :pswitch_7
    sget-object v4, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    const/4 v8, 0x2

    invoke-interface {v0, v1, v8, v4, v13}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lua/nav/routing/Route;

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :pswitch_8
    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :pswitch_9
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v10

    or-int/lit8 v9, v9, 0x1

    goto :goto_0

    :pswitch_a
    const/4 v4, 0x0

    move v6, v4

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v8, Lua/nav/routing/SavedRoute;

    move-object/from16 v18, v5

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v21}, Lua/nav/routing/SavedRoute;-><init>(IJLjava/lang/String;Lua/nav/routing/Route;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

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

    sget-object p0, Lua/nav/routing/SavedRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/SavedRoute;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/SavedRoute$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/SavedRoute;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/SavedRoute;)V
    .locals 10

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/SavedRoute$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v0, Lua/nav/routing/SavedRoute;->k:[Lt8/g;

    iget-wide v1, p2, Lua/nav/routing/SavedRoute;->a:J

    iget-wide v3, p2, Lua/nav/routing/SavedRoute;->j:J

    iget-object v5, p2, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    iget-object v6, p2, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    iget-object v7, p2, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    iget-object v8, p2, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, p0, v9, v1, v2}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v1, 0x1

    iget-object v2, p2, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v1, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    iget-object v2, p2, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    const/4 v9, 0x2

    invoke-virtual {p1, p0, v9, v1, v2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    sget-object v1, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    iget-object v2, p2, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    const/4 v9, 0x3

    invoke-virtual {p1, p0, v9, v1, v2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    const-string v9, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p1, p0, v2, v8}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    const/4 v2, 0x5

    iget-object p2, p2, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    invoke-virtual {p1, p0, v2, v1, p2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p2, 0x6

    invoke-virtual {p1, p0, p2, v7}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 5
    invoke-static {v6, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_2
    const/4 p2, 0x7

    aget-object v0, v0, p2

    invoke-interface {v0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, p2, v0, v6}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    .line 6
    :cond_6
    const-string p2, "plan"

    .line 7
    invoke-static {v5, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :goto_3
    const/16 p2, 0x8

    invoke-virtual {p1, p0, p2, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    .line 8
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p2, v3, v0

    if-eqz p2, :cond_9

    :goto_4
    const/16 p2, 0x9

    .line 9
    invoke-virtual {p1, p0, p2, v3, v4}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 10
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
