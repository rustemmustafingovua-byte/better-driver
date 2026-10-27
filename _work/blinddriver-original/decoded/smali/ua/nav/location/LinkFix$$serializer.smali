.class public final synthetic Lua/nav/location/LinkFix$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/location/LinkFix;
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

.field public static final INSTANCE:Lua/nav/location/LinkFix$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/location/LinkFix$$serializer;

    invoke-direct {v0}, Lua/nav/location/LinkFix$$serializer;-><init>()V

    sput-object v0, Lua/nav/location/LinkFix$$serializer;->INSTANCE:Lua/nav/location/LinkFix$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.location.LinkFix"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "v"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "src"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lat"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lon"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "acc"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "ageMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "seq"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/location/LinkFix$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    const/4 p0, 0x7

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lha/c0;->a:Lha/c0;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v1, Lha/a1;->a:Lha/a1;

    const/4 v2, 0x1

    aput-object v1, p0, v2

    sget-object v1, Lha/q;->a:Lha/q;

    const/4 v2, 0x2

    aput-object v1, p0, v2

    const/4 v2, 0x3

    aput-object v1, p0, v2

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lha/i0;->a:Lha/i0;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    const/4 v1, 0x6

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/location/LinkFix$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/location/LinkFix;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/location/LinkFix;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/location/LinkFix$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move v10, v3

    move v11, v10

    move/from16 v17, v11

    move-object v12, v4

    move-wide v13, v5

    move-wide v15, v13

    move-wide/from16 v18, v7

    move-wide/from16 v20, v18

    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v5}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/4 v5, 0x6

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v20

    or-int/lit8 v10, v10, 0x40

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x5

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v18

    or-int/lit8 v10, v10, 0x20

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x4

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v17

    or-int/lit8 v10, v10, 0x10

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x3

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v15

    or-int/lit8 v10, v10, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v5, 0x2

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v13

    or-int/lit8 v10, v10, 0x4

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, v1, v2}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v12

    or-int/lit8 v10, v10, 0x2

    goto :goto_0

    :pswitch_6
    invoke-interface {v0, v1, v3}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v11

    or-int/lit8 v10, v10, 0x1

    goto :goto_0

    :pswitch_7
    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v9, Lua/nav/location/LinkFix;

    invoke-direct/range {v9 .. v21}, Lua/nav/location/LinkFix;-><init>(IILjava/lang/String;DDIJJ)V

    return-object v9

    :pswitch_data_0
    .packed-switch -0x1
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

    sget-object p0, Lua/nav/location/LinkFix$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/location/LinkFix;

    invoke-virtual {p0, p1, p2}, Lua/nav/location/LinkFix$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/location/LinkFix;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/location/LinkFix;)V
    .locals 9

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p2, Lua/nav/location/LinkFix;->a:I

    .line 2
    sget-object v0, Lua/nav/location/LinkFix$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq p0, v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_1
    iget-object p0, p2, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    iget-wide v3, p2, Lua/nav/location/LinkFix;->g:J

    iget-wide v5, p2, Lua/nav/location/LinkFix;->f:J

    iget v1, p2, Lua/nav/location/LinkFix;->e:I

    invoke-virtual {p1, v0, v2, p0}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 p0, 0x2

    iget-wide v7, p2, Lua/nav/location/LinkFix;->c:D

    invoke-virtual {p1, v0, p0, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 p0, 0x3

    iget-wide v7, p2, Lua/nav/location/LinkFix;->d:D

    invoke-virtual {p1, v0, p0, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    invoke-virtual {p1, v0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    if-eq v1, p0, :cond_3

    :goto_1
    const/4 p0, 0x4

    invoke-virtual {p1, p0, v1, v0}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_3
    invoke-virtual {p1, v0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    cmp-long p0, v5, v1

    if-eqz p0, :cond_5

    :goto_2
    const/4 p0, 0x5

    invoke-virtual {p1, v0, p0, v5, v6}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    invoke-virtual {p1, v0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    cmp-long p0, v3, v1

    if-eqz p0, :cond_7

    :goto_3
    const/4 p0, 0x6

    invoke-virtual {p1, v0, p0, v3, v4}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 4
    :cond_7
    invoke-virtual {p1, v0}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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
