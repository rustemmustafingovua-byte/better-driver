.class public final synthetic Lua/nav/routing/Step$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/routing/Step;
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
.field public static final INSTANCE:Lua/nav/routing/Step$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/Step$$serializer;

    invoke-direct {v0}, Lua/nav/routing/Step$$serializer;-><init>()V

    sput-object v0, Lua/nav/routing/Step$$serializer;->INSTANCE:Lua/nav/routing/Step$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.routing.Step"

    const/16 v3, 0x9

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

    const-string v0, "name"

    invoke-virtual {v1, v0, v3}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "distanceM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "durationS"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "geometryIndex"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "instruction"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/routing/Step$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    sget-object p0, Lha/a1;->a:Lha/a1;

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lha/c0;->a:Lha/c0;

    invoke-static {v1}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const/4 v0, 0x4

    aput-object p0, v3, v0

    sget-object v0, Lha/q;->a:Lha/q;

    const/4 v2, 0x5

    aput-object v0, v3, v2

    const/4 v2, 0x6

    aput-object v0, v3, v2

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const/16 v0, 0x8

    aput-object p0, v3, v0

    return-object v3
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/routing/Step$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/Step;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/routing/Step;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/routing/Step$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v8, v3

    move/from16 v18, v8

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v19, v13

    move-wide v14, v5

    move-wide/from16 v16, v14

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
    const/16 v5, 0x8

    invoke-interface {v0, v1, v5}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit16 v8, v8, 0x100

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x7

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v18

    or-int/lit16 v8, v8, 0x80

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x6

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v16

    or-int/lit8 v8, v8, 0x40

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x5

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v14

    or-int/lit8 v8, v8, 0x20

    goto :goto_0

    :pswitch_4
    const/4 v5, 0x4

    invoke-interface {v0, v1, v5}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v13

    or-int/lit8 v8, v8, 0x10

    goto :goto_0

    :pswitch_5
    sget-object v5, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    const/4 v6, 0x3

    invoke-interface {v0, v1, v6, v5, v12}, Lga/a;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lua/nav/routing/GeoPoint;

    or-int/lit8 v8, v8, 0x8

    goto :goto_0

    :pswitch_6
    sget-object v5, Lha/c0;->a:Lha/c0;

    const/4 v6, 0x2

    invoke-interface {v0, v1, v6, v5, v11}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/Integer;

    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    :pswitch_7
    sget-object v5, Lha/a1;->a:Lha/a1;

    invoke-interface {v0, v1, v2, v5, v10}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    :pswitch_8
    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_9
    move v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v7, Lua/nav/routing/Step;

    invoke-direct/range {v7 .. v19}, Lua/nav/routing/Step;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
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

    sget-object p0, Lua/nav/routing/Step$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/routing/Step;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/Step$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/Step;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/routing/Step;)V
    .locals 5

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/routing/Step$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    iget-object v0, p2, Lua/nav/routing/Step;->a:Ljava/lang/String;

    iget-object v1, p2, Lua/nav/routing/Step;->e:Ljava/lang/String;

    iget-object v2, p2, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    iget-object v3, p2, Lua/nav/routing/Step;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, p0, v4, v0}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    :goto_0
    sget-object v0, Lha/a1;->a:Lha/a1;

    const/4 v4, 0x1

    invoke-virtual {p1, p0, v4, v0, v3}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :goto_1
    sget-object v0, Lha/c0;->a:Lha/c0;

    const/4 v3, 0x2

    invoke-virtual {p1, p0, v3, v0, v2}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    iget-object v2, p2, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    const/4 v3, 0x3

    invoke-virtual {p1, p0, v3, v0, v2}, Lja/q;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    const-string v0, ""

    .line 5
    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0, v1}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_5
    const/4 v0, 0x5

    iget-wide v1, p2, Lua/nav/routing/Step;->f:D

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x6

    iget-wide v1, p2, Lua/nav/routing/Step;->g:D

    invoke-virtual {p1, p0, v0, v1, v2}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x7

    iget v1, p2, Lua/nav/routing/Step;->h:I

    invoke-virtual {p1, v0, v1, p0}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/16 v0, 0x8

    iget-object p2, p2, Lua/nav/routing/Step;->i:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, p2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    .line 6
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
