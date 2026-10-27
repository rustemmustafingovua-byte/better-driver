.class public final synthetic Lua/nav/net/EntitlementDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/net/EntitlementDto;
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

.field public static final INSTANCE:Lua/nav/net/EntitlementDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/net/EntitlementDto$$serializer;

    invoke-direct {v0}, Lua/nav/net/EntitlementDto$$serializer;-><init>()V

    sput-object v0, Lua/nav/net/EntitlementDto$$serializer;->INSTANCE:Lua/nav/net/EntitlementDto$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.net.EntitlementDto"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "plan"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "tier_title"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "features"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "expires_at"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lifetime"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "source"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "gating_enabled"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "gating_since"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "trial_days"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "tg_linked"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "server_time"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/net/EntitlementDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object p0, Lua/nav/net/EntitlementDto;->l:[Lt8/g;

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-interface {p0}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v2

    sget-object p0, Lha/i0;->a:Lha/i0;

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sget-object v2, Lha/f;->a:Lha/f;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v3, 0x5

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lha/c0;->a:Lha/c0;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/net/EntitlementDto$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/net/EntitlementDto;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/net/EntitlementDto;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/net/EntitlementDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    .line 3
    sget-object v2, Lua/nav/net/EntitlementDto;->l:[Lt8/g;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v9, v4

    move v14, v9

    move/from16 v16, v14

    move/from16 v18, v16

    move/from16 v19, v18

    move-object v10, v5

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-wide/from16 v20, v6

    move v6, v3

    :goto_0
    if-eqz v6, :cond_0

    .line 4
    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v7}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v7, 0xa

    invoke-interface {v0, v1, v7}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v20

    or-int/lit16 v9, v9, 0x400

    goto :goto_0

    :pswitch_1
    const/16 v7, 0x9

    invoke-interface {v0, v1, v7}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v19

    or-int/lit16 v9, v9, 0x200

    goto :goto_0

    :pswitch_2
    const/16 v7, 0x8

    invoke-interface {v0, v1, v7}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v18

    or-int/lit16 v9, v9, 0x100

    goto :goto_0

    :pswitch_3
    sget-object v7, Lha/i0;->a:Lha/i0;

    const/4 v8, 0x7

    invoke-interface {v0, v1, v8, v7, v5}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    or-int/lit16 v9, v9, 0x80

    goto :goto_0

    :pswitch_4
    const/4 v7, 0x6

    invoke-interface {v0, v1, v7}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v16

    or-int/lit8 v9, v9, 0x40

    goto :goto_0

    :pswitch_5
    sget-object v7, Lha/a1;->a:Lha/a1;

    const/4 v8, 0x5

    invoke-interface {v0, v1, v8, v7, v15}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Ljava/lang/String;

    or-int/lit8 v9, v9, 0x20

    goto :goto_0

    :pswitch_6
    const/4 v7, 0x4

    invoke-interface {v0, v1, v7}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v14

    or-int/lit8 v9, v9, 0x10

    goto :goto_0

    :pswitch_7
    sget-object v7, Lha/i0;->a:Lha/i0;

    const/4 v8, 0x3

    invoke-interface {v0, v1, v8, v7, v13}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/Long;

    or-int/lit8 v9, v9, 0x8

    goto :goto_0

    :pswitch_8
    const/4 v7, 0x2

    aget-object v8, v2, v7

    invoke-interface {v8}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0, v1, v7, v8, v12}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/util/List;

    or-int/lit8 v9, v9, 0x4

    goto :goto_0

    :pswitch_9
    sget-object v7, Lha/a1;->a:Lha/a1;

    invoke-interface {v0, v1, v3, v7, v11}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v9, v9, 0x2

    goto :goto_0

    :pswitch_a
    invoke-interface {v0, v1, v4}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :pswitch_b
    move v6, v4

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v8, Lua/nav/net/EntitlementDto;

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v21}, Lua/nav/net/EntitlementDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;ZLjava/lang/Long;IZJ)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
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

    sget-object p0, Lua/nav/net/EntitlementDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/net/EntitlementDto;

    invoke-virtual {p0, p1, p2}, Lua/nav/net/EntitlementDto$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/net/EntitlementDto;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/net/EntitlementDto;)V
    .locals 13

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p2, Lua/nav/net/EntitlementDto;->k:J

    iget-boolean p0, p2, Lua/nav/net/EntitlementDto;->j:Z

    iget v2, p2, Lua/nav/net/EntitlementDto;->i:I

    iget-object v3, p2, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    iget-boolean v4, p2, Lua/nav/net/EntitlementDto;->g:Z

    iget-object v5, p2, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    iget-boolean v6, p2, Lua/nav/net/EntitlementDto;->e:Z

    iget-object v7, p2, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    iget-object v8, p2, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    iget-object v9, p2, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    iget-object p2, p2, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    .line 2
    sget-object v10, Lua/nav/net/EntitlementDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v10}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    sget-object v11, Lua/nav/net/EntitlementDto;->l:[Lt8/g;

    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v12, "free"

    .line 5
    invoke-static {p2, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    :goto_0
    const/4 v12, 0x0

    invoke-virtual {p1, v10, v12, p2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    :goto_1
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v12, 0x1

    invoke-virtual {p1, v10, v12, p2, v9}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 7
    invoke-static {v8, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_2
    const/4 p2, 0x2

    aget-object v9, v11, p2

    invoke-interface {v9}, Lt8/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v10, p2, v9, v8}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    sget-object p2, Lha/i0;->a:Lha/i0;

    const/4 v8, 0x3

    invoke-virtual {p1, v10, v8, p2, v7}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    :goto_4
    const/4 p2, 0x4

    invoke-virtual {p1, v10, p2, v6}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_9
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_b

    :goto_5
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v6, 0x5

    invoke-virtual {p1, v10, v6, p2, v5}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v4, :cond_d

    :goto_6
    const/4 p2, 0x6

    invoke-virtual {p1, v10, p2, v4}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_d
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_f

    :goto_7
    sget-object p2, Lha/i0;->a:Lha/i0;

    const/4 v4, 0x7

    invoke-virtual {p1, v10, v4, p2, v3}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_8

    :cond_10
    const/16 p2, 0xf

    if-eq v2, p2, :cond_11

    :goto_8
    const/16 p2, 0x8

    invoke-virtual {p1, p2, v2, v10}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_11
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_9

    :cond_12
    if-eqz p0, :cond_13

    :goto_9
    const/16 p2, 0x9

    invoke-virtual {p1, v10, p2, p0}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_13
    invoke-virtual {p1, v10}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_a

    :cond_14
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_15

    :goto_a
    const/16 p0, 0xa

    invoke-virtual {p1, v10, p0, v0, v1}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 8
    :cond_15
    invoke-virtual {p1, v10}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
