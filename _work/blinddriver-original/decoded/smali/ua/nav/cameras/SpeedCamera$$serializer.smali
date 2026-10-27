.class public final synthetic Lua/nav/cameras/SpeedCamera$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/cameras/SpeedCamera;
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
.field public static final INSTANCE:Lua/nav/cameras/SpeedCamera$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/cameras/SpeedCamera$$serializer;

    invoke-direct {v0}, Lua/nav/cameras/SpeedCamera$$serializer;-><init>()V

    sput-object v0, Lua/nav/cameras/SpeedCamera$$serializer;->INSTANCE:Lua/nav/cameras/SpeedCamera$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.cameras.SpeedCamera"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lat"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "lon"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "limit"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "road"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "km"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "region"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "bearing"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/cameras/SpeedCamera$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lha/a1;->a:Lha/a1;

    sget-object v0, Lha/c0;->a:Lha/c0;

    invoke-static {v0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {p0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v0}, Ly4/s;->r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v4, 0x9

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    sget-object v5, Lha/q;->a:Lha/q;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const/4 v1, 0x4

    aput-object p0, v4, v1

    const/4 v1, 0x5

    aput-object v2, v4, v1

    const/4 v1, 0x6

    aput-object v3, v4, v1

    const/4 v1, 0x7

    aput-object p0, v4, v1

    const/16 p0, 0x8

    aput-object v0, v4, p0

    return-object v4
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/cameras/SpeedCamera$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/cameras/SpeedCamera;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/cameras/SpeedCamera;
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/cameras/SpeedCamera$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v9, v4

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v18, v15

    move-wide v10, v5

    move-wide v12, v10

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v5, v18

    move-object v6, v5

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v3}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v3, Lha/c0;->a:Lha/c0;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3, v4}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    or-int/lit16 v8, v8, 0x100

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit16 v8, v8, 0x80

    goto :goto_0

    :pswitch_2
    sget-object v2, Lha/a1;->a:Lha/a1;

    const/4 v3, 0x6

    invoke-interface {v0, v1, v3, v2, v6}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x40

    goto :goto_0

    :pswitch_3
    sget-object v2, Lha/a1;->a:Lha/a1;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3, v2, v5}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v15

    or-int/lit8 v8, v8, 0x10

    goto :goto_0

    :pswitch_5
    sget-object v2, Lha/c0;->a:Lha/c0;

    const/4 v3, 0x3

    invoke-interface {v0, v1, v3, v2, v14}, Lga/a;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Integer;

    or-int/lit8 v8, v8, 0x8

    goto :goto_0

    :pswitch_6
    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v12

    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    :pswitch_7
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v10

    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    :pswitch_8
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_9
    const/4 v2, 0x1

    const/4 v3, 0x0

    move v7, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v7, Lua/nav/cameras/SpeedCamera;

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v7 .. v19}, Lua/nav/cameras/SpeedCamera;-><init>(ILjava/lang/String;DDLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

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

    sget-object p0, Lua/nav/cameras/SpeedCamera$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/cameras/SpeedCamera;

    invoke-virtual {p0, p1, p2}, Lua/nav/cameras/SpeedCamera$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/cameras/SpeedCamera;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/cameras/SpeedCamera;)V
    .locals 9

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lua/nav/cameras/SpeedCamera$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object p1

    .line 3
    iget-object v0, p2, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    iget-object v1, p2, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    iget-object v2, p2, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    iget-object v3, p2, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    iget-object v4, p2, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    iget-object v5, p2, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    iget-object v6, p2, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-virtual {p1, p0, v7, v0}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    iget-wide v7, p2, Lua/nav/cameras/SpeedCamera;->b:D

    invoke-virtual {p1, p0, v0, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    const/4 v0, 0x2

    iget-wide v7, p2, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-virtual {p1, p0, v0, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    :goto_0
    sget-object p2, Lha/c0;->a:Lha/c0;

    const/4 v0, 0x3

    invoke-virtual {p1, p0, v0, p2, v6}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v5, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p2, 0x4

    invoke-virtual {p1, p0, p2, v5}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    :goto_2
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v5, 0x5

    invoke-virtual {p1, p0, v5, p2, v4}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    sget-object p2, Lha/a1;->a:Lha/a1;

    const/4 v4, 0x6

    invoke-virtual {p1, p0, v4, p2, v3}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v2, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    :goto_4
    const/4 p2, 0x7

    invoke-virtual {p1, p0, p2, v2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_9
    invoke-virtual {p1, p0}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    :goto_5
    sget-object p2, Lha/c0;->a:Lha/c0;

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0, p2, v1}, Lja/q;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    .line 4
    :cond_b
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
